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

<xsl:template match="video[@youtube|@youtubeplaylist]" mode="static-caption"/>

<xsl:template match="stack" mode="panel-panel">
    <xsl:param name="width" />
    <xsl:param name="valign" />

    <xsl:text>\begin{framedsbspanel}{</xsl:text>
    <xsl:value-of select="substring-before($width,'%') div 100" />
    <xsl:text>}</xsl:text>
    <!-- 'top' is the sbspanel environment default -->
    <!-- could generate brackets of optional       -->
    <!-- argument outside of the choose            -->
    <xsl:choose>
        <xsl:when test="$valign = 'top'" />
        <xsl:when test="$valign = 'middle'">
            <xsl:text>[center]</xsl:text>
        </xsl:when>
        <xsl:when test="$valign = 'bottom'">
            <xsl:text>[bottom]</xsl:text>
        </xsl:when>
    </xsl:choose>
    <xsl:text>%&#xa;</xsl:text>
    <xsl:apply-templates select="." mode="panel-latex-box" />
    <xsl:text>\end{framedsbspanel}%&#xa;</xsl:text>
</xsl:template>


</xsl:stylesheet>

