<?xml version="1.0" encoding="UTF-8"?>


<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes" />

    <xsl:template match="/">

        <html>
            <head>
                <title>Vuelos</title>
                <style>
                    .avion{
                    list-style-image: url("img/airplane.svg");
                    }

                    .tierra{
                    list-style-image: url("img/globe-americas.svg");
                    }
                </style>
            </head>
            <body>
                <h1>Listado de localizadores</h1>

                <ul>
                    <xsl:apply-templates select="//linea_aerea" />
                </ul>
            </body>
        </html>

    </xsl:template>

    <xsl:template match="//linea_aerea">
        <xsl:choose>
            <xsl:when test="@region = 'Europa'">
                <li class="avion"><xsl:value-of select="nombre" /> (<xsl:value-of select="@region" />)</li>
            </xsl:when>
            <xsl:otherwise>
                <li class="tierra"><xsl:value-of select="nombre" /> (<xsl:value-of select="@region" />) </li>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

</xsl:stylesheet>