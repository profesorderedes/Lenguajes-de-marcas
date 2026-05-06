<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="html" indent="yes" />

    <xsl:template match="/">
        <html>
            <head>
                <title>Héroes</title>
                <meta charset="UTF-8" />
            </head>
            <body>
                <h1>Lista de héroes</h1>
                <ul>
                    <xsl:for-each select="//heroe">
                        <li>
                            <xsl:value-of select="nombre" />
                        </li>
                    </xsl:for-each>
                </ul>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>