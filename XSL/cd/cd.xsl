<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="html"/>
	
	<xsl:template match="/">

<html>
<head>
	<style>
        p {font-style:italic;
           text-align:center;}
        </style>
</head>
<body>

<p>-Todos los nombres de los CD’S</p>
<xsl:for-each select="CATALOG/CD/TITLE">
	<xsl:value-of select="."/>
</xsl:for-each>



<p>- Todos los países</p>
<xsl:for-each select="CATALOG/CD/COUNTRY">
	<xsl:value-of select="."/>
</xsl:for-each>



<p>-Artistas y  su álbum del año 1990</p>
<xsl:for-each select="CATALOG/CD[YEAR='1990']">
	<xsl:value-of select="."/>
	<br/>
</xsl:for-each>



<p>-Album y año de todos los CD’S de los 70 y 80</p>
<xsl:variable name="año" select="CATALOG/CD[YEAR[. &gt;= '1970'] and YEAR[. &lt;= '1989']]"/>
<xsl:for-each select="$año">
	<xsl:value-of select="."/>
	<br/>
</xsl:for-each>



<p>- Contabilizar las cantidades anteriores</p>
<xsl:value-of select="count($año)"/>

	    
      
</body>
</html>

</xsl:template>
</xsl:stylesheet>


