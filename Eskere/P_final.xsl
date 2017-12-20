<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<body>
<h2>My CD Collection</h2>
<table border="1">
<tr bgcolor="#9acd32">
    <th>Title</th>
    <th>Artist</th>
</tr>
<xsl:for-each select="catalog/cd[artist!='Bob Dylan']">
<xsl:sort select ="artist"/>

<xsl:choose>
  <xsl:when test="price &gt; 8">
    <tr>
    <td bgcolor="ff00ff"><xsl:value-of select="title"/></td>
    <td><xsl:value-of select="artist"/></td>
    </tr>
  </xsl:when>
  <xsl:otherwise>
    <tr>
    <td bgcolor="ff000f"><xsl:value-of select="artist"/></td>
    <td><xsl:value-of select="price"/></td>
    </tr>
  </xsl:otherwise>
</xsl:choose>


</xsl:for-each>
</table>
</body>
</html>
</xsl:template>

</xsl:stylesheet>
