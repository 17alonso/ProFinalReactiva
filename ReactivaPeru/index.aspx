<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="ReactivaPeru.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<!-- Mobile Specific Meta -->
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
		<!-- Favicon-->
		<link rel="shortcut icon" href="img/fav.png"/>
		<!-- Author Meta -->
		<meta name="author" content="colorlib"/>
		<!-- Meta Description -->
		<meta name="description" content=""/>
		<!-- Meta Keyword -->
		<meta name="keywords" content=""/>
		<!-- meta character set -->
		<meta charset="UTF-8"/>
		<!-- Site Title -->
		<title>Macro</title>

		<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet"/> 
			<!--
			CSS
			============================================= -->
			<link rel="stylesheet" href="css/linearicons.css"/>
			<link rel="stylesheet" href="css/font-awesome.min.css"/>
			<link rel="stylesheet" href="css/bootstrap.css"/>
			<link rel="stylesheet" href="css/magnific-popup.css"/>
			<link rel="stylesheet" href="css/jquery-ui.css"/>				
			<link rel="stylesheet" href="css/nice-select.css"/>							
			<link rel="stylesheet" href="css/animate.min.css"/>
			<link rel="stylesheet" href="css/owl.carousel.css"/>				
			<link rel="stylesheet" href="css/main.css"/>
</head>
<body>
    <header id="header">
				<div class="header-top">
					<div class="container">
				  		<div class="row justify-content-center">
						      <div id="logo">
						        <a href="index.aspx"><img src="img/logo.png" alt="" title="" /></a>
						      </div>
				  		</div>			  					
					</div>
				</div>
				<div class="container main-menu">
					<div class="row align-items-center justify-content-center d-flex">			
				      <nav id="nav-menu-container">
				        <ul class="nav-menu">
				          <li><a href="index.aspx">Inicio</a></li>
				          <li><a href="about.html">Nosotros</a></li>
						 
						  <li class="menu-has-children"><a href="#">Productos</a>
				            <ul id="idUlProducto" runat="server">
				             
				              <!-- #Aqui esta todos los demas li -->	
				            </ul>
				          </li>
						  <li class="menu-has-children"><a href="#">Empresas</a>
				            <ul id="idUlEmp" runat="server">
				              <!-- #Aqui esta todos los demas li -->	
				            </ul>	

				          </li>
				        </ul>
				      </nav><!-- #nav-menu-container -->					      		  
					</div>
				</div>
			</header><!-- #header -->
			
			<!-- start banner Area -->
			<section class="banner-area">		
				<div class="container">
					<div class="row fullscreen align-items-center justify-content-between">
						<div class="col-lg-12 banner-content">
							<h6 class="text-white"> Arte popular y costumbrista del Perú </h6>
							<h1 class="text-white">Reactiva Peru</h1>
							<p class="text-white">
								La mejor pagina para promocionar tus productos. Registra tu empresa y da a conocer tus productos a todo el mundo!.
							</p>
							
							<a href="Catalogo.aspx" target="_blank" class="primary-btn text-uppercase">Catálogo</a>
							<br/><br/>
							<p class="text-white">
							Tienes una empresa y quieres ofrecer tus productos?
							</p>
							<a href="RegistrarEmpresa.aspx" target="_blank" class="primary-btn text-uppercase">Registra tu Empresa!</a>
						</div>
					</div>
				</div>					
			</section>
			<!-- End banner Area -->

			<!-- Start home-about Area -->
			<section class="home-about-area section-gap">
				<div class="container">
					<div class="row align-items-center">
						<div class="col-lg-6 home-about-left">
							<h1>Bienvenido</h1>
							<p>
								EL objetivo de esta pagina es apoyar al comerciante peruano, registrando sus productos a la venta para que tengan un mayor alcance. Expandamos nuestra cultura al mundo gracias al talento de nuestros artesanos peruanos.
							</p>
							<p>Encuentranos tambien en Facebook!</p>
							<a href="https://www.facebook.com/Creper%C3%ADa-Backpacker-La-BoM-227566744035224/" target="_blank" class="primary-btn">Visitar Facebook	</a>
						</div>
						<div class="col-lg-6 home-about-right">
							<img class="img-fluid" src="img/inicio-img.jpg" alt=""/>
						</div>
					</div>
				</div>	
			</section>
			<!-- End home-about Area -->			

			<!-- start footer Area -->		
			<footer class="footer-area">
				<div class="footer-widget-wrap">
					<div class="container">
						<div class="row section-gap">
							<div class="col-lg-4  col-md-6 col-sm-6">
								<div class="single-footer-widget">
									<h4>Abierto de</h4>
									<ul class="hr-list">
										<li class="d-flex justify-content-between">
											<span> Martes a Domingo
											</span> <span>De 8:00-22:00</span>
										</li>
																												
									</ul>
								</div>
							</div>
							<div class="col-lg-4  col-md-6 col-sm-6">
								<div class="single-footer-widget">
									<h4>Contactanos</h4>
									<p>
										Carmen Alto 283 (2,18 km)
										08003 Cuzco, Cusco, Peru
									</p>
									<p class="number">
										977 783 333
									</p>
								</div>
							</div>						
							<div class="col-lg-4  col-md-6 col-sm-6">
								<div class="single-footer-widget">
									<h4>Hoja informativa</h4>
									<p>Puedes confiar en nosotros. solo enviamos ofertas promocionales, no un solo spam.</p>
									<div class="d-flex flex-row" id="mc_embed_signup">


									</div>
								</div>
							</div>						
						</div>					
					</div>					
				</div>
				<div class="footer-bottom-wrap">
					<div class="container">
						<div class="row footer-bottom d-flex justify-content-between align-items-center">
							<p class="col-lg-8 col-mdcol-sm-6 -6 footer-text m-0"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
							<ul class="col-lg-4 col-mdcol-sm-6 -6 social-icons text-right">
	                            <li><a href="https://www.facebook.com/Creper%C3%ADa-Backpacker-La-BoM-227566744035224/?ref=br_rs"><i class="fa fa-facebook"></i></a></li>
        
	                        </ul>
						</div>						
					</div>
				</div>
			</footer>
			<!-- End footer Area -->	

			<script src="js/vendor/jquery-2.2.4.min.js"></script>
			<script src="js/popper.min.js"></script>
			<script src="js/vendor/bootstrap.min.js"></script>			
			<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBhOdIF3Y9382fqJYt5I_sswSrEw5eihAA"></script>		
 			<script src="js/jquery-ui.js"></script>					
  			<script src="js/easing.min.js"></script>			
			<script src="js/hoverIntent.js"></script>
			<script src="js/superfish.min.js"></script>	
			<script src="js/jquery.ajaxchimp.min.js"></script>
			<script src="js/jquery.magnific-popup.min.js"></script>						
			<script src="js/jquery.nice-select.min.js"></script>					
			<script src="js/owl.carousel.min.js"></script>			
            <script src="js/isotope.pkgd.min.js"></script>								
			<script src="js/mail-script.js"></script>	
			<script src="js/main.js"></script>	
</body>
</html>
