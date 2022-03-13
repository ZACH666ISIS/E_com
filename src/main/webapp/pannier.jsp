<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="Metier.*,web.*,java.util.*"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
    
<!doctype html>
<html>
 <head>
 <meta charset='utf-8'>
 <meta name='viewport' content='width=device-width, initial-scale=1'>
 <title>Pannier</title>
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="assets/fontawesome/css/all.css" />
    <link rel="stylesheet" href="assets/css/tooplate-main.css">
    <link rel="stylesheet" href="assets/css/owl.css">
    <link rel="stylesheet" href="assets/css/flex-slider.css">
	<script src="assets/fontawesome/js/all.js"></script>
                                <style>body {
    background-color: #eee
}

.shop {
    font-size: 10px
}

.space {
    letter-spacing: 0.8px !important
}

.second a:hover {
    color: rgb(92, 92, 92)
}

.active-2 {
    color: rgb(92, 92, 92)
}

.breadcrumb>li+li:before {
    content: "" !important
}

.breadcrumb {
    padding: 0px;
    font-size: 10px;
    color: #aaa !important
}

.first {
    background-color: white
}

a {
    text-decoration: none !important;
    color: #aaa
}

.btn-lg,
.form-control-sm:focus,
.form-control-sm:active,
a:focus,
a:active {
    outline: none !important;
    box-shadow: none !important
}

.form-control-sm:focus {
    border: 1.5px solid #59b251
}

.btn-group-lg>.btn,
.btn-lg {
    padding: .5rem 0.1rem;
    font-size: 1rem;
    border-radius: 0;
    color: white !important;
    background-color: #59b251;
    height: 2.8rem !important;
    border-radius: 0.2rem !important
}

.btn-group-lg>.btn:hover,
.btn-lg:hover {
    background-color: #26A69A
}

.btn-outline-primary {
    background-color: #fff !important;
    color: #59b251 !important;
    border-radius: 0.2rem !important;
    border: 1px solid #59b251
}

.btn-outline-primary:hover {
    background-color: #59b251 !important;
    color: #fff !important;
    border: 1px solid #59b251
}

.card-2 {
    margin-top: 40px !important
}

.card-header {
    background-color: #fff;
    border-bottom: 0px solid #aaaa !important
}

p {
    font-size: 13px
}

.small {
    font-size: 9px !important
}

.form-control-sm {
    height: calc(2.2em + .5rem + 2px);
    font-size: .875rem;
    line-height: 1.5;
    border-radius: 0
}

.cursor-pointer {
    cursor: pointer
}

.boxed {
    padding: 0px 8px 0 8px;
    background-color: #59b251;
    color: white
}

.boxed-1 {
    padding: 0px 8px 0 8px;
    color: black !important;
    border: 1px solid #aaaa
}

.bell {
    opacity: 0.5;
    cursor: pointer
}

@media (max-width: 767px) {
    .breadcrumb-item+.breadcrumb-item {
        padding-left: 0
    }
}</style>
</head>

<body oncontextmenu="return false" class="snippet-body">
   <div id="pre-header">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <span>Bienvenu dans notre site <em>E-ParaPharmacie</em></span>
          </div>
        </div>
      </div>
    </div>

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark static-top">
      <div class="container">
        <a class="navbar-brand" href="#"><img src="assets/images/logo.svg" alt=""></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item ">
              <a class="nav-link" href="home">Home
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="produits">Produits</a>
            </li> 
			<li class="nav-item">
              <a class="nav-link" href="signup">Inscrivez-vous</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="about">A propos</a>
            </li>
           
          </ul>
        </div>
		  <div class="rig">
		<a href="out">
				<span>Se déconnecter</span>
				<svg class="svg-inline--fa fa-user fa-xl" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="user" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" data-fa-i2svg=""><path fill="currentColor" d="M224 256c70.7 0 128-57.31 128-128s-57.3-128-128-128C153.3 0 96 57.31 96 128S153.3 256 224 256zM274.7 304H173.3C77.61 304 0 381.6 0 477.3c0 19.14 15.52 34.67 34.66 34.67h378.7C432.5 512 448 496.5 448 477.3C448 381.6 370.4 304 274.7 304z"></path></svg><!-- <i class="fa fa-user fa-xl"></i> Font Awesome fontawesome.com -->
         </a>             
	

   </div>
      </div>
    </nav> 
   
   
   
   <div class=" container-fluid my-2">
    <div class="row justify-content-center ">
        <div class="col-xl-10">
            <div class="card shadow-lg ">
                
                
                <div class="row justify-content-around">
                    <div class="col-md-5">
                        <div class="card border-0">
                            <div class="card-header pb-0">
                                <h2 class="card-title space ">Confirmation des informations</h2>
                                <p class="card-text text-muted mt-4 space">Vos Information</p>
                                <hr class="my-0">
                            </div>
                            <c:set var="cl" value="${log}" />
                            <div class="card-body">
                                <div class="row justify-content-between">
                                    <div class="col-auto mt-0">
                                        <p><b>Mr/Mme : <c:out value="${cl.nom}" /> <c:out value="${cl.prenom}" /> </b></p>
                                    </div>
                                    <div class="col-auto">
                                        <p><b>Email : <c:out value="${cl.email}" /></b> </p>
                                    </div>
									<div class="col-auto">
                                        <p><b>Telephone : <c:out value="${cl.telephone}" /></b> </p>
                                    </div>
                                </div>
                                <div class="row mt-4">
                                    <div class="col">
                                        <p class="text-muted mb-2">Information Livraison</p>
                                        <hr class="mt-0">
                                    </div>
                                </div>
                                <form method="post">
        <div class="form-group"> <label for="NAME" class="small text-muted mb-1"></label>Adresse<input type="text" class="form-control form-control-sm" name="adresse" id="NAME" aria-describedby="helpId" placeholder="adresse de livraison"> </div>
        <div class="form-group"> <label for="NAME" class="small text-muted mb-1">Ville</label> <input type="text" class="form-control form-control-sm" name="ville" id="NAME" aria-describedby="helpId" placeholder="ville livraison"> </div>
                                <div class="row no-gutters">
                                    <div class="col-sm-6 pr-sm-2">
                                        <div class="form-group"> <label for="NAME" class="small text-muted mb-1">Code Postale</label> <input type="text" class="form-control form-control-sm" name="zip" id="NAME" aria-describedby="helpId" placeholder="XXXXX"> </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group"> <label for="NAME" class="small text-muted mb-1">CIN</label>
									<input type="text" class="form-control form-control-sm" name="cin" id="NAME" aria-describedby="helpId" placeholder="XX12345"> </div>
                                    </div>
                                </div>
                                <div class="row mb-md-5">
                                    <div class="col"> <button type="submit" name="" id="" class="btn btn-lg btn-block ">Commander Maintenant</button> </div>
                                </div>
                               </form>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-5">
                        <div class="card border-0 ">
                            <div class="card-header card-2">
                                <p class="card-text text-muted mt-md-4 mb-2 space">Votre pannier </p>
                                <hr class="my-2">
                            </div>
                            <div class="card-body pt-0">
                            <c:set var="t" value="${0}" />
<c:forEach items="${pannier.prod}" var="jo">
                               <div class="row justify-content-between">
                                    <div class="col-auto col-md-7">
                                      <div class="media flex-column flex-sm-row"> <img class=" img-fluid" src="assets/images/${jo.img}" width="62" height="62">
                                            <div class="media-body my-auto">
                                                <div class="row ">
                                                    <div class="col-auto">
                                                        <p class="mb-0"><b>${jo.libelle}</b></p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class=" pl-0 flex-sm-col col-auto my-auto">
                                        <p class="boxed-1">${jo.qte}</p>
                                    </div>
                                    <div class=" pl-0 flex-sm-col col-auto my-auto ">
                                        <p><b>${jo.prix}</b></p>
                                    </div>
                                </div>
                                <c:set var="t" value="${t+(jo.prix*jo.qte)}" />
</c:forEach> 
						    <hr class="my-2">
                                 <div class="row ">
                                    <div class="col">
                                        <div class="row justify-content-between">
                                            <div class="col-4">
                                                <p class="mb-1"><b>Subtotal</b></p>
                                            </div>
                                            <div class="flex-sm-col col-auto">
                                                <p class="mb-1"><b><c:out value="${t}" /></b></p>
                                            </div>
                                        </div>
                                        <div class="row justify-content-between">
                                            <div class="col">
                                                <p class="mb-1"><b>Shipping</b></p>
                                            </div>
                                            <div class="flex-sm-col col-auto">
                                                <p class="mb-1"><b><c:out value="${40}" /></b></p>
                                            </div>
                                        </div>
                                        <div class="row justify-content-between">
                                            <div class="col-4">
                                                <p><b>Total</b></p>
                                            </div>
                                            <div class="flex-sm-col col-auto">
                                                <p class="mb-1"><b><c:out value="${t+40}" /></b></p>
                                            </div>
                                        </div>
                                        <hr class="my-0">
                                    </div>
                                </div>
                                <div class="row mb-5 mt-4 ">
                                    <div class="col-md-7 col-lg-6 mx-auto"><button type="button" onClick="window.location.replace('produits');" class="btn btn-block btn-outline-primary btn-lg">Continuer votre achat</button></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
     <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>


    <!-- Additional Scripts -->
    <script src="assets/js/custom.js"></script>
    <script src="assets/js/owl.js"></script>

                                
   </body>
</html>