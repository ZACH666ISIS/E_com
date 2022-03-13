package web;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebInitParam;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import Metier.admin;
import Metier.chechAdm;


public class AdminLog extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("cpannel.jsp").forward(request, response);
	
	
	}


	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession ses=request.getSession();
		String mail= request.getParameter("email");
		String pass= request.getParameter("pass");
		chechAdm ca= new chechAdm();
		admin a = new admin();
		a= ca.ex(mail, pass);
		wadmin ad = new wadmin();
		ad.setad(a);
		if(a!=null) {
			ses.setAttribute("alog", ad);
			response.sendRedirect("dashboard");
		}
		request.getRequestDispatcher("erreur.jsp").include(request, response);
		request.getRequestDispatcher("cpannel.jsp").include(request, response);
		
	}

}
