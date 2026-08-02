#!/usr/bin/env bash
# Build the publishable site into dist/ from the *.dc.html sources.
set -euo pipefail
cd "$(dirname "$0")"

rm -rf dist && mkdir -p dist

for page in index Experience Education Projects; do
  sed 's/\.dc\.html"/.html"/g' "$page.dc.html" > "dist/$page.html"
done

cp support.js image-slot.js dist/
cp -R assets _ds dist/

# image-slot.js fetches this sidecar at runtime for saved image crops
cp .image-slots.state.json dist/

# _ds/ starts with an underscore — without this, Jekyll drops it and the site loses all styling
touch dist/.nojekyll

echo "built dist/ ($(du -sh dist | cut -f1))"
