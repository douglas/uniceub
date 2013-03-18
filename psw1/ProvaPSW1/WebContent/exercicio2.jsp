<%-- 
    Document   : exercicio2
    Created on : Mar 16, 2013, 9:59:45 AM
    Author     : douglas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Prova de Proficiência - Exercício 2</title>
	<link href="css/exercicio2.css" rel="stylesheet" />
    </head>
    <body>
        <h1>Contador de Vogais</h1>
	<br /><hr /><br />
	
	<form>
	    <label for="txtFrase">Informe uma frase:</label>
	    <input type="text" name="txtFrase" id="txtFrase" />
	    <input type="button" value="Calcular" onclick="calcular_vogais();">
	</form>
	<br />
	<hr />
	<div id="resposta"><div>
    </body>
    <br />
    <a href="/ProvaPSW1/index.jsp">Voltar para lista de exercícios</a>
    <script src="js/exercicio2.js"></script>
</html>
