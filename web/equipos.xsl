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
	<xsl:template match="/club_voleibol/equipo[entrenador/nombre='Julio Velasco']">
		<xsl:variable name="nombreEntrenador" as="" select="entrenador/nombre"/>
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
					<main>
					<h1><a href="{entrenador/url}"><h4><xsl:value-of select="$nombreEntrenador"/></h4></a></h1>
					
					<article class="equipos">
						<h4><xsl:value-of select="nombre"/></h4>
						<xsl:apply-templates select="jugadores/jugador[@titular='si']"/>
					</article>
				</main>

				
				<footer>
					<address>&#169; Desarrollado por info@birt.eus</address>
				</footer>
			</body>
		</html>
	</xsl:template>

	<xsl:template match="jugadores/jugador">
		<p><xsl:value-of select="@camiseta"/> - <xsl:value-of select="nombre"/></p>
	</xsl:template>
	<xsl:template match="tienda"/>
	<xsl:template match="partido"/>
	<xsl:template match="equipo"/>
</xsl:stylesheet>
