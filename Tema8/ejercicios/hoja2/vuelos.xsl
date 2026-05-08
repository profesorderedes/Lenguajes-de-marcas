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

                <h1>Listado de localizadores, en orden alfabético inverso</h1>

                <ul>
                    <xsl:for-each select="vuelos/reserva">
                        <xsl:sort select="localizador" order="descending" />
                        <li>
                            <xsl:value-of select="localizador" />
                        </li>
                    </xsl:for-each>
                </ul>
            </body>
        </html>


    </xsl:template>
</xsl:stylesheet>