package web;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;

import Metier.ajoutCli;
import Metier.chechCli;
import Metier.client;


public class gclt extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 request.getRequestDispatcher("g_clt.jsp").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession ses= request.getSession();
		response.setContentType("text/html");
		String mc = request.getParameter("mc");
		if(mc!=null) {
		chechCli c= new chechCli();
		List<client> cli;
		cli=c.mc(mc);
		lcli l=new lcli();
		l.setl(cli);
		ses.setAttribute("motcle", l);
		}
		else {
			int ids = Integer.parseInt(request.getParameter("idc"));
			ajoutCli c= new ajoutCli();
			if(c.supp(ids))response.sendRedirect("client");
		}
		doGet(request, response);
		
		
		
		
	}

}
