#!/usr/bin/env bash
set -euo pipefail

src_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
project_dir="$(dirname -- "$src_dir")"
site_dir="$project_dir"

pages=(
    index
    papers
    talks
    rational-for-what
    teaching
    cv
    miscellany
    pofma
)

for page in "${pages[@]}"; do
    pandoc \
        -f markdown \
        -t html \
        --template "$src_dir/template.html" \
        -s \
        -o "$site_dir/$page.html" \
        -c ethan.css \
        "$src_dir/navbar.md" \
        "$src_dir/$page.md"
done

cp "$src_dir/"*.css "$site_dir/"
cp "$src_dir/assets/"* "$site_dir/"
touch "$site_dir/.nojekyll"
