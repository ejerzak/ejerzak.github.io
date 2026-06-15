#!/usr/bin/env bash
set -euo pipefail

src_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
project_dir="$(dirname -- "$src_dir")"
site_dir="$project_dir/docs"

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

rm -rf "$site_dir"
mkdir -p "$site_dir"

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
cp "$src_dir/CNAME" "$site_dir/"
touch "$site_dir/.nojekyll"
