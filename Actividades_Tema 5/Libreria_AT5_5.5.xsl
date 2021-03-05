<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1>Ejemplo Plantillas</h1>
                <xsl:apply-templates/>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="ListaLibros">
        <h2>Mi biblioteca</h2>
        <table>
            <tr bgcolor="#887788">
                <th>ISBN</th>
                <th>Título</th>
                <th>Autor</th>
                <th>Precio</th>
                <th>Número de páginas</th>
            </tr>
        <xsl:apply-templates select="Libro"/>
        </table>
    </xsl:template>
    <xsl:template match="Libro">
        <tr>
            <td><xsl:apply-templates select="isbn"/></td>
            <td><xsl:apply-templates select="titulo"/></td>
            <td><xsl:apply-templates select="autor"/></td>
            <td><xsl:apply-templates select="precio"/></td>
            <xsl:apply-templates select="numPaginas"/>
        </tr>
    </xsl:template>
    <xsl:template match="numPaginas">
        <xsl:choose>
            <xsl:when test=". &gt;150">
                <td bgcolor="#ff0000" align="right" ><xsl:value-of select="."/></td>
            </xsl:when>
            <xsl:otherwise>
                <td bgcolor="#FDEEFD" align="right" ><xsl:value-of select="."/></td>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>