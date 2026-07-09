#!/usr/bin/env bash
set -euo pipefail

# Veröffentlicht den IG-Publisher-Output auf dem github-pages-Branch unter docs/ig/,
# erreichbar unter https://gematik.github.io/spec-Digitale-Patientenrechnung/ig/
# Der Viewer (übriger Inhalt von docs/) wird von .github/workflows/pages.yml
# deployed und bleibt hier unangetastet.
#
# Adaptiert aus spec-ISiK-Basismodul scripts/ig-publisher/publish-branch.sh,
# vereinfacht auf einen einzelnen IG mit festem Zielverzeichnis.
#
# Erwartete Umgebungsvariablen:
#   REPO              - owner/repo (z. B. gematik/spec-Digitale-Patientenrechnung)
#   GITHUB_TOKEN      - Token mit contents:write
#   GIT_AUTHOR_NAME   - Committer-Name
#   GIT_AUTHOR_EMAIL  - Committer-E-Mail
#   IG_OUTPUT_DIR     - Verzeichnis mit dem IG-Publisher-Output (Default: ig-output)
#   PAGES_BRANCH      - Ziel-Branch (Default: github-pages)

remote_url="https://x-access-token:${GITHUB_TOKEN}@github.com/${REPO}.git"
output_dir="${IG_OUTPUT_DIR:-ig-output}"
pages_branch="${PAGES_BRANCH:-github-pages}"

if [ ! -f "${output_dir}/index.html" ]; then
  echo "IG output missing or incomplete (no index.html in ${output_dir}); refusing to publish."
  exit 1
fi

# Sicherheitsnetz: übergroßes Gesamt-ZIP nie mitveröffentlichen
find "${output_dir}" -type f -name "full-ig.zip" -delete

commit_msg="chore: publish IG build ${GITHUB_SHA:-manual}"

for attempt in 1 2 3; do
  rm -rf pages-checkout
  git clone --depth 1 --branch "${pages_branch}" "${remote_url}" pages-checkout

  rm -rf pages-checkout/docs/ig
  mkdir -p pages-checkout/docs/ig
  cp -R "${output_dir}/." pages-checkout/docs/ig/
  # Jekyll-Verarbeitung auf GitHub Pages deaktivieren (Pages served aus /docs)
  touch pages-checkout/docs/.nojekyll

  if (
    cd pages-checkout
    git config user.name "${GIT_AUTHOR_NAME}"
    git config user.email "${GIT_AUTHOR_EMAIL}"
    # -f: docs/.gitignore auf dem Pages-Branch ignoriert u. a. data/ und pdfs/
    git add -f docs/ig docs/.nojekyll
    if git diff --cached --quiet; then
      echo "No updates to publish."
      exit 0
    fi
    git commit -m "${commit_msg}"
    git push origin HEAD:"${pages_branch}"
  ); then
    echo "Published IG to ${pages_branch}:docs/ig"
    exit 0
  fi

  echo "Publish attempt ${attempt} failed; retrying..."
  sleep 3
done

echo "Failed to publish to ${pages_branch} after 3 attempts."
exit 1
