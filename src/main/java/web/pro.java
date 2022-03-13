package web;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Metier.cherchepro;
import Metier.chpropn;
import Metier.onepro;
import Metier.panier;
import Metier.produit;
import database.*;

public class pro extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path = request.getRequestURI();
		String[] tb=path.split("/");
		
		if(tb.length!=4)response.sendRedirect("error404");
		else {
			HttpSession ses = request.getSession();
			oAff f=new oAff();
			onepro po = new onepro();
			produit p = new produit();
			p=po.cher(tb[3]);
			f.setp(p);
			ses.setAttribute("produit", f);
			request.getRequestDispatcher("../sp.jsp").forward(request, response);	

		}
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		HttpSession se=request.getSession();
		wpan mp = new wpan();
		List<panier> lwp= new ArrayList();
		if(se.getAttribute("pannier")!=null){
			mp=(wpan)se.getAttribute("pannier");	
			lwp=mp.getprod();
		}
		int idpr = Integer.parseInt(request.getParameter("idPro"));
	    int qte=Integer.parseInt(request.getParameter("qte"));
		panier po=new panier();
		chpropn cpr = new chpropn();
		po=cpr.cher(idpr,qte);
		lwp.add(po);
		mp.setprod(lwp);
		se.setAttribute("pannier", mp);
		request.getRequestDispatcher("../sp.jsp").forward(request, response);

}

}
