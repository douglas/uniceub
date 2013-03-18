/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.douglas.cadastro;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "Logout", urlPatterns = {"/Logout"})
public class Logout extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
	    throws ServletException, IOException {
	HttpSession s = request.getSession();
    s.setAttribute("autenticado", "nao");
	s.setAttribute("cpf", "");
	s.setAttribute("nome", "");
	response.sendRedirect("exercicio3.jsp");
	
    }
}
