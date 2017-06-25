<?xml version='1.0'?> <!-- As XML file -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<!-- Thin layer on MathBook XML -->
<xsl:import href="/Users/alex.jordan/mathbook/xsl/mathbook-html.xsl" />

<!-- Common thin layer                                                      -->
<xsl:import href="clm-common.xsl" />

<xsl:template match="webwork">
    <a href="https://webwork.pcc.edu/webwork2/mth261-jordan-201702/">WeBWorK</a>
</xsl:template>

</xsl:stylesheet>
