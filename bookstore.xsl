<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" indent="yes"/>
  <xsl:template match="/bookstore">
    <html>
      <body>
        <h2>Bookstore Inventory</h2>
        <ul>
          <xsl:apply-templates select="book"/>
        </ul>
      </body>
    </html>
  </xsl:template>
  <xsl:template match="book">
    <li>
      <xsl:value-of select="title"/>
      <xsl:text> by </xsl:text>
      <xsl:value-of select="author"/>
      <xsl:text> (ISBN: </xsl:text>
      <xsl:value-of select="@isbn"/>
      <xsl:text>) - Price: $</xsl:text>
      <xsl:value-of select="price"/>
      <xsl:text>, Stock: </xsl:text>
      <xsl:value-of select="stock"/>
    </li>
  </xsl:template>
</xsl:stylesheet>
