<?xml version="1.0" encoding="ISO-8859-1"?>
<?xml-stylesheet href="mystyle.css" type="text/css"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:template match="/">
    <html>
		<head>
			<title>ESCUELA INFANTIL DUENDES SAN VICENTE DEL RASPEIG INGL�S INFANTIL ACTIVIDADES VERANO</title>
			
			<meta http-equiv="X-UA-Compatible" content="IE=9" /> 
			<link rel="stylesheet" type="text/css" href="../../../CSS/screen.css"/>
			<link rel="stylesheet" type="text/css" href="../../../CSS/hoja1.css"/>
			<Script type="text/javascript" src="../../../JSCRIPT/Resolucion.js"/>
		</head>
		
		<body>
			<div id="wrapper">
				<div id="header">
					<table width = "100%">
						<tr>
							<td>
								<div id="logo">
									<h1>
										<A TARGET = "Cuerpo" href = "../../ESCUELA/ESCUELA/escuela.xml">
											<xsl:value-of select ="pagina/cabecera/texto1"/>
										</A>
									</h1>
								</div>
							</td>
							
						</tr>
					</table>
					<div class="clr"></div>
				</div>
				<div class="content">
					<ul id="menu">
							
						<li>
							<a href="../../ESCUELA/ESCUELA/escuela.xml">
							<div class = "escuela">								
								Escuela
							</div>
							</a>
						</li>
						
						<li>
							<a href="../EXTRA/extra.xml">
							<div class = "papis">
								Papis
							</div>
							</a>
						</li>
						
						<li>
							<a href="../../AYUDA/GUIA/guia.xml">
							<div class = "ayuda">
								Te Ayudamos
							</div>
							</a>
						</li>
						
						<li>
							<a href="../../ADMISION/admision.xml">
							<div class = "matricula">
							Admisi�n
							</div>
							</a>
						</li>	

						<li>							
							<a href = "http://inglesinfantil.es/" TARGET="_blank">
							<div class = "ingles">
							Ingl�s
							</div>
							</a>
						</li>
					</ul>
					
						<table width = "100%">
							<tr>
								<td>
									<div id="pitch">						
									</div>
								</td>
								
								<td class = "contacto">
									<div align = "left">
										<a target="_blank">
											<xsl:attribute name = "HREF">
												<xsl:value-of select = "pagina/cuerpo/link"/>
											</xsl:attribute>
											<font color = "blue">Ver Mapa</font>
										</a>
										<br/>
										<xsl:value-of select ="pagina/cuerpo/calle"/>
										<br/>
										<xsl:value-of select ="pagina/cuerpo/localidad"/>
										<br/>
										<xsl:value-of select ="pagina/cuerpo/cp"/>
										<br/>
										<xsl:value-of select ="pagina/cuerpo/provincia"/>
										<br/><br/>
										Tel�fonos de Contacto:
										<br/>
										<xsl:for-each select ="pagina/cuerpo/telefono">
											<xsl:value-of select ="."/>
											<br/>
										</xsl:for-each>	
										<br/>
										Puede escribirnos:		
										<a> 
											<xsl:attribute name="href">
												mailto: <xsl:value-of select="pagina/pie/mail/correo"/>? 									
												subject: <xsl:value-of select ="pagina/pie/mail/asunto"/>
											</xsl:attribute> 
											
											<b><xsl:value-of select="pagina/pie/mail/correo"/></b>
										</a>		
									</div>
								</td>
								
								<td valign="top">
									<img src= "../../../IMAGENES/Fondos/logo_color.jpg"></img>
								</td>
								
								<td align = "right" text-align= "center">
									<div align = "right">
										<ul>		
											
											<li>
												
												<a href="../TABLON/tablon.xml">
													<div class = "vertical">
														Tabl�n de anuncios
													</div>
												</a>
											</li>
											<br/><br/>
											<li>
												
												<a href="../EXTRA/extra.xml">
													<div class = "vertical">
														Despu�s del Cole...
													</div>
												</a>
											</li>
											<br/><br/>
											
											<!--li>
												<a href="../SSANTA/ssanta.xml">
													<div class = "vertical">												
														Semana Santa
													</div>
												</a>
											</li>
											<br/><br/-->
											
											<li>
												<a href="verano.xml">
													<div class = "vertical">												
														<font color = "blue">
															Verano
														</font>
													</div>
												</a>
											</li>
											<br/><br/>
																						
											<li>
												<a href="../REUNIONES/reuniones.xml">
													<div class = "vertical">
														Reuniones
													</div>
												</a>
											</li>
											<br/><br/>
										</ul>
									</div>
								</td>
							</tr>
						</table>										
					<div class="clr"></div>
				</div>
				
				<div id="main">	
											
					<font size = "3em">	
						<table border ="1">
							<tr>
								<td colspan = "3">
									<b>
										<xsl:value-of select ="pagina/cuerpo/tabla/cabecera"/>
									</b>
								</td>
							</tr>
							<xsl:for-each select ="pagina/cuerpo/tabla/fila">
								<tr>
									<xsl:for-each select ="./celda">
										<td>
											<xsl:value-of select ="."/>
										</td>
									</xsl:for-each>
								</tr>
							</xsl:for-each>
						</table>
						<br/><br/>
						
						<table>
							<tr>
								<td>
									<xsl:value-of select ="pagina/cuerpo/tabla1/celda"/>
								</td>
							</tr>
						</table>
						<br/><br/>
					
					
						<table border = "1">
							<tr>
								<xsl:for-each select ="pagina/cuerpo/tabla2/cabecera">
									<td>
										<b>
											<xsl:value-of select ="."/>
										</b>
									</td>
								</xsl:for-each>
							</tr>
							<xsl:for-each select ="pagina/cuerpo/tabla2/fila">
								<tr>
									<xsl:for-each select ="./celda">
										<td>
											<xsl:value-of select ="."/>
										</td>
									</xsl:for-each>
								</tr>
							</xsl:for-each>
						</table>
						<br/><br/>
						<table>
							<tr>
								<td>
									<xsl:value-of select ="pagina/cuerpo/tabla3/celda"/>
								</td>
							</tr>
						</table>
						<br/><br/>
					</font>
					<div class = "margen3">
						<a target="_blank">
							<xsl:attribute name = "HREF">
								<xsl:value-of select = "pagina/cuerpo/descarga/ruta"/>
							</xsl:attribute>
					
							<img>
								<xsl:attribute name = "src">
									<xsl:value-of select ="pagina/cuerpo/descarga/imagen"/>
								</xsl:attribute>			
							</img>
						
							<font color = "blue">
								Descarga Reserva
							</font>
						</a>
					</div>
				</div>
				
				<div class="clr"></div>
				<div id="footer">
					<table width = "100%">
						<tr width = "100%">
							<td width = "32%">
								<div class = "flota">
									Siguenos en: 
								</div>
								
								<div>
									<a target="_blank">
										<xsl:attribute name = "HREF">
											<xsl:value-of select="pagina/pie/link/ruta"/>
										</xsl:attribute>
										
										<img src = "../../../IMAGENES/images/untitled.png" alt = "escuela inafntil duendes san vicente facebook" width = "6%" heigth = "6%"/>
									</a>
								</div>
							</td>
							
							
							<td width = "33%">
								
							</td>
							
							<td width = "32%" align = "right">
								<a href="../../LEGAL/legal.xml">Aviso Legal</a>
							</td>
						</tr>
					</table>	
				</div>
			</div>
		</body>
	</html>
  </xsl:template>
</xsl:stylesheet>