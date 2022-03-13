<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="web.*" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head> 
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700" rel="stylesheet">

    <title> Produit</title>

<link href="assets/css/dhs.css" rel="stylesheet">
<link href="vendor/bootstrap/css/bootstrap-grid.css" rel="stylesheet">
<link href="vendor/bootstrap/css/bootstrap-reboot.min.css" rel="stylesheet">
<link href="vendor/bootstrap/css/bootstrap.css" rel="stylesheet">
<script src="vendor/bootstrap/js/bootstrap.bundle.js"></script>
<script src="vendor/bootstrap/js/bootstrap.js"></script>


  </head>
<%
wadmin a = (wadmin) session.getAttribute("alog");
if(a==null)response.sendRedirect("CpLog");
%>
<body id="dhs">
	<div class="container">
	   <table class='table table-hover table-dark'>
	                <tr><td>Id Client</td>
					<td>Id Command</td>
					<td>CIN</td>
					<td>Adresse</td>
					<td>Etat</td>
					
					</tr>		
					<tbody>
	<form method="POST" action="command">
		<tr class='table-success' >
		    
		    <c:forEach items="${listcmd.lec}" var="r" >
			<c:choose>
		<c:when test="${r.etat == 0 }">
		<tr class='table-danger' >
		</c:when>
		<c:otherwise>
	 	<tr class='table-success' >
	 	</c:otherwise>
	 	</c:choose>
		    <td>${r.idClient}</td>
    		<td>${r.idCmd}</td>
			<td>${r.cin}</td>
  		    <td>${r.adrs}</td>
  		<c:choose>
		<c:when test="${r.etat == 0 }">
		<td><button class='btn btn-outline-success' type='submit' name='ac' value='${r.idCmd}'>Accepter</button></td></tr>
		</c:when>
		<c:otherwise>
	 	<td><button class='btn btn-outline-danger'  type='submit' name='ref'  value='${r.idCmd}'>Refuser</button></td></tr>
	 	</c:otherwise>
	 	</c:choose>
	 	
	 	</c:forEach>
		</tbody>
	</form>
	</table>
	
	
</div>
</body>

</html>