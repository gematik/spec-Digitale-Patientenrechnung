// DiPag Invoice Viewer
// Renders DiPag-profiled FHIR Invoice resources (+ referenced ChargeItems, Organizations, Patients)

'use strict';

// ── Extension URLs ───────────────────────────────────────────────────────────
const EXT = {
  behandlungsart:    'https://gematik.de/fhir/dipag/StructureDefinition/dipag-behandlungsart',
  fachrichtung:      'https://gematik.de/fhir/dipag/StructureDefinition/dipag-fachrichtung',
  behandlungszeitraum: 'https://gematik.de/fhir/dipag/StructureDefinition/dipag-behandlungszeitraum',
  positionstyp:      'https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition-type',
  goAngaben:         'https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition-go-angaben',
  zusatz:            'https://gematik.de/fhir/dipag/StructureDefinition/DiPagRechnungspositionZusatz',
  zahlungsziel:      'https://gematik.de/fhir/dipag/StructureDefinition/dipag-zahlungsziel',
  zahnRegion:        'https://gematik.de/fhir/dipag/StructureDefinition/dipag-zahnregion',
  korrekturrechnung: 'https://gematik.de/fhir/dipag/StructureDefinition/dipag-korrekturrechnung',
  abrechnungsdiagnose: 'https://gematik.de/fhir/dipag/StructureDefinition/dipag-abrechnungs-diagnose-prozedur',
};

const CS = {
  abrechnungsart:   'https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnung-abrechnungsart-cs',
  rechnungsart:     'https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnungsart-cs',
  positionsTyp:     'https://gematik.de/fhir/dipag/CodeSystem/dipag-chargeitem-type-cs',
  zusatz:           'https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnungsposition-zusatz-cs',
  totalPriceComp:   'https://gematik.de/fhir/dipag/CodeSystem/dipag-total-price-component-type-cs',
};

// ── State ────────────────────────────────────────────────────────────────────
let config = null;
let codeDisplays = {};    // { url#code -> display }
let resourceCache = {};   // { "ResourceType/id" -> resource | null }
let currentEntry = null;

// ── Boot ─────────────────────────────────────────────────────────────────────
async function init() {
  try {
    config = await fetchJson('config.json');
  } catch (e) {
    showGlobalError('config.json konnte nicht geladen werden: ' + e.message);
    return;
  }

  try {
    codeDisplays = await fetchJson('data/code-displays.json');
  } catch (_) {
    // non-fatal — falls back to raw codes
  }

  const sel = document.getElementById('invoice-select');
  for (const entry of config.invoices) {
    const opt = document.createElement('option');
    opt.value = entry.id;
    opt.textContent = entry.label;
    sel.appendChild(opt);
  }

  sel.addEventListener('change', () => {
    const entry = config.invoices.find(i => i.id === sel.value);
    if (entry) loadInvoice(entry);
  });

  document.getElementById('split-btn').addEventListener('click', toggleSplit);

  // Tabs
  document.querySelectorAll('.tab').forEach(tab => {
    tab.addEventListener('click', () => switchTab(tab.dataset.tab));
  });
}

// ── Load & render invoice ────────────────────────────────────────────────────
async function loadInvoice(entry) {
  currentEntry = entry;
  resourceCache = {};

  setInvoiceLoading();

  let invoice;
  try {
    if (entry.source.type === 'local') {
      invoice = await fetchJson(entry.source.path);
    } else if (entry.source.type === 'simplifier') {
      invoice = await fetchJson(entry.source.url);
    } else {
      throw new Error('Unbekannter source.type: ' + entry.source.type);
    }
  } catch (e) {
    showInvoiceError('Rechnung konnte nicht geladen werden: ' + e.message);
    return;
  }

  // Pre-load all referenced ChargeItems, Organizations, Patients in parallel
  const refs = collectRefs(invoice);
  await Promise.all(refs.map(ref => resolveRef(ref, entry)));

  const html = renderInvoice(invoice, entry);
  const contentEl = document.getElementById('invoice-content');
  contentEl.innerHTML = html;
  contentEl.classList.remove('hidden');
  document.getElementById('invoice-placeholder').classList.add('hidden');
  document.getElementById('invoice-error').classList.add('hidden');

  // PDF setup
  const hasPdf = !!entry.pdf;
  const tabBar = document.getElementById('tab-bar');
  const pdfTabBtn = document.getElementById('pdf-tab-btn');
  const splitBtn = document.getElementById('split-btn');

  if (hasPdf) {
    tabBar.classList.remove('hidden');
    pdfTabBtn.classList.remove('hidden');
    splitBtn.disabled = false;
    document.getElementById('pdf-frame').src = entry.pdf;
    document.getElementById('split-pdf-frame').src = entry.pdf;
  } else {
    tabBar.classList.add('hidden');
    pdfTabBtn.classList.add('hidden');
    splitBtn.disabled = true;
    // Make sure we're on the invoice tab
    switchTab('invoice');
    // Collapse split if active
    const main = document.getElementById('main');
    if (main.classList.contains('split')) toggleSplit();
  }

  switchTab('invoice');
}

function collectRefs(invoice) {
  const refs = new Set();
  if (invoice.issuer?.reference)   refs.add(invoice.issuer.reference);
  if (invoice.subject?.reference)  refs.add(invoice.subject.reference);
  if (invoice.recipient?.reference) refs.add(invoice.recipient.reference);
  for (const p of invoice.participant ?? []) {
    if (p.actor?.reference) refs.add(p.actor.reference);
  }
  for (const li of invoice.lineItem ?? []) {
    if (li.chargeItemReference?.reference) refs.add(li.chargeItemReference.reference);
  }
  return [...refs];
}

async function resolveRef(ref, entry) {
  if (resourceCache[ref] !== undefined) return resourceCache[ref];
  resourceCache[ref] = null; // mark as attempted

  if (!entry || entry.source.type !== 'local') return null;

  const [type, id] = ref.split('/');
  if (!type || !id) return null;

  const base = config.resourceBase ?? 'data/';
  const path = base + type + '-' + id + '.json';
  try {
    const res = await fetchJson(path);
    resourceCache[ref] = res;
    return res;
  } catch (_) {
    return null;
  }
}

// ── Render ───────────────────────────────────────────────────────────────────
function renderInvoice(inv, entry) {
  const parts = [];

  parts.push(renderHeader(inv));
  parts.push(renderIssuer(inv));
  parts.push(renderPatient(inv));
  parts.push(renderBehandlungsinfo(inv));
  parts.push(renderPositionen(inv));
  parts.push(renderSummen(inv));
  parts.push(renderKorrektur(inv));
  parts.push(renderZahlung(inv));

  return parts.filter(Boolean).join('');
}

function renderHeader(inv) {
  const rechnungsnr = inv.identifier?.find(i =>
    i.type?.coding?.some(c => c.system?.includes('dipag-rechnung-identifier-type-cs') && c.code === 'invoice')
  )?.value ?? '—';

  const date = fmtDate(inv.date);
  const statusLabel = inv.status ?? '—';
  const abrechnungsart = getTypeCoding(inv, CS.abrechnungsart);
  const rechnungsart   = getTypeCoding(inv, CS.rechnungsart);

  return `
  <div class="invoice-header">
    <h2>Rechnung ${esc(rechnungsnr)}</h2>
    <div class="invoice-meta">
      <span>${esc(date)}</span>
      <span class="badge badge-status">${esc(statusLabel)}</span>
      ${abrechnungsart ? `<span class="badge badge-type">${esc(resolveCode(CS.abrechnungsart, abrechnungsart))}</span>` : ''}
      ${rechnungsart   ? `<span class="badge badge-art">${esc(resolveCode(CS.rechnungsart, rechnungsart))}</span>` : ''}
    </div>
  </div>`;
}

function renderIssuer(inv) {
  const ref = inv.issuer?.reference;
  if (!ref) return '';
  const org = resourceCache[ref];
  const rows = [];

  if (!org) {
    rows.push(kvRow('Leistungserbringer', refBadge(ref)));
  } else {
    if (org.name) rows.push(kvRow('Name', esc(org.name)));

    // Identifiers
    for (const id of org.identifier ?? []) {
      const label = identifierLabel(id);
      if (id.value) rows.push(kvRow(label, esc(id.value)));
    }

    // Address
    const addr = (org.address ?? []).find(a => a.type === 'both' || a.type === 'physical' || !a.type);
    if (addr) {
      const lines = addr.line ?? [];
      const addrText = [...lines, [addr.postalCode, addr.city].filter(Boolean).join(' '), addr.country].filter(Boolean).join(', ');
      if (addrText) rows.push(kvRow('Adresse', esc(addrText)));
    }
  }

  if (!rows.length) return '';
  return section('Leistungserbringer', kvGrid(rows));
}

function renderPatient(inv) {
  const rows = [];

  // recipient display / name
  const displayName = inv.recipient?.display;
  if (displayName) rows.push(kvRow('Empfänger', esc(displayName)));

  // KVNR from recipient identifier
  const kvnr = inv.recipient?.identifier?.value;
  if (kvnr) rows.push(kvRow('KVNR', esc(kvnr)));

  // Patient resource
  const patRef = inv.subject?.reference ?? inv.recipient?.reference;
  if (patRef && resourceCache[patRef]) {
    const pat = resourceCache[patRef];
    const name = humanName(pat.name?.[0]);
    if (name && !displayName) rows.push(kvRow('Name', esc(name)));

    const addr = (pat.address ?? [])[0];
    if (addr) {
      const lines = addr.line ?? [];
      const addrText = [...lines, [addr.postalCode, addr.city].filter(Boolean).join(' ')].filter(Boolean).join(', ');
      if (addrText) rows.push(kvRow('Adresse', esc(addrText)));
    }

    const dob = pat.birthDate;
    if (dob) rows.push(kvRow('Geburtsdatum', esc(fmtDate(dob))));
  } else if (patRef && resourceCache[patRef] === null) {
    rows.push(kvRow('Patient', refBadge(patRef)));
  }

  if (!rows.length) return '';
  return section('Patient / Empfänger', kvGrid(rows));
}

function renderBehandlungsinfo(inv) {
  const rows = [];

  const zeitraum = getExt(inv, EXT.behandlungszeitraum);
  if (zeitraum) {
    const start = zeitraum.valuePeriod?.start;
    const end   = zeitraum.valuePeriod?.end;
    if (start && end && start !== end) {
      rows.push(kvRow('Behandlungszeitraum', esc(fmtDate(start) + ' – ' + fmtDate(end))));
    } else if (start) {
      rows.push(kvRow('Behandlungsdatum', esc(fmtDate(start))));
    }
  }

  const behandlungsart = getExt(inv, EXT.behandlungsart)?.valueCoding;
  if (behandlungsart) {
    const label = behandlungsart.display ?? codeDisplay(behandlungsart.system, behandlungsart.code) ?? behandlungsart.code;
    rows.push(kvRow('Behandlungsart', esc(label)));
  }

  const fachrichtung = getExt(inv, EXT.fachrichtung)?.valueCoding;
  if (fachrichtung) {
    const label = fachrichtung.display ?? codeDisplay(fachrichtung.system, fachrichtung.code) ?? fachrichtung.code;
    rows.push(kvRow('Fachrichtung', esc(label)));
  }

  const diagnosen = getExtAll(inv, EXT.abrechnungsdiagnose);
  for (const d of diagnosen) {
    const coding = d.extension?.find(e => e.url === 'Diagnose')?.valueCoding
                ?? d.extension?.find(e => e.url === 'Prozedur')?.valueCoding;
    if (coding) {
      rows.push(kvRow('Diagnose/Prozedur', esc(coding.display ?? coding.code ?? '')));
    }
  }

  if (!rows.length) return '';
  return section('Behandlungsinfo', kvGrid(rows));
}

const POS_TYPE_META = {
  'GOZ':                       { css: 'pos-goz',        label: 'GOZ' },
  'GOÄ':                       { css: 'pos-goae',       label: 'GOÄ' },
  'BEMA':                      { css: 'pos-bema',       label: 'BEMA' },
  'EigenlaborleistungMaterial': { css: 'pos-eigenlabor', label: 'Eigenlabor/Material' },
  'Fremdlaborleistung':        { css: 'pos-fremdlabor', label: 'Fremdlabor' },
  'SachkostenAuslagen':        { css: 'pos-sachkosten', label: 'Sachkosten/Auslagen' },
  'WegegeldReiseentschaedigung':{ css: 'pos-wegegeld',  label: 'Wegegeld/Reiseentsch.' },
};

function renderPositionen(inv) {
  if (!inv.lineItem?.length) return '';

  const usedTypes = new Set();

  const rows = inv.lineItem.map(li => {
    const ref = li.chargeItemReference?.reference;
    const ci  = ref ? resourceCache[ref] : null;
    const amount = li.priceComponent?.[0]?.amount?.value;
    const seq = li.sequence ?? '';

    if (!ci) {
      const amtCell = amount != null ? fmtAmount(amount) : '—';
      const neg = amount != null && amount < 0;
      return `<tr>
        <td>${esc(String(seq))}</td>
        <td colspan="7">${refBadge(ref ?? '?')}</td>
        <td class="amount ${neg ? 'amount-neg' : ''}">${esc(amtCell)}</td>
      </tr>`;
    }

    const typ = getExt(ci, EXT.positionstyp)?.valueCoding?.code ?? '';
    const goAngaben = getExt(ci, EXT.goAngaben);
    const faktor    = goAngaben?.extension?.find(e => e.url === 'Faktor')
                        ?.extension?.find(e => e.url === 'Value')?.valueDecimal;
    const punktzahl = goAngaben?.extension?.find(e => e.url === 'Punktzahl')?.valueDecimal;
    const zusatz    = getExt(ci, EXT.zusatz)?.valueCoding?.code ?? '';

    const coding   = ci.code?.coding?.[0];
    const codeText = coding ? (coding.display ?? coding.code ?? '—') : '—';
    const codeVal  = coding?.code ?? '—';
    const typMeta  = POS_TYPE_META[typ] ?? { css: '', label: typ };
    const codeTyp  = typMeta.label;

    if (typ) usedTypes.add(typ);

    const datum = fmtDate(ci.occurrenceDateTime ?? ci.occurrencePeriod?.start ?? '');
    const qty   = ci.quantity?.value ?? 1;
    const reason = ci.reason?.[0]?.text ?? '';
    const zahnRegion = ci.bodysite?.[0]?.extension?.find(e => e.url === EXT.zahnRegion)?.valueString ?? '';

    const goCell = faktor != null
      ? `${faktor.toFixed(2)}-fach`
      : punktzahl != null
        ? `${punktzahl} Pkt.`
        : '';

    const neg = amount != null && amount < 0;
    const amtCell = amount != null ? fmtAmount(amount) : '—';

    const rowClass = typMeta.css;

    const subRows = [];
    if (reason) {
      subRows.push(`<tr class="${rowClass} reason-row">
        <td></td><td colspan="8" class="reason-text">${esc(reason)}</td>
      </tr>`);
    }

    return `<tr class="${rowClass}">
      <td>${esc(String(seq))}</td>
      <td>${esc(datum)}</td>
      <td><span class="badge badge-type" style="font-size:10px">${esc(codeTyp)}</span></td>
      <td>${esc(codeVal)}</td>
      <td>${esc(codeText)}</td>
      <td style="text-align:right">${esc(String(qty))}</td>
      <td>${esc(goCell)}</td>
      <td>${esc(zahnRegion)}${zusatz ? ` <span title="Zusatz" style="color:#888">[${esc(zusatz)}]</span>` : ''}</td>
      <td class="amount ${neg ? 'amount-neg' : 'amount-pos'}">${esc(amtCell)}</td>
    </tr>${subRows.join('')}`;
  });

  const legendItems = [...usedTypes]
    .map(t => POS_TYPE_META[t])
    .filter(Boolean)
    .map(m => `<span class="legend-item legend-${m.css.replace('pos-', '')}">${esc(m.label)}</span>`)
    .join('');

  const tableHtml = `
  <div class="legend">${legendItems}</div>
  <table class="positions-table">
    <thead>
      <tr>
        <th>#</th>
        <th>Datum</th>
        <th>Typ</th>
        <th>Code</th>
        <th>Leistung</th>
        <th style="text-align:right">Anz.</th>
        <th>Faktor/Pkt.</th>
        <th>Zahn/Zusatz</th>
        <th class="amount">Betrag</th>
      </tr>
    </thead>
    <tbody>
      ${rows.join('')}
    </tbody>
  </table>`;

  return section('Rechnungspositionen', tableHtml);
}

function renderSummen(inv) {
  const rows = [];

  const summe = inv.totalPriceComponent?.find(c =>
    c.code?.coding?.some(x => x.code === 'SummeRechnungspositionen'));
  if (summe?.amount?.value != null) {
    rows.push(`<tr><td>Summe Rechnungspositionen</td><td>${esc(fmtAmount(summe.amount.value))}</td></tr>`);
  }

  const abzuege = inv.totalPriceComponent?.filter(c =>
    c.code?.coding?.some(x => x.system === CS.totalPriceComp && x.code !== 'SummeRechnungspositionen')
    || c.type === 'deduction') ?? [];

  for (const a of abzuege) {
    const code = a.code?.coding?.find(x => x.system === CS.totalPriceComp)?.code ?? 'Abzug';
    const label = codeDisplay(CS.totalPriceComp, code) ?? code;
    if (a.amount?.value != null) {
      rows.push(`<tr><td>${esc(label)}</td><td class="amount-neg">${esc(fmtAmount(a.amount.value))}</td></tr>`);
    }
  }

  const bemaPunktsumme = inv.totalPriceComponent?.find(c =>
    c.code?.coding?.some(x => x.code === 'BemaPunktsumme'));
  if (bemaPunktsumme?.amount?.value != null) {
    rows.push(`<tr><td>BEMA Punktsumme</td><td>${esc(String(bemaPunktsumme.amount.value))}</td></tr>`);
  }

  if (inv.totalNet?.value != null) {
    rows.push(`<tr><td>Nettobetrag</td><td>${esc(fmtAmount(inv.totalNet.value))}</td></tr>`);
  }

  if (inv.totalGross?.value != null) {
    rows.push(`<tr class="total-gross"><td>Gesamtbetrag</td><td>${esc(fmtAmount(inv.totalGross.value))}</td></tr>`);
  }

  if (!rows.length) return '';

  return section('Summen', `
  <table class="totals-table">
    <tbody>${rows.join('')}</tbody>
  </table>`);
}

function renderKorrektur(inv) {
  const korr = getExt(inv, EXT.korrekturrechnung);
  if (!korr) return '';
  const rows = [];
  const ref = korr.extension?.find(e => e.url === 'Korrekturrechnung')?.valueReference?.reference;
  if (ref) rows.push(kvRow('Korrektur zu', esc(ref)));
  const token = korr.extension?.find(e => e.url === 'Korrekturtoken')?.valueString;
  if (token) rows.push(kvRow('Korrekturtoken', esc(token)));
  if (!rows.length) return '';
  return section('Korrekturrechnung', kvGrid(rows));
}

function renderZahlung(inv) {
  const rows = [];
  if (inv.paymentTerms) rows.push(kvRow('Zahlungsbedingungen', `<span style="white-space:pre-wrap">${esc(inv.paymentTerms)}</span>`));
  const ziel = inv._paymentTerms?.extension?.find(e => e.url === EXT.zahlungsziel)?.valueDate;
  if (ziel) rows.push(kvRow('Zahlungsziel', esc(fmtDate(ziel))));
  if (!rows.length) return '';
  return section('Zahlungsinformationen', kvGrid(rows));
}

// ── HTML helpers ─────────────────────────────────────────────────────────────
function section(title, bodyHtml) {
  return `<div class="section"><div class="section-title">${esc(title)}</div>${bodyHtml}</div>`;
}

function kvGrid(rows) {
  return `<div class="kv-grid">${rows.join('')}</div>`;
}

function kvRow(key, valHtml) {
  return `<span class="kv-key">${esc(key)}</span><span class="kv-val">${valHtml}</span>`;
}

function refBadge(ref) {
  return `<span class="badge badge-unresolved" title="Referenz nicht aufgelöst">${esc(ref)}</span> <span class="badge badge-unresolved">nicht aufgelöst</span>`;
}

function esc(s) {
  if (s == null) return '';
  return String(s)
    .replace(/&/g, '&amp;')
    .replace(/</g, '&lt;')
    .replace(/>/g, '&gt;')
    .replace(/"/g, '&quot;');
}

// ── FHIR helpers ─────────────────────────────────────────────────────────────
function getExt(resource, url) {
  return (resource?.extension ?? []).find(e => e.url === url) ?? null;
}

function getExtAll(resource, url) {
  return (resource?.extension ?? []).filter(e => e.url === url);
}

function getTypeCoding(inv, system) {
  return inv.type?.coding?.find(c => c.system === system)?.code ?? null;
}

function humanName(nameObj) {
  if (!nameObj) return null;
  if (nameObj.text) return nameObj.text;
  const parts = [...(nameObj.prefix ?? []), ...(nameObj.given ?? []), nameObj.family].filter(Boolean);
  return parts.join(' ') || null;
}

function identifierLabel(id) {
  const code = id.type?.coding?.[0]?.code;
  const labels = { LANR: 'LANR', BSNR: 'BSNR', IKNR: 'IK-Nr.', KZVA: 'KZV-Abrechnungsnr.', TIN: 'TIN' };
  if (code && labels[code]) return labels[code];
  const sys = id.system ?? '';
  if (sys.includes('telematik')) return 'Telematik-ID';
  if (sys.includes('kzvabrechnungs')) return 'KZV-Abrechnungsnr.';
  if (sys.includes('iknr')) return 'IK-Nr.';
  if (sys.includes('bsnr')) return 'BSNR';
  if (sys.includes('lanr')) return 'LANR';
  if (sys.includes('uid') || sys.includes('steuernummer')) return 'USt-ID / Steuernr.';
  return 'Identifier';
}

// ── Code display lookup ───────────────────────────────────────────────────────
function codeDisplay(system, code) {
  if (!system || !code) return null;
  const key = system + '#' + code;
  return codeDisplays[key] ?? null;
}

function resolveCode(system, code) {
  return codeDisplay(system, code) ?? code;
}

// ── Formatting ────────────────────────────────────────────────────────────────
function fmtDate(iso) {
  if (!iso) return '—';
  const m = iso.match(/^(\d{4})-(\d{2})-(\d{2})/);
  if (!m) return iso;
  return m[3] + '.' + m[2] + '.' + m[1];
}

function fmtAmount(val) {
  if (val == null) return '—';
  return val.toLocaleString('de-DE', { minimumFractionDigits: 2, maximumFractionDigits: 2 }) + ' EUR';
}

// ── UI helpers ────────────────────────────────────────────────────────────────
function switchTab(tab) {
  document.querySelectorAll('.tab').forEach(t => t.classList.toggle('active', t.dataset.tab === tab));
  document.getElementById('invoice-view').classList.toggle('hidden', tab !== 'invoice');
  document.getElementById('pdf-view').classList.toggle('hidden', tab !== 'pdf');
}

function toggleSplit() {
  const main = document.getElementById('main');
  const btn  = document.getElementById('split-btn');
  const splitPane = document.getElementById('split-pane');
  const tabBar = document.getElementById('tab-bar');
  const isSplit = main.classList.contains('split');

  if (isSplit) {
    main.classList.remove('split');
    splitPane.classList.add('hidden');
    btn.classList.remove('active');
    btn.textContent = 'Splitscreen';
    // Restore tab bar so user can switch to PDF tab in single mode
    tabBar.classList.remove('hidden');
  } else {
    main.classList.add('split');
    splitPane.classList.remove('hidden');
    btn.classList.add('active');
    btn.textContent = 'Splitscreen ✕';
    // Hide tab bar — PDF is shown in the right pane, not via tabs
    tabBar.classList.add('hidden');
    switchTab('invoice');
  }
}

function setInvoiceLoading() {
  const contentEl = document.getElementById('invoice-content');
  contentEl.classList.add('hidden');
  contentEl.innerHTML = '';
  document.getElementById('invoice-placeholder').classList.add('hidden');
  document.getElementById('invoice-error').classList.add('hidden');
}

function showInvoiceError(msg) {
  const el = document.getElementById('invoice-error');
  el.textContent = msg;
  el.classList.remove('hidden');
  document.getElementById('invoice-placeholder').classList.add('hidden');
}

function showGlobalError(msg) {
  document.body.innerHTML = `<div style="padding:40px;color:#c00;font-family:sans-serif">${esc(msg)}</div>`;
}

async function fetchJson(url) {
  const res = await fetch(url);
  if (!res.ok) throw new Error(`HTTP ${res.status} for ${url}`);
  return res.json();
}

// ── Start ────────────────────────────────────────────────────────────────────
init();
