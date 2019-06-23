<?xml version='1.0'?> <!-- As XML file -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<!-- Thin layer on MathBook XML -->
<xsl:import href="/Users/alex.jordan/mathbook/xsl/mathbook-latex.xsl" />

<!-- Intend output for rendering by pdflatex -->
<xsl:output method="text" />

<xsl:param name="latex.preamble.early" select="concat(document('latex-preamble/latex.preamble.xml')//latex-preamble-early, document('latex-preamble/print.preamble.xml')//latex-preamble-early)" />
<xsl:param name="latex.preamble.late" select="concat(document('latex-preamble/latex.preamble.xml')//latex-preamble-late, document('latex-preamble/print.preamble.xml')//latex-preamble-late)" />
<xsl:param name="latex.geometry" select="'margin=2cm'" />
<xsl:param name="latex.font.size" select="'10pt'" />

</xsl:stylesheet>
