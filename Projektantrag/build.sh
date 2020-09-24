#!/bin/bash
docker run --rm -v $(pwd):/data -w /data  rstropek/pandoc-latex -f markdown \
    --template https://raw.githubusercontent.com/Wandmalfarbe/pandoc-latex-template/master/eisvogel.tex \
    -t latex  --lua-filter pagebreak.lua \
    -o dist/Projektantrag.pdf \
    --metadata-file=Projektantrag.yaml \
    Projektantrag.md
