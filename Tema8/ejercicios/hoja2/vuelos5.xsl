<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="html" indent="yes" />

    <xsl:template match="/">

        <html>
            <head>
                <title>Vuelos</title>
            </head>
            <body>
                <h1>Pasajeros que se dirigen a Mallorca</h1>

                <ul>
                    <xsl:apply-templates select="//pasajero" />
                </ul>
            </body>
        </html>

    </xsl:template>

    <xsl:template match="pasajero">
        <xsl:if test="../destino = 'Palma de Mallorca'">
            <li>
                <xsl:value-of select="nombre" />
                <xsl:text> => </xsl:text>
                <xsl:value-of select="../destino" />
            </li>
        </xsl:if>
    </xsl:template>
    
</xsl:stylesheet>