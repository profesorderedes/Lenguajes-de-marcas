<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <head>
                <link rel="stylesheet" type="text/css" href="heroes.css" />
                <title>Héroes</title>
            </head>
            <body>
                <xsl:apply-templates select="heroes" />
            </body>
        </html>
    </xsl:template>

    <xsl:template match="heroes">
        <h1>Héroes</h1>
        <table>
            <thead>
                <tr>
                    <th>Imagen</th>
                    <th>Nombre</th>
                    <th>Descripción</th>
                </tr>
            </thead>
            <tbody>
                <xsl:apply-templates select="heroe" />
            </tbody>
        </table>
    </xsl:template>

    <xsl:template match="heroe">
        <tr>
            <xsl:apply-templates select="foto" />
            <xsl:apply-templates select="nombre" />
            <xsl:apply-templates select="descripcion" />
        </tr>
    </xsl:template>

    <xsl:template match="foto">
        <td class="col-img">
            <img>
                <xsl:attribute name="src">
                    <xsl:value-of select="." />
                </xsl:attribute>
                <xsl:attribute name="alt">
                    <xsl:value-of select="nombre" />
                </xsl:attribute>
            </img>
        </td>
    </xsl:template>

    <xsl:template match="nombre">
        <td class="col-nombre">
            <xsl:value-of select="." />
        </td>
    </xsl:template>

    <xsl:template match="descripcion">
        <td class="col-desc">
            <xsl:value-of select="." />
        </td>
    </xsl:template>

</xsl:stylesheet>