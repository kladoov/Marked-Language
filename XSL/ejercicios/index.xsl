<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<!--HTML sera nuestra base-->
    <xsl:output method="html"/>
	<!--Empieza en el raiz-->
	<xsl:template match="/">

<html>
<head>
	<title>ejercicios</title>
</head>


<body>
<h2>UNO: LOS LIBROS MAS CAROS</h2>
<table border="1">
<tr>
	<td>TITULO</td>
	<td>AUTOR</td>
	<td>EDITOR</td>
	<td>ISBN</td>
	<td>PRECIO</td>
</tr>

<xsl:for-each select="//libro[precio&gt;=25]">
<tr>
	<td><xsl:value-of select="titulo"/></td>
	<td>
	<xsl:for-each select="autor">
		<xsl:value-of select="nombre"/><xsl:value-of select="ape"/><br/>
	</xsl:for-each>
	</td>
	<td><xsl:value-of select="editor"/></td>
	<td><xsl:value-of select="isbn"/></td>
	<td><xsl:value-of select="precio"/></td>
</tr>
</xsl:for-each>
</table>

<hr/>

<h2>UNO: LOS LIBROS MAS CAROS</h2>
<table border="1">
<tr>
	<td>TITULO</td>
	<td>AUTOR</td>
	<td>EDITOR</td>
	<td>ISBN</td>
	<td>PRECIO</td>
</tr>
<xsl:for-each select="libreria/libro[precio&lt;25]">
<tr>
	<td><xsl:value-of select="titulo"/></td>
	<td><xsl:value-of select="autor"/></td>
	<td><xsl:value-of select="editor"/></td>
	<td><xsl:value-of select="isbn"/></td>
	<td><xsl:value-of select="precio"/></td>
</tr>
</xsl:for-each>

</table>


</body>
</html>

</xsl:template>
</xsl:stylesheet>