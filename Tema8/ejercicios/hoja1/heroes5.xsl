<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="html" indent="yes" />

    <xsl:template match="/">
        <html lang="es">

            <head>
                <meta charset="UTF-8" />
                <meta name="viewport" content="width=device-width, initial-scale=1.0" />
                <title>Heroes 5</title>

                <style>
                    body {
                    font-family: Arial, Helvetica, sans-serif;
                    }

                    .contenedor {
                    width: 70%;
                    margin: auto;
                    }

                    h1 {
                    max-width: max-content;
                    color: red;
                    font-size: 3rem;
                    margin: auto;
                    margin-top: 2rem;
                    margin-bottom: 2rem;
                    }

                    table{
                    border: 1px solid rgba(128, 128, 128, 0.311);
                    border-collapse: collapse;
                    }

                    th {
                    color: white;
                    padding: 0.5rem 1rem;
                    background-color: red;
                    border: 1px solid rgba(128, 128, 128, 0.311);
                    }

                    td {
                    padding: 0.5rem 1rem;
                    border: 1px solid rgba(128, 128, 128, 0.311);
                    text-align: center;
                    }

                    .img {
                    width: 15%;
                    }

                    .nombre {
                    width: 10%;
                    }

                    .descripcion {
                    width: 75%;
                    }

                    img {
                    max-width: 100%;
                    }
                </style>
            </head>

            <body>

                <div class="contenedor">
                    <h1>Héroes</h1>

                    <table>
                        <th class="img">Imagen</th>
                        <th class="nombre">Nombre</th>
                        <th class="descripcion">Descripción</th>
                        <xsl:for-each select="//heroe">
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
                        </xsl:for-each>
                    </table>
                </div>

            </body>

        </html>
    </xsl:template>
</xsl:stylesheet>