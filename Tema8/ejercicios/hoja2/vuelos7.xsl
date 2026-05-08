<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="html" indent="yes" />

    <xsl:template match="/">
        <html lang="es">
            <head>
                <meta charset="UTF-8" />
                <link rel="stylesheet" href="style.css" />
                <title>Vuelos</title>
            </head>
            <body>

                <h1>Listado de líneas aéreas</h1>

                <ul>
                    <xsl:for-each select="//linea_aerea">
                        <li>

                            <!-- Si el region es Europa, el icono será el del avión. Y sino, será el
                            del mundo -->

                            <xsl:choose>
                                <xsl:when test="@region = 'Europa'">
                                    <img>
                                        <xsl:attribute name="src">img/airplane.svg</xsl:attribute>
                                        <xsl:attribute name="alt">Icono avión</xsl:attribute>
                                    </img>
                                </xsl:when>
                                <xsl:otherwise>
                                    <img>
                                        <xsl:attribute name="src">img/globe-americas.svg</xsl:attribute>
                                        <xsl:attribute name="alt">Icono mundo</xsl:attribute>
                                    </img>
                                </xsl:otherwise>
                            </xsl:choose>

                            <!-- Contenido de texto real: "nombre (region)" -->
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="nombre" /> (<xsl:value-of select="@region" />)   <!-- El xsl:text es para añadir un espacio entre el icono y el texto -->
                        </li>
                    </xsl:for-each>
                </ul>
            </body>
        </html>


    </xsl:template>


</xsl:stylesheet>