
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<!--HTML sera nuestra base-->
    <xsl:output method="html"/>
	<!--Empieza en el raiz-->
	<xsl:template match="/">

<html>
<head>

<style>
body {
    background-color: cian;
}
</style>

</head>


<body>
<h1>VIDEOCLUB</h1>

<table border="1">
    <tr>
        <td>TITULO</td>
        <td>NACIONALIDAD</td>
        <td>PRODUCTOR</td>
        <td>DIRECTOR</td>
	<td>AÑO</td>
        <td>FOTO</td>
        <td>URL CON ATRIBUTO</td>
        <td>URL CONTENIDO</td>
        <td>DIRECCION</td>
    </tr>
<xsl:for-each select="videoclub/pelicula">
    <tr>
        <td><xsl:value-of select="titulo"/></td>
        <td><xsl:value-of select="nacionalidad"/></td>
        <td><xsl:value-of select="productor"/></td>
        <td><xsl:value-of select="director"/></td>
        <td><xsl:value-of select="anio"/></td>
        <td><img src="{foto}"/></td>
        <td><a href="{url1/@direccion}">pincha aqui</a></td>
	<td><a href="{url2}">pincha aqui</a></td>
        <td><xsl:value-of select="url2"/></td>
    </tr>
</xsl:for-each>
</table>

</body>
</html>

</xsl:template>
</xsl:stylesheet>