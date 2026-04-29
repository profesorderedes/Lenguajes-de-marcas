<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes" />

    <xsl:template match="/">

        <html lang="es">
            <head>
                <title>CD Catalog</title>
                <meta charset="UTF-8" />
                <link rel="stylesheet" href="style.css" />
            </head>
            <body>
                <h1>CD Catalog</h1>
                <table>
                    <tr>
                        <th>Title</th>
                        <th>Artist</th>
                    </tr>
                    <xsl:for-each select="catalog/cd">
                        <xsl:sort select="year" order="descending" />
                        <xsl:choose>
                            <xsl:when test="price &lt; 15">
                                <tr>
                                    <td class="verde">
                                        <xsl:value-of select="title" />
                                        <xsl:text>   </xsl:text>
                                        <xsl:value-of select="year" />
                                    </td>
                                    <td class="verde">
                                        <xsl:value-of select="artist" />
                                    </td>
                                </tr>
                            </xsl:when>
                            <xsl:when test="price &lt; 20">
                                <td class="azul">
                                        <xsl:value-of select="title" />
                                        <xsl:text>   </xsl:text>
                                        <xsl:value-of select="year" />
                                    </td>
                                    <td class="azul">
                                        <xsl:value-of select="artist" />
                                    </td>
                            </xsl:when>
                            <xsl:otherwise>
                                <tr>
                                    <td class="rojo">
                                        <xsl:value-of select="title" />
                                        <xsl:text>   </xsl:text>
                                        <xsl:value-of select="year" />
                                    </td>
                                    <td class="rojo">
                                        <xsl:value-of select="artist" />
                                    </td>
                                </tr>
                            </xsl:otherwise>
                        </xsl:choose>


                    </xsl:for-each>
                </table>
            </body>
        </html>

    </xsl:template>

</xsl:stylesheet>