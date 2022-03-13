package web;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import Metier.AjoutCmd;
import Metier.client;
import Metier.panier;

/**
 * Servlet implementation class pannierS
 */
public class pannierS extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		HttpSession session=request.getSession();
		client c = new client();
		if(session.getAttribute("log")==null)response.sendRedirect("login");
		else{
			c=(client) session.getAttribute("log");
			if(c.getNom()==null)response.sendRedirect("login");
			else request.getRequestDispatcher("pannier.jsp").forward(request, response);
		}
       
		
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		HttpSession sos=request.getSession();
		client cli =(client) sos.getAttribute("log");
		int idCli=cli.getId();
		String adresse = request.getParameter("adresse")+" "+request.getParameter("ville")+" "+request.getParameter("zip");
		String cin=request.getParameter("cin");
		AjoutCmd cmd = new AjoutCmd();
		wpan mp = new wpan();
		List<panier> lwp= new ArrayList();
		mp=(wpan)sos.getAttribute("pannier");
		lwp=mp.getprod();
		try {
			if(lwp !=null) for(panier e:lwp) cmd.cmdprd(idCli, e.getidArticle(), e.getqte());
	        cmd.commander(idCli, adresse, cin);
			response.sendRedirect("home");

		}catch(Exception e) {
			response.sendRedirect("error404");
		}
		
		
		
		
	}

}
