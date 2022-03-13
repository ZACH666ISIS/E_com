<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="Metier.*"%>
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700" rel="stylesheet">

    <title>Parapharmacie</title>

    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <link rel="stylesheet" href="assets/fontawesome/css/all.css" />
    <link rel="stylesheet" href="assets/css/tooplate-main.css">
    <link rel="stylesheet" href="assets/css/owl.css">
    <link rel="stylesheet" href="assets/css/flex-slider.css">
	<script src="assets/fontawesome/js/all.js"></script>

  </head>

  <body>
 <%
 client c = (client) session.getAttribute("log");
if(c!=null)out.println("<script >alert('vous etes deja connecter vous voulez changer session ?');</script>");
%>   
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
              <a class="nav-link" href="produits">Products</a>
            </li> 
			<li class="nav-item">
              <a class="nav-link" href="inscription">Inscrivez-vous</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="about">A propos</a>
            </li>
           
          </ul>
        </div>
		  <div class="rig">
		<a href="login" >
				<span>Se connecter</span>
				<i class="fa fa-user fa-xl" ></i>
         </a>             
		<a href="pannier" >
		       <span>Panier</span>
               <i class="fa-solid fa-cart-shopping fa-xl"></i>
		</a> 


          

   </div>
      </div>
    </nav>

    <!-- Page Content -->
    <!-- About Page Starts Here -->
    <div class="contact-page">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="section-heading">
              <div class="line-dec"></div>
              <h1>S'identifier</h1>
            </div>
          </div>
          <div class="col-md-12">
            <div class="right-content">
              <div class="container">
                <form id="contact" action="login" method="post">
                  <div class="row">
      
                    <div class="col-md-6">
                      <fieldset>
                        <input name="mail" type="text" class="form-control" id="subject" placeholder="Votre email..." required="">
                      </fieldset>
                    </div>
					<div class="col-md-6" >&nbsp;</div>
					<div class="col-md-6">
                      <fieldset>
                        <input name="pass" type="password" class="form-control" id="password" placeholder="Votre mot de passe..." required="">
                      </fieldset>
                    </div>
					<div class="col-md-6" >&nbsp;</div>
                    <div class="col-md-12">
                      <fieldset>
                        <button type="submit" id="form-submit" class="button">Connexion</button>
                      </fieldset>
                    </div>
                    <div class="col-md-12">
                      <div class="share">
                        <h6>Nos reseau: <span><a href="#" id="fb" ><i class="fa-brands fa-facebook"></i></a><a href="#" id="whats" ><i class="fa-brands fa-whatsapp"></i></a><a href="#" id="ig" ><i class="fa-brands fa-instagram"></i></span></h6>
                      </div>
                    </div>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- About Page Ends Here -->

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
              <img src="assets/images/logo.svg" alt="">
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
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>


    <!-- Additional Scripts -->
    <script src="assets/js/custom.js"></script>
    <script src="assets/js/owl.js"></script>


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
