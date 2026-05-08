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

                <h1>Pasajeros que se dirigen a Mallorca</h1>

                <ul>
                    <xsl:for-each select="vuelos/reserva">
                        <xsl:if test="destino = 'Palma de Mallorca'">
                            <li>
                                <xsl:value-of select="pasajero/nombre" />
                                <xsl:text> => </xsl:text>
                                <xsl:value-of select="destino" />
                            </li>
                        </xsl:if>
                    </xsl:for-each>
                </ul>
            </body>
        </html>


    </xsl:template>


</xsl:stylesheet>