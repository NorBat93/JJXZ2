<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="CollectionOfPoems">
        <html>
            <head>
                <title> Zbiór wierszy </title>
            </head>
            <body>

                <h1 style="margin-bottom: 65px;font-family: sans-serif;"> Zbiór wierszy </h1>
                
            <xsl:for-each select="Poem">
                <p style="font-style: italic; padding-top: 1em; border-top: 1px #7d7d7d dotted;">
                    <xsl:value-of select="Author/FirstName"/> <xsl:value-of select="Author/LastName"/>
                </p>
                <h2 style="margin-bottom: 0px;"><xsl:value-of select="Title"/></h2>
                <h3 style="margin: 0.2em 0 1rem 0;"><b><xsl:value-of select="Subtitle"/></b></h3>
                <xsl:apply-templates select="Strophe"/> 
            </xsl:for-each>

            </body>
        </html>
    </xsl:template>

    <xsl:template match="Strophe">
        <p><xsl:apply-templates/></p>
    </xsl:template>

    <xsl:template match="Verse">
        <xsl:value-of select="."/><br />
    </xsl:template>

</xsl:stylesheet>