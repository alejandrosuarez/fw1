<html>
	<head>
		<title>FW/1 - Framework One - Examples</title>
		<base href="<cfoutput>#iif( CGI.HTTPS eq "on", de("https"), de("http") ) & "://" & CGI.HTTP_HOST & getDirectoryFromPath( CGI.SCRIPT_NAME )#</cfoutput>" />
		<link rel="stylesheet" type="text/css" href="../css/fw1.css" />
	</head>
	<body>
		<div class="wrap">
			<div class="page">
				<img src="../css/fw1logo7.jpg"/>
				<cfoutput>#body#</cfoutput>
				<p><a href="<cfoutput>#buildURL( ':main.default' )#</cfoutput>">Examples Home</a></p>
			</div>
			<div class="footer">
				<a href="https://github.com/framework-one/fw1">FW/1</a> is copyright (c) 2009-<cfoutput>#year( now() )#</cfoutput>, Sean Corfield, Marcin Szczepanski, Ryan Cogswell -
				<a href="http://www.apache.org/licenses/LICENSE-2.0">Licensed under the Apache License, Version 2.0</a><br />
				You are running FW/1 version <cfoutput>#variables.framework.version#</cfoutput>.
			</div>
		</div>
	</body>
</html>
