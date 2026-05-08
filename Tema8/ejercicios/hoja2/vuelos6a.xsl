<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="html" indent="yes" />

    <xsl:template match="/">

        <html lang="es">
            <head>
                <meta charset="UTF-8" />
                <title>Vuelos</title>
            </head>
            <body>

                <h1>Listado de líneas aéreas</h1>

                <ul>
                    <xsl:apply-templates select="//linea_aerea" />
                </ul>
            </body>
        </html>

    </xsl:template>

    <xsl:template match="linea_aerea">

        <li><xsl:value-of select="nombre" /> (<xsl:value-of select="@region" />)</li>

    </xsl:template>

</xsl:stylesheet>