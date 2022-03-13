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
<body id="bb" >
<center>
<div class="container">
<%
wadmin a = (wadmin) session.getAttribute("alog");
if(a==null)response.sendRedirect("CpLog");
%> 
<c:set value="${alog.ad}" var="a" />

      <p id="head">Ajouter des produits</p>
	  <p id="bmsg">Id Admin:${a.id}<p>
</div>
			<div class="container">
	<div class="col-lg-12">
   </div>
   <div class="col-lg-12">
 
	<form enctype="multipart/form-data" method ="post">
	<table>
	<tr>
	<td><label>Nom produits</label></td>
	<td><input name="titre" placeholder="titre d'article" ></td>
	</tr>
	<tr>
	<td><label>Prix</label></td>
	<td><input name="prix" placeholder="prix d'article" ></td>
	</tr>
	<tr>
	<td><label>Quantite</label></td>
	<td><input name="qte" placeholder="quantite disponible" ></td>
	</tr>
	<tr>
	<td><label>Description</label></td>
	<td><textarea name="desc" placeholder="description" rows="4" cols="50" ></textarea></td>
	</tr>

	<tr>
	<td><label>Couverture</label></td>
	<td><input name="Covimg" type="file" ></td>
	</tr>

	<tr>
	<td><input class="btn btn-primary" type="submit" id="send" value="Envoyer"></td>
	<td><button class="btn btn-default" onclick="window.location('MiniPro/dashbord')">Retour</button></td>
	</tr></table></form></div>
	</div></body></html>