# PreTeXt sample syllabus template

This is a collection of PreTeXt XML files that one could se to make a course syllabus.
The file syllabus.xml is the root file.

## Processing

The following execution will build the syllabus into a LaTeX file, using one reasonable set of sytling parameters.

```
xsltproc --xinclude --stringparam latex.preamble.late '\setlength{\parindent}{0mm}\setlength{\parskip}{0.5pc}\hypersetup{colorlinks=false}\setcounter{secnumdepth}{1}' --stringparam latex.geometry 'margin=2cm' --stringparam latex.font.size '10pt' ~/mathbook/xsl/mathbook-latex.xsl syllabus.xml > syllabus.tex
```

The following execution will build the syllabus into a collection of HTML files, along with a `knowls` folder that some of the HTML may rely on.

```
xsltproc --xinclude ~/mathbook/xsl/mathbook-html.xsl syllabus.xml
```
