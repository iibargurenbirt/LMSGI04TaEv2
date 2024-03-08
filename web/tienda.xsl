<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:array="http://www.w3.org/2005/xpath-functions/array"
                xmlns:map="http://www.w3.org/2005/xpath-functions/map"
                xmlns:math="http://www.w3.org/2005/xpath-functions/math"
                exclude-result-prefixes="#all"
                expand-text="yes"
                version="3.0">

    <xsl:output method="html" doctype-system="about:legacy-compat" encoding="utf-8"/>

    <xsl:template match="/club_voleibol">
        <html lang="es">
            
            <head>
                <link href="../css/estilo.css" rel="stylesheet" type="text/css" />
                <meta name="description" content="Página principal" />
                <title>titulo de la web</title>
            </head>

            <body>
                <header>
                    <img src= "../img/logotipo.png" alt= "Reservas" />
                    <a href="tienda.xml">Tienda</a>
                    <a href="equipos.xml">Equipos</a>
                    <a href="partidos.xml">Partidos</a>
                </header>
                
                <main class="principal">
                    <xsl:for-each select="tienda/articulo">
                        <article>
                            <section>
                                <img class="articulo" src="../img/{@foto}"/>			
                            </section>
                            <section>
                                <h2><xsl:value-of select="precio"/> €</h2>
                                <h3>Comentarios: <xsl:value-of select="count(comentarios)"/></h3>
                                <ul>
                                <xsl:for-each select="comentarios">
                                    <li><xsl:value-of select="@fecha"/>: <xsl:value-of select="."/></li>
                                </xsl:for-each>
                                </ul>
                            </section>
                        </article>
                    </xsl:for-each>
                </main>
                <footer>
                    <address>&#169; Desarrollado por info@birt.eus</address>
                </footer>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
