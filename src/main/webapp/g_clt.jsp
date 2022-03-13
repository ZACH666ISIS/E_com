<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="web.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head> 
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
<body>
	<div class="container">
	
   <div class="col-lg-12">

	<form method="POST" >
	<table>
	<tr>
	<td id="hu"><label>Enter identité ou mail</label></td>
	<td id="hu"><input name="mc" placeholder="CIN ou id" ></td>
	<td id="hu"><input class="btn btn-primary" type="submit" id="send" value="chercher"></td>
	</tr>
	</table></form>
	</div>
	
	
	
	   <table class='table table-striped table-dark'>
		            <tr><td>Id Client</td>
					<td>Nom</td>
					<td>Prenom</td>
					<td>Email</td>
					<td>Telephone</td>
					<td><center>Supprimer</center></td></tr>
			<form method="post">
			<c:forEach items="${motcle.l}" var="r" >	
					<tr><td>${r.id}</td>
					<td>${r.nom}</td>
					<td>${r.prenom}</td>
					<td>${r.email}</td>
					<td>${r.telephone}</td>
					<td ><center><button id="stb" class="btn btn-danger" type="submit" name="idc" value="${r.id}">X</button></center></td></tr>
			</c:forEach>	
			</form>	
		</table>

</div>
</body>

</html>