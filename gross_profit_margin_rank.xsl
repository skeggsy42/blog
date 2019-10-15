<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
  <h2>Stocks</h2>
  <table border="1">
    <tr bgcolor="#9acd32">
      <th>NAME</th>
      <th>TOTAL ASSETS</th>
      <th>GROSSPROFITMARGIN</th>
      <th>OPERATINGPROFITMARGIN</th>
      <th>NETPROFITMARGIN</th>
      <th>YEAR</th>
    </tr>
    <xsl:for-each select="CATALOG/STOCK">
    <xsl:sort select="GROSSPROFITMARGIN"/>
    <tr>
      <td><xsl:value-of select="NAME"/></td>
      <td><xsl:value-of select="TotalAssets"/></td>
      <td><xsl:value-of select="GROSSPROFITMARGIN"/></td>
      <td><xsl:value-of select="OPERATINGPROFITMARGIN"/></td>
      <td><xsl:value-of select="NETPROFITMARGIN"/></td>
      <td><xsl:value-of select="YEAR"/></td>
    </tr>
     </xsl:for-each> 
      
    <xsl:for-each select="CATALOG/STOCK">
    <xsl:sort select="GROSSPROFITMARGIN"/>
    <xls:if test="year;2019">
    <tr>
      <td><xsl:value-of select="NAME"/></td>
      <td><xsl:value-of select="TotalAssets"/></td>
      <td><xsl:value-of select="GROSSPROFITMARGIN"/></td>
      <td><xsl:value-of select="OPERATINGPROFITMARGIN"/></td>
      <td><xsl:value-of select="NETPROFITMARGIN"/></td>
      <td><xsl:value-of select="YEAR"/></td>
    </tr>  
      </xsl:if>
      </xsl:for-each>
  </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>
