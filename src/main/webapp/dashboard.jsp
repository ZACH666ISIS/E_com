<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="Metier.*,web.*"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
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
<body id="bb" >
<div class="container">
<c:set value="${alog.ad}" var="a" />
      <p id="head">Dashboard E-Parapharmacie</p>
	  <p id="bmsg">Id Admin: ${a.id}</p>

</div>
<div id="dsh" class="container">
<div class="row">

<div class="col-lg-3">
<a class="btn btn-secondary" href="client">Clients</a></button>
</div>


<div class="col-lg-3">
<a class="btn btn-secondary" href="article">Ajouter Produits</a></button>
</div>
<div class="col-lg-3">
<a class="btn btn-secondary" href="command">Commandes</a></button>
</div>
<div class="col-lg-3">
<a class="btn btn-danger" href="out" >Déconnexion</a></button>
</div>
</div>
</div>





</body>
</html>