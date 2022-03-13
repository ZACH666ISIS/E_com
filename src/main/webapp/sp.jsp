<%@page import="javax.naming.Context"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="Metier.*,web.*,java.util.*"%>
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700" rel="stylesheet">

    <title> Produit</title>

    <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <link rel="stylesheet" href="../assets/fontawesome/css/all.css" />
    <link rel="stylesheet" href="../assets/css/tooplate-main.css">
    <link rel="stylesheet" href="../assets/css/owl.css">
        <link rel="stylesheet" href="../assets/css/dhs.css">
    
    <link rel="stylesheet" href="../assets/css/flex-slider.css">
	<script src="../assets/fontawesome/js/all.js"></script>

  </head>

  <body>
    
    <!-- Pre Header -->
    <div id="pre-header">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <span>Bienvenu dans notre site <em>E-ParaPharmacie</em></span>
          </div>
        </div>
      </div>
    </div>
<%
 client c = (client) session.getAttribute("log");
if(c==null)response.sendRedirect("../login");
%>
    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark static-top">
      <div class="container">
        <a class="navbar-brand" href="#"><img src="../assets/images/logo.svg" alt=""></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item active">
              <a class="nav-link" href="../produits">Products
                <span class="sr-only">(current)</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="../home">Home</a>
            </li> 
            <li class="nav-item">
              <a class="nav-link" href="../about">A propos</a>
            </li>
           
          </ul>
        </div>
		  <div class="rig">
		<a href="../out" ><span>Se déconnecter</span> 
				<i class="fa fa-user fa-xl" ></i>
         </a>             
		<a href="../pannier" >
		       <span>Panier</span>
               <i class="fa-solid fa-cart-shopping fa-xl"></i>
		</a> 


          

   </div>
      </div>
    </nav>

    <!-- Page Content -->
    <!-- Single Starts Here -->
    <div class="single-product">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="section-heading">
              <div class="line-dec"></div>
              <h1>Produit</h1>
          <% 
     oAff o=(oAff)session.getAttribute("produit");
     produit p =o.getp();
     if(p==null){%> <jsp:forward page="error404"></jsp:forward>   <%}
     pageContext.setAttribute("prod", p);  
     %> 
     <c:set var="pro" value="${prod}" />
     
     <h4>${pro.libelle}</h4>
     <h6>${pro.prix} Dhs </h6>
      
            </div>
          </div>
          <div class="col-md-6">
            <div class="product-slider">
              <div id="slider" class="flexslider">
                
                    <img style="height: 259px;width: 331px;border-radius: 25px;margin-left: 66px;" src="../assets/images/${pro.img}" />
                
              </div>
            </div>
          </div>
          <div class="col-md-6">
            <div class="right-content">
    
            
              <p>Proin commodo, diam a ultricies sagittis, erat odio rhoncus metus, eu feugiat lorem lacus aliquet arcu. Curabitur in gravida nisi, non placerat nibh. Praesent sit amet diam ultrices, commodo turpis id, dignissim leo. Suspendisse mauris massa, porttitor non fermentum vel, ullamcorper scelerisque velit. </p>
          <span>${pro.qte} left on stock</span>
              <form  method="post">
                <label for="quantity">Quantity:</label>
                <input type="hidden" name="idPro" value="${pro.idArticle}">
                <input name="qte" type="quantity" class="quantity-text" id="quantity" value="1">
                <input type="submit" class="button" value="Ajouter au panier!">
              </form>
              <div class="down-content">
                <div class="categories">
                  <h6>Category: <span><a href="#">Pants</a>,<a href="#">Women</a>,<a href="#">Lifestyle</a></span></h6>
                </div>
                <div class="share">
                  <h6>Share: <span><a href="#"><i class="fa fa-facebook"></i></a><a href="#"><i class="fa fa-linkedin"></i></a><a href="#"><i class="fa fa-twitter"></i></a></span></h6>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Single Page Ends Here -->


    <!-- Similar Starts Here -->
    <div class="featured-items">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="section-heading">
              <div class="line-dec"></div>
              <h1>Vous pouvez aimer</h1>
            </div>
          </div>
          <div class="col-md-12">
            <div class="owl-carousel owl-theme">
 <%
 
 List<produit> l;
	l=new ArrayList();
		pAff pip = new pAff();
		cherchepro cy=new cherchepro();
		l=cy.m();
		pip.setp(l);
		pageContext.setAttribute("st", pip);
 
 %>           
<c:forEach  items="${st.p}"  var="px" >           
              <a href="single-product.html">
                <div class="featured-item">
                  <img src="../assets/images/${px.img}" alt="Item 1">
                  <h4>${px.libelle}</h4>
                  <h6>${px.prix} Dhs</h6>
                </div>
              </a>
              
</c:forEach>               
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Similar Ends Here -->


  <div class="subscribe-form">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="section-heading">
              <div class="line-dec"></div>
              <h1>Notre nouveutés</h1>
            </div>
          </div>
          <div class="col-md-8 offset-md-2">
            <div class="main-content">
              <p>Soyer le premier qui recoit nos promos.</p>
              <div class="container">
                <form id="subscribe" action="" method="post">
                  <div class="row">
                    <div class="col-md-7">
                      <fieldset>
                        <input name="email" type="text" class="form-control" id="email" 
                        onfocus="if(this.value == 'Your Email...') { this.value = ''; }" 
                    	onBlur="if(this.value == '') { this.value = 'Your Email...';}"
                    	value="Your Email..." required="">
                      </fieldset>
                    </div>
                    <div class="col-md-5">
                      <fieldset>
                        <button type="submit" id="form-submit" class="button">Envoyer</button>
                      </fieldset>
                    </div>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Subscribe Form Ends Here -->


    
    <!-- Footer Starts Here -->
    <div class="footer">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="logo">
              <img src="../assets/images/logo.svg" alt="">
            </div>
          </div>
          <div class="col-md-12">
            <div class="footer-menu">
              <ul>
                <li><a href="#">Home</a></li>
                <li><a href="#">Passer une commande ?</a></li>
                <li><a href="#contact">Contact Us</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md-12">
            <div class="social-icons">
              <ul>
                <li><a href="#" id="fb" ><i class="fa-brands fa-facebook"></i></a></li>
                <li><a href="#" id="whats" ><i class="fa-brands fa-whatsapp"></i></a></li>
                <li><a href="#" id="ig" ><i class="fa-brands fa-instagram"></i></a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Footer Ends Here -->


    <!-- Sub Footer Starts Here -->
    <div class="sub-footer">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="copyright-text">
              <p>Copyright &copy; 2022 Company Name 
                
                - Design:zzach</p>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Sub Footer Ends Here -->


    <!-- Bootstrap core JavaScript -->
    <script src="../vendor/jquery/jquery.min.js"></script>
    <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>


    <!-- Additional Scripts -->
    <script src="../assets/js/custom.js"></script>
    <script src="../assets/js/owl.js"></script>


    <script language = "text/Javascript"> 
      cleared[0] = cleared[1] = cleared[2] = 0; //set a cleared flag for each field
      function clearField(t){                   //declaring the array outside of the
      if(! cleared[t.id]){                      // function makes it static and global
          cleared[t.id] = 1;  // you could use true and false, but that's more typing
          t.value='';         // with more chance of typos
          t.style.color='#fff';
          }
      }
    </script>


  </body>

</html>
