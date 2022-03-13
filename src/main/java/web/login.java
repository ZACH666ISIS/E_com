package web;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

import Metier.chechCli;
import Metier.client;
import database.Connexion;


public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("signin.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		String mail = request.getParameter("mail");
		String pass = request.getParameter("pass");
		pass=pass.replace("\'", "\\'");
		pass=pass.replace("\"", "\\'");
		chechCli c= new chechCli();
		client cli;
		cli=c.ex(mail, pass);
		if(cli==null) {
			 request.getRequestDispatcher("erreur.jsp").include(request, response);
			 request.getRequestDispatcher("signin.jsp").include(request, response);
			 
						}
		else {
			HttpSession ses = request.getSession();
			ses.setAttribute("log", cli);
			response.sendRedirect("produits");
		}
		
	}

}
