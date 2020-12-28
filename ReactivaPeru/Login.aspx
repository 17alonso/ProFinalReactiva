<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ReactivaPeru.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Login V1</title>
	<meta charset="UTF-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="login/login/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="login/login/vendor/bootstrap/css/bootstrap.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="login/login/fonts/font-awesome-4.7.0/css/font-awesome.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="login/login/vendor/animate/animate.css"/>
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="login/login/vendor/css-hamburgers/hamburgers.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="login/login/vendor/select2/select2.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="login/login/css/util.css"/>
	<link rel="stylesheet" type="text/css" href="login/login/css/main.css"/>
<!--===============================================================================================-->
</head>
<body>
    	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-pic js-tilt" data-tilt="">
					<img src="img/logo.png" alt="IMG"/>
				</div>
				<form class="login100-form validate-form" runat="server">
					<span class="login100-form-title">
							Loguearse		
					</span>
					<div class="wrap-input100 validate-input">
						<asp:TextBox runat="server"  class="input100" type="text" name="correo" placeholder="Correo" id="txtCorreo"/> 
					</div>
					<div >
						<asp:TextBox runat="server"  class="input100" type="password" name="correo" placeholder="Contraseña" id="txtPassword"/> 

					</div>	
					<div class="container-login100-form-btn">
                        <asp:Button Text="Login" runat="server" class="login100-form-btn" id="btnIngresar" OnClick="btnIngresar_Click"/>
					</div>					
				</form>
			</div>
		</div>
	</div>	
<!--===============================================================================================-->	
	<script src="login/login/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="login/login/vendor/bootstrap/js/popper.js"></script>
	<script src="login/login/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="login/login/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="login/login/vendor/tilt/tilt.jquery.min.js"></script>
	<script >
		$('.js-tilt').tilt({
			scale: 1.1
		})
    </script>
<!--===============================================================================================-->
	<script src="login/login/js/main.js"></script>
</body>
</html>
