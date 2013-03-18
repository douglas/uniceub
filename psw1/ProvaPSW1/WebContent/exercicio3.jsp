<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	    <title>SISTEMA VENDA DE PEÇAS</title>
	    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
	    <link href="css/custom.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        
        <div class="navbar navbar-static-top">
            <div class="navbar-inner">
                <div class="container">
                    <ul class="nav">
                        <li class="brand">Menu</li>
                        <li class="active">
                            <a href="/ProvaPSW1/exercicio3.jsp">Home</a>
                        </li>
                        <% if(session.getAttribute("autenticado") == Boolean.TRUE) { %>
		                <li class="divider-vertical"></li>
		                <li class="pull-right">
		                    <a href="#"><b>Usuário autenticado: </b> <%= session.getAttribute("nome") %></a>
		                </li>
		                <li class="divider-vertical"></li>
		                <li class="pull-right">
		                  <ul class="nav nav-pills">
		                      <li class="active">
		                          <a href="/ProvaPSW1/Logout">
		                              Efetuar Logout
		                          </a>
		                      </li>
		                  </ul>
		                </li>
		                <% } %>
                    </ul>
                </div>
            </div>
        </div>
        
        <div class="hero-unit text-center">
            <h1>Bem-vindo !</h1>
            <p>ao <strong>SISVEN</strong> - Sistema de Venda de Peças</p>
		</div>
        
<% if(session.getAttribute("autenticado") == Boolean.TRUE) { %>

    <%@ include file="relatorio_vendas.jsp" %>

<% } else { %>

	<div class="container">
	   <% if(session.getAttribute("invalido") == Boolean.TRUE) { %>
	   <div class="alert alert-error">
	       Usuário ou senha inválidos, favor tentar novamente !
	       <a class="close" data-dismiss="alert" href="#">&times;</a>
	   </div>
	   <% } %>
	   <form class="form-horizontal" method="post" action="Login">
		    <div class="control-group">
		        <label class="control-label" for="txtLogin">Login</label>
		        <div class="controls">
		            <input type="text" id="txtLogin" name="txtLogin" placeholder="Login">
		        </div>
		    </div>
		    <div class="control-group">
			    <label class="control-label" for="txtSenha">Senha</label>
			    <div class="controls">
				   <input type="password" id="txtSenha" name="txtSenha" placeholder="Senha">
				</div>
		    </div>
		    <div class="control-group">
		        <div class="controls">
		            <input id="btnLogin" name="btnLogin" type="submit" class="btn btn-primary" value="Efetuar Login" />
		        </div>
		    </div>
		</form>
	</div>

<% } %>
	
	
	<div class="navbar navbar-fixed-bottom">
        <div class="navbar-inner">
			<div class="container">
				<ul class="nav">
                    <li class="pull-right"></li>
                </ul>
            </div>
        </div>
    </div>
	
	
	<script src="js/jquery-1.9.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	
	<script>
	   $(function() {
		    $(".alert").alert();
	   });
	</script>
    </body>
</html>