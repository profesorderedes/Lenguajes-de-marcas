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
                <xsl:apply-templates />
            </body>
        </html>

    </xsl:template>

    <xsl:template match="catalog/cd">
        <p> 
            <xsl:apply-templates select="title" />
            <br/>
            <xsl:apply-templates select="artist" />
        </p>
    </xsl:template>

    <xsl:template match="title">
         Título: <xsl:value-of select="." />
    </xsl:template>

     <xsl:template match="artist">
         Autor: <xsl:value-of select="." />
    </xsl:template>

</xsl:stylesheet>