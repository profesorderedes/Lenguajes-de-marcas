<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="html" indent="yes" />

    <xsl:template match="/">
        <html lang="es">

            <head>
                <meta charset="UTF-8" />
                <meta name="viewport" content="width=device-width, initial-scale=1.0" />
                <title>Heroes 6</title>
                <link rel="stylesheet" href="heroes.css" />
            </head>

            <body>

                <div class="contenedor">
                    <h1>Héroes</h1>

                    <table>
                        <tr>
                            <th>Imagen</th>
                            <th class="nombre">Nombre</th>
                            <th class="descripcion">Descripción</th>
                        </tr>

                        <xsl:apply-templates />

                    </table>
                </div>

            </body>

        </html>
    </xsl:template>

    <xsl:template match="heroe">
        <tr>
            <td>
                <img>
                    <xsl:attribute name="src">
                        <xsl:value-of select="foto" />
                    </xsl:attribute>

                    <xsl:attribute name="alt">
                        <xsl:value-of select="nombre" />
                    </xsl:attribute>
                </img>
            </td>
            <td>
                <xsl:value-of select="nombre" />
            </td>
            <td>
                <xsl:value-of select="descripcion" />
            </td>
        </tr>
    </xsl:template>

</xsl:stylesheet>