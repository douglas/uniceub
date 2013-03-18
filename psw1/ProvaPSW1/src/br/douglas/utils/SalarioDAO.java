package br.douglas.utils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class SalarioDAO {
	private Connection conn = ConexaoDB.connect();
	
	public ResultSet calculaSalario() throws SQLException {
	    String sql = "select final_table.nome,\n" +
"       cast(final_table.vl_p1 + 0.005 as decimal(20,2)) as vl_p1,\n" +
"       cast(final_table.vl_p2 + 0.005 as decimal(20,2)) as vl_p2,\n" +
"       cast(final_table.vl_p3 + 0.005 as decimal(20,2)) as vl_p3,\n" +
"       cast(((final_table.vl_p1+final_table.vl_p2+final_table.vl_p3)*3)/100 + 0.005 as decimal(5,2)) as salario\n" +
"from (\n" +
"select temp_table.nome,\n" +
"       sum(temp_table.vl_p1) as vl_p1,\n" +
"       sum(temp_table.vl_p2) as vl_p2,\n" +
"       sum(temp_table.vl_p3) as vl_p3\n" +
"from (\n" +
"select ve.nome as nome, (v.quantidade*p.valor) as vl_p1, 0 as vl_p2, 0 as vl_p3 \n" +
"    from VENDAS.VENDAS v, vendas.vendedor ve, vendas.pecas p\n" +
"    where v.cod_peca = p.cod_peca and p.cod_peca='p1'\n" +
"union\n" +
"select ve.nome, 0 as vl_p1, (v.quantidade*p.valor) as vl_p2, 0 as vl_p3  \n" +
"    from VENDAS.VENDAS v, vendas.vendedor ve, vendas.pecas p\n" +
"    where v.cod_peca = p.cod_peca and p.cod_peca='p2'\n" +
"union\n" +
"select ve.nome, 0 as vl_p1, 0 as vl_p2, (v.quantidade*p.valor) as vl_p3  \n" +
"    from VENDAS.VENDAS v, vendas.vendedor ve, vendas.pecas p\n" +
"    where v.cod_peca = p.cod_peca and p.cod_peca='p3') as temp_table\n" +
"group by nome\n" +
") as final_table";
	    
	    Statement st = conn.createStatement();
	    ResultSet vendas = st.executeQuery(sql);
	    
	    return vendas;
	}
}
