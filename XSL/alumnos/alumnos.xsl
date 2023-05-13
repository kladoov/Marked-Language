<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="html" />

  <xsl:template match="/">


    <html>
      <head>
        <style>
          p{
          font-style: italic;
          text-align: center;
          }
        </style>
      </head>
      <body>

<h1> --------------asignar 17 a la variable edad y mostrarla</h1>
        <xsl:variable name="edad" select="17" />
        <p>
          <xsl:value-of select="$edad" />
        </p>

<h1> --------------el nombre de todos los alumnos</h1>
        <xsl:for-each select="ins/alumnos/alumno">
          <p>
            <xsl:value-of select="." />
          </p>
        </xsl:for-each>

<h1> --------------el nombre de los alumnos que tienen 17 años</h1>
        <xsl:for-each select="ins/alumnos/alumno[@edad='17']" />
        <p>
          <xsl:value-of select="." />
        </p>

<h1> --------------el nombre de los alumnos que tienen la misma edad que alberto</h1>
        <xsl:variable name="variable_albert" select="ins/alumnos/alumno[text()='alberto']/@edad" />

        <xsl:for-each select="ins/alumnos/alumno[@edad=$variable_albert]">
          <p>
            <xsl:value-of select="." />
          </p>
        </xsl:for-each>

<h1> --------------el nombre de los alumnos que tienen la misma edad que alberto con su
         ciclo y tutor</h1>
        <xsl:variable name="albert_edad" select="ins/alumnos/alumno[text()='alberto']/@edad" />


        <xsl:for-each select="ins/alumnos/alumno[@edad=$albert_edad]">

          <p> -alumno:<xsl:value-of select="." />-ciclo:<xsl:value-of select="../@grupo" />-tutor:<xsl:value-of
              select="../tutor" />
          </p>

        </xsl:for-each>


<h1> --------------el nombre de los alumnos que estan en el mismo grupo que pedro</h1>

        <xsl:variable name="grupo_pedro" select="ins/alumnos/alumno[text()='pedro']/../@grupo" />
        
        <p>
        grupo:<xsl:value-of select="$grupo_pedro" />
       <br/>
        <xsl:for-each select="ins/alumnos[@grupo=$grupo_pedro]/alumno">
        
            <xsl:value-of select="." />
       <br/>
        </xsl:for-each>
         </p>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>