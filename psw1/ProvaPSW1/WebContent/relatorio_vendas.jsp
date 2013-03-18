<%@ page language="java" pageEncoding="UTF-8" import="br.douglas.utils.*, java.sql.*" %>

<% ResultSet vendas = new SalarioDAO().calculaSalario(); %>

<div class="container">
    <h3>Salário dos Vendedores</h3>
	<table class="table table-bordered table-striped">
	    <thead>
	        <tr>
		        <th>Nome</th>
				<th>Comissão P1</th>
				<th>Comissão P2</th>
				<th>Comissão P3</th>
				<th>Salário Vendedor (Comissão de 3% pelas peças)</th>
			</tr>
	    </thead>
	    
	    <tbody>
		    <% while(vendas.next()) { %>
		    <tr>
			<td><%= vendas.getString("nome") %></td>
			<td><%= vendas.getString("vl_p1") %></td>
			<td><%= vendas.getString("vl_p2") %></td>
			<td><%= vendas.getString("vl_p3") %></td>
			<td><%= vendas.getString("salario") %></td>
		    </tr>
		    <% } %>
	    </tbody>
	</table>
</div>

<% ConexaoDB.disconnect(); %>

