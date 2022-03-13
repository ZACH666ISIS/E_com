package web;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import Metier.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;


public class op2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession ses = request.getSession();
		pAff p = new pAff();
		List<produit> l=null;
		if(p!=null)l=p.getp();
		cherchepro c=new cherchepro();
		l=c.m();
		p.setp(l);
		ses.setAttribute("store", p);
		request.getRequestDispatcher("produits.jsp").forward(request, response);
	}

}
