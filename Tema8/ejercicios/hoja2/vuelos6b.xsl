<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="html" indent="yes" />

    <xsl:template match="/">

        <html>
            <head>
                <title>Vuelos</title>
            </head>
            <body>
                <h1>Listado de localizadores</h1>

                <ul>
                    <xsl:for-each select="//linea_aerea">
                        <li>
                            <xsl:value-of select="nombre" /> (<xsl:value-of select="@region" />) </li>
                    </xsl:for-each>
                </ul>
            </body>
        </html>

    </xsl:template>
</xsl:stylesheet>