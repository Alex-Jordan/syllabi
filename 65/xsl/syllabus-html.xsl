<?xml version='1.0'?> <!-- As XML file -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<!-- Thin layer on MathBook XML -->
<xsl:import href="/Users/alex.jordan/mathbook/xsl/mathbook-html.xsl" />

<xsl:param name="html.knowl.webwork.inline" select="'yes'" />

<xsl:template match="webwork[not(*|@*)]">
    <a href="https://webwork.pcc.edu/webwork2/mth065-jordan-201902/">WeBWorK</a>
</xsl:template>

</xsl:stylesheet>
