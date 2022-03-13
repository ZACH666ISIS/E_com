package web;

import jakarta.servlet.ServletException;
import Metier.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;


public class wgcmd extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession ses = request.getSession();
		List<empcmd> l=new ArrayList();
		AjoutCmd cmd = new AjoutCmd();
		l=cmd.chercher();
		gcm con = new gcm();
		con.setlec(l);
		ses.setAttribute("listcmd", con);
		request.getRequestDispatcher("g_cmd.jsp").forward(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	      AjoutCmd set = new AjoutCmd();
	       int id;
      if(request.getParameter("ac")!=null) {
   	       id =	Integer.parseInt(request.getParameter("ac"));
           set.verif(id,1);
      }
      else {
    	  id =	Integer.parseInt(request.getParameter("ref"));
    	  set.verif(id,0);
      
      }
		response.sendRedirect("command");

	}

}
