package br.douglas.utils;

import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.SQLException;

public class ConexaoDB {
	private static Connection conn = null;
	
	public static Connection connect() {
		try {
			Class.forName("org.apache.derby.jdbc.ClientDriver").newInstance();
			conn =  DriverManager.getConnection("jdbc:derby://localhost:1527//Users/douglas/Work/code/uniceub/ProvaPSW1/db/Vendas", "vendas", "vendas");
		} catch (Exception e) {
			System.out.println(" Erro ao conectar ao banco !");
		}
		
		return conn;
	}
	
	public static void disconnect() throws SQLException {
		conn.close();
	}
}
