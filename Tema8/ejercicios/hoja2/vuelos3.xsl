<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <xsl:template match="/">

        <html>
            <head>
                <title>Vuelos</title>
            </head>
            <body>
                <h1>Listado de localizadores, en orden alfabetico inverso</h1>

                <ul>
                    <xsl:apply-templates select="//localizador">
                        <xsl:sort select="." order="descending" />
                    </xsl:apply-templates>
                </ul>
            </body>
        </html>

    </xsl:template>

    <xsl:template match="localizador">
        <li>
            <xsl:value-of select="." />
        </li>
    </xsl:template>

</xsl:stylesheet>