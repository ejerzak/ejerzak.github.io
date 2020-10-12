#!/bin/bash
pandoc -f markdown -t html --template template.html -s -o ../public_html/index.html -c ethan.css navbar.md index.md
pandoc -f markdown -t html --template template.html -s -o ../public_html/talks.html -c ethan.css navbar.md talks.md
pandoc -f markdown -t html --template template.html -s -o ../public_html/miscellany.html -c ethan.css navbar.md miscellany.md
pandoc -f markdown -t html --template template.html -s -o ../public_html/papers.html -c ethan.css navbar.md papers.md
pandoc -f markdown -t html --template template.html -s -o ../public_html/teaching.html -c ethan.css navbar.md teaching.md
pandoc -f markdown -t html --template template.html -s -o ../public_html/cv.html -c ethan.css navbar.md cv.md
pandoc -f markdown -t html --template template.html -s -o ../public_html/pofma.html -c ethan.css navbar.md pofma.md
cp *.css ../public_html/

