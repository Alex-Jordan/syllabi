<?xml version='1.0'?> <!-- As XML file -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<!-- Generic params we use in common to HTML and PDF                        -->
<xsl:param name="exercise.text.solution" select="'no'" />
<xsl:param name="exercise.text.answer" select="'no'" />
<xsl:param name="exercise.backmatter.solution" select="'yes'" />
<xsl:param name="exercise.backmatter.answer" select="'yes'" />
<xsl:param name="exercise.backmatter.statement" select="'no'" />

<!-- Make it so that refereces to Limit Laws and Derivative Rules are nice -->
<xsl:template match="appendix//theorem" mode="serial-number" />

</xsl:stylesheet>

