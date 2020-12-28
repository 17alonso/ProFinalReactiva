<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Imagenes.aspx.cs" Inherits="ReactivaPeru.admin.Imagenes" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
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


			<!-- start banner Area -->
			<section class="banner-area relative blog-home-banner" id="home">	
				<div class="overlay overlay-bg"></div>
				<div class="container">				
					<div class="row d-flex align-items-center justify-content-center">
						<div class="about-content blog-header-content col-lg-12">
							<h1 class="text-white">
								Bienvenido al Panel de Administración		
							</h1>	
							<p class="text-white">
								Aqui podra administrar todo el contenido de su Empresa
							</p>


						</div>	
					</div>
				</div>
			</section>
			<!-- End banner Area -->				  

			<!-- Start top-category-widget Area -->
			<section class="top-category-widget-area pt-90 pb-90 ">
				<div class="container">
					<div class="row">		
						<div class="col-lg-4">
							<div class="single-cat-widget">
								<div class="content relative">
									<div class="overlay overlay-bg"></div>
								    <a href="Imagenes.aspx" >
								      <div class="thumb">
								  		 <img class="content-image img-fluid d-block mx-auto" src="img/blog/cat-widget1.jpg" alt=""/>
								  	  </div>
								      <div class="content-details">
								        <h4 class="content-title mx-auto text-uppercase">Mis Imagenes</h4>
								        <span></span>								        
								        <p>Imágenes para los Productos</p>
								      </div>
								    </a>
								</div>
							</div>
						</div>
						<div class="col-lg-4">
							<div class="single-cat-widget">
								<div class="content relative">
									<div class="overlay overlay-bg"></div>
								    <a href="Productos.aspx">
								      <div class="thumb">
								  		 <img class="content-image img-fluid d-block mx-auto" src="img/blog/cat-widget2.jpg" alt=""*/>
								  	  </div>
								      <div class="content-details">
								        <h4 class="content-title mx-auto text-uppercase">Mis productos</h4>
								        <span></span>								        
								        <p>Mantenimiento de mis productos</p>
								      </div>
								    </a>
								</div>
							</div>
						</div>
						<div class="col-lg-4">
							<div class="single-cat-widget">
								<div class="content relative">
									<div class="overlay overlay-bg"></div>
								    <a  href="Perfil.aspx">
								      <div class="thumb">
								  		 <img class="content-image img-fluid d-block mx-auto" src="img/blog/cat-widget3.jpg" alt=""/>
								  	  </div>
								      <div class="content-details">
								        <h4 class="content-title mx-auto text-uppercase">Perfil</h4>
								        <span></span>
								        <p>Datos de la Empresa y Vendedor</p>
								      </div>
								    </a>
								</div>
							</div>
						</div>												
					</div>
				</div>	
			</section>
			<!-- End top-category-widget Area -->
			
			<!-- Start post-content Area -->
			<form runat="server">

			<section class="post-content-area">
				<div class="container">
					<div class="row">
						<div class="col-lg-8 posts-list">	
							<h1>Mis Imagenes</h1>
							<br/>
							<div class="single-post row">
								<br/><br/>
						

									<asp:GridView runat="server" ID="gvMisImagenes" class="table table-striped">
										
									</asp:GridView> 
							</div>

						</div>



						<div class="col-lg-4 sidebar-widgets">
							<div class="widget-wrap">
							
								
								<div class="single-sidebar-widget popular-post-widget">
									<h4 class="popular-title">Opciones</h4>
									<div class="popular-post-list">
										<div class="single-post-list d-flex flex-row align-items-center">
											<div class="thumb">
												<img class="img-fluid" src="img/blog/pp1.jpg" alt=""/>
											</div>
											<div class="details">
												<a href="#"><h6>Modificar datos del Vendedor</h6></a>
											</div>
										</div>
										<div class="single-post-list d-flex flex-row align-items-center">
											<div class="thumb">
												<img class="img-fluid" src="img/blog/pp1.jpg" alt=""/>
											</div>
											<div class="details">
												<a href="#"><h6>Modificar datos de la Empresa</h6></a>
											</div>
										</div>
										<div class="single-post-list d-flex flex-row align-items-center">
											<div class="thumb">
												<img class="img-fluid" src="img/blog/pp1.jpg" alt=""/>
											</div>
											<div class="details">
												<a href="#"><h6>Cambiar Contraseña</h6></a>
											</div>
										</div>
																							
									</div>
								</div>


														
							</div>
						</div>
					</div>
				</div>	
			</section>
			<!-- End post-content Area -->
			<section class="reservation-area section-gap relative">
				<div class="overlay overlay-bg"></div>
				<div class="container">
					<div class="row justify-content-between align-items-center">
						<div class="col-lg-6 reservation-left">
							<h1 class="text-white">Vista Previa</h1>
                            <asp:Image ID="idimgPreview" Width="600" ImageUrl="https://www.canalipe.tv/sites/default/files/styles/895x490/public/web/noticias/img_main/12-17/12-14-navidad-en-cusco2_1.png?itok=zasfFFBo" runat="server" />
							<asp:Button Text="Visualizar"    runat="server"  class="primary-btn text-uppercase mt-20" id="btnVisualizar" OnClick="btnVisualizar_Click" />

							<!--
							<a href="listaDulce.php" class="primary-btn text-uppercase">Lista Productos</a>
								-->
						</div>
						<div class="col-lg-5 reservation-right">
							<div class="form-wrap text-center" >
								<label >Codigo Imagen:
								</label>
								<asp:TextBox runat="server"  class="form-control" type="text" placeholder="Codigo Imagen:" id="txtCodImag"/>

								<label >Codigo Producto:
								</label>
								<asp:TextBox runat="server"  class="form-control" type="text" placeholder="Codigo Producto" id="txtCodProducto"/>
								<label >Imagen:
								</label>
                                <asp:FileUpload class="form-control" ID="imag" accept=".jpg" runat="server" />

								<label >Titulo:
								</label>
								<asp:TextBox runat="server"  class="form-control" type="text" placeholder="Titulo" id="txtCodTitulo"/> 

								<asp:Button Text="Agregar"    runat="server"  class="btn btn-outline-success" id="btnAgregar" OnClick="BtnAgregar_Click" />
								<asp:Button Text="Eliminar"   runat="server"  class="btn btn-outline-danger" id="btnEliminar" OnClick="btnEliminar_Click" />																				
								<asp:Button Text="Actualizar" runat="server"  class="btn btn-outline-primary" id="btnActualizar" />																				
							</div>
						</div>
					</div>
				</div>	
			</section>
			</form>
			<!-- start footer Area -->		
			<footer class="footer-area">
			
				<div class="footer-bottom-wrap">
					<div class="container">
						<div class="row footer-bottom d-flex justify-content-between align-items-center">
							<p class="col-lg-8 col-mdcol-sm-6 -6 footer-text m-0"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());
</script> All rights reserved | 
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
							<ul class="col-lg-4 col-mdcol-sm-6 -6 social-icons text-right">
	                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
	                                     
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