package web;

import jakarta.servlet.ServletException;
import Metier.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class inscription
 */
public class inscription extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("signup.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nom,prenom,email,telephone,password;
		nom=request.getParameter("nom");
		prenom=request.getParameter("prenom");
		email=request.getParameter("email");
		telephone=request.getParameter("telephone");
		password=request.getParameter("password");
		ajoutCli cli = new ajoutCli();
        if(cli.ex(nom, prenom, email, password, telephone))response.sendRedirect("produits");
		
	}

}
