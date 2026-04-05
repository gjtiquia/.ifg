# qpdf - merge pdfs
# merges all pdfs in current dir in alphabetical order
# highly suggest adding number prefix to filenames
qpdf --empty --pages *.pdf -- output.pdf

# qpdf - keep pages
# . refers to entire input file
# pages 1-3 and pages 8 to the end
qpdf input.pdf --pages . 1-3,8-z -- output.pdf

# qpdf - split pdfs into individual pages
qpdf --split-pages input.pdf output-%d.pdf

# ghostscript - compress pdf (lowest quality)
gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/screen -dNOPAUSE -dQUIET -dBATCH -sOutputFile=output.pdf input.pdf

# ghostscript - compress pdf (second lowest quality)
gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook -dNOPAUSE -dQUIET -dBATCH -sOutputFile=output.pdf input.pdf

# ghostscript - repair corrupted pdf
gs -o repaired.pdf -sDEVICE=pdfwrite -dPDFSETTINGS=/prepress input.pdf
