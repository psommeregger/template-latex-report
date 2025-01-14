# .latexmkrc

# Use silent mode
$silent = 1;

# Use pdflatex
$pdf_mode = 1;
$postscript_mode = $dvi_mode = 0;
# ## defaults:
# $pdflatex_silent_switch = "-interaction=batchmode";

# # Use xelatex (http://en.wikipedia.org/wiki/XeTeX)
# $pdf_mode = 5;
# $postscript_mode = $dvi_mode = 0;
# ## defaults:
# $xelatex_silent_switch = "-interaction=batchmode";

# Bibtex
# 2: run bibtex or biber whenever it appears necessary to update the bbl file(s), without testing for the existence of the bib files; always delete .bbl files in a cleanup.
$bibtex_use = 2;

# The command to invoke a pdf-previewer
$pdf_previewer = 'start xdg-open %S';

# Enable shell-escape for all *latex commands
set_tex_cmds( '--shell-escape %O %S' );

# Set default files
@default_files = ('report.tex');
