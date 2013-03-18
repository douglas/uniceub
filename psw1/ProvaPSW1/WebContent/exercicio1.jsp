<%-- 
    Document   : exercicio1
    Created on : Mar 16, 2013, 9:24:24 AM
    Author     : douglas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Prova de Proficiência - Exercício 1</title>
	<link href="css/exercicio1.css" rel="stylesheet" />
    </head>
    <body>
	<center>
	<h1>Gêneros Musicais</h1><br /><br />
	<hr />
	<form>
	    <table>
		<tr>
		    <td><label for="txtNome">Nome:</label></td>
		    <td><input id="txtNome" name="txtNome" type="text"/></td>
		</tr>
		<tr>
		    <td><label for="optSexo">Sexo:</label></td>
		    <td>
			<input type="radio" id="rdSexo" name="rdSexo">MASCULINO</input><br />
			<input type="radio" id="rdSexo" name="rdSexo">FEMININO</input>
		    </td>
		</tr>
		<tr>
		    <td><label for="optGenero">Gênero:</label></td>
		    <td>
			<select multiple="multiple">
			    <option>ROCK</option>
			    <option>POP</option>
			    <option>SAMBA</option>
			    <option>ROMÂNTICA</option>
			</select>
		    </td>
		</tr>
		<tr>
		    <td>
			<input type="button" id="btnExecutar" name="btnExecutar" value="Executar">
		    </td>
		    <td>
			<input type="reset" id="btnLimpar" name="btnLimpar" value="Limpar">
		    </td>
		</tr>
	    </table>
	<form>
	</center>
    <a href="/ProvaPSW1/index.jsp">Voltar para lista de exercícios</a>
    </body>
</html>
