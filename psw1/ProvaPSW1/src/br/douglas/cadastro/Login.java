package br.douglas.cadastro;

import br.douglas.utils.ConexaoDB;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "Login", urlPatterns = {"/Login"})
public class Login extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
	          throws ServletException, IOException {
    	//processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
	          throws ServletException, IOException {
	
		Connection conn = ConexaoDB.connect();
		String login = request.getParameter("txtLogin");
		String senha = request.getParameter("txtSenha");	
		String sql = "select * from vendas.vendedor where login = '" + login + "' and senha ='" + senha + "'";
	
		try {
		    Statement st = conn.createStatement();
		    ResultSet dados = st.executeQuery(sql);
		    
		    HttpSession s = request.getSession();
		    
		    if (dados.next())  {
		    	// Definindo os valores de sessao
				s.setAttribute("autenticado", Boolean.TRUE);
				s.setAttribute("invalido", Boolean.FALSE);
				s.setAttribute("cpf", dados.getString("cpf"));
				s.setAttribute("nome", dados.getString("nome"));
				s.setAttribute("login", login);
		    } else {
				// Zerando as variaveis de sessao
		    	s.setAttribute("invalido", Boolean.TRUE);
				s.setAttribute("cpf", "");
				s.setAttribute("nome", "");
				s.setAttribute("login", "");
		    }
		} catch (SQLException ex) {
			Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
		}
	
		response.sendRedirect("exercicio3.jsp");
    }
}
