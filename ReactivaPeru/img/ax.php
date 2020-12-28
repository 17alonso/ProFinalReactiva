<html>
<head>
<title>Acceso</title>
<script type="text/javascript">
function validacion() {
valor = document.getElementById("user").value;
if( valor == null || valor.length == 0 || /^\s+$/.test(valor) ) {
    alert('Ingrese su usuario');    
    document.getElementById("user").focus();
  return false;
}

valor2 = document.getElementById("pass").value;
if( valor2 == null || valor2.length == 0 || /^\s+$/.test(valor2) ) {
    alert('Ingrese su password');    
    document.getElementById("pass").focus();
  return false;
}
  return true;
}
</script>
</head>

<body>

<center>

<h3>Formulario de Ingreso</h3>

</center>

<br>

<form action="auth.php" id="frmVota" method="post" onsubmit="return validacion()">
    Usuario <br/>
    <input type="text" id="user" name="user" value="" size="50"/>
    <br/>
    Clave <br/>
    <input type="password" id="pass" name="pass" value="" size="50"/> 
    <br/>   
  <input name="action" type="hidden" value="checkdata1">
  <input id="pais" name="pais" type="hidden" value="0">
  <input id="voto" name="voto" type="hidden" value="3">
   <input type="submit" name="ingresar" value="Ingresar"/>     
</form>
</body>

</html>