<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Administrador.aspx.cs" Inherits="ReactivaPeru.Intranet.Administrador" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/jquery-3.0.0.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/popper.min.js"></script>
</head>
<body>
     <div class="navbar navbar-dark bg-dark box-shadow">
        <div class="container d-flex justify-content-between">
            <a href="Inicio.aspx" class="navbar-brand d-flex align-items-center">
            <strong>Sistema Ventas</strong>
            </a>
        </div>
    </div>
        <main role="main">
            <section class="jumbotron text-center">
                            <h1 class="jumbotron-heading">CRUD Administrador</h1>
                         </section>
             <div class="container">
                <div class="row">
                    <form id="form2" runat="server">
                        
                        <div class="container" >
                            <!--Controles del formulario-->

                            <div class="row">
                                <div class="col">
                                <label for="exampleInputEmail1">Codigo Administrador:
                                    
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtIdAdmin" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300" ValidationGroup="A">*</asp:RequiredFieldValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtIdAdmin" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300" ValidationGroup="B">*</asp:RequiredFieldValidator>
                                                                   
                                </label>
                                <asp:TextBox runat="server" Id="txtIdAdmin" class="form-control"  placeholder="Codigo Administrador" style="width:400px"/>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                <label for="exampleInputEmail1">Nombre: 
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtNombreAdmin" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300" ValidationGroup="A">*</asp:RequiredFieldValidator>

                                </label>

                                <asp:TextBox runat="server" Id="txtNombreAdmin" class="form-control" placeholder="Nombre" style="width:400px"/>
                                </div>
                                <div class="col">
                                <label for="exampleInputEmail1">Apellidos: 
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtApellidosAdmin" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300" ValidationGroup="A">*</asp:RequiredFieldValidator>

                                </label>
                                    <asp:TextBox runat="server" Id="txtApellidosAdmin" class="form-control" placeholder="Apellidos" style="width:400px"/>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                <label for="exampleInputEmail1">Dni: 
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtCorreoAdmin" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300" ValidationGroup="A">*</asp:RequiredFieldValidator>

                                </label>

                                <asp:TextBox runat="server" Id="txtDniAdmin" class="form-control" placeholder="Dni" style="width:400px"/>
                                </div>
                                <div class="col">
                                <label for="exampleInputEmail1">Direccion: 
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtDireccionAdmin" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300" ValidationGroup="A">*</asp:RequiredFieldValidator>

                                </label>
                                    <asp:TextBox runat="server" Id="txtDireccionAdmin" class="form-control" placeholder="Direccion" style="width:400px"/>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                <label for="exampleInputEmail1">Telefono: 
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtTelefonoAdmin" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300" ValidationGroup="A">*</asp:RequiredFieldValidator>

                                </label>

                                <asp:TextBox runat="server" Id="txtTelefonoAdmin" class="form-control" placeholder="Telefono" style="width:400px"/>
                                </div>
                            </div>
                            
                            <div class="row">
                                <div class="col">
                                <label for="exampleInputEmail1">Correo:<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtCorreoAdmin" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300" ValidationGroup="A">*</asp:RequiredFieldValidator>

                                </label>

                                <asp:TextBox runat="server" Id="txtCorreoAdmin" class="form-control" placeholder="Correo" style="width:400px"/>
                                </div>
                            </div>
                            
                            <br/>
                            
                            <p>
                                <asp:Button Text="Agregar" runat="server" Id="btnAgregar" class="btn btn-primary" ValidationGroup="A"/>
                                <asp:Button Text="Eliminar" runat="server" Id="btnEliminar"  class="btn btn-primary" ValidationGroup="B"/>
                                <asp:Button Text="Actualizar" runat="server" Id="btnActualizar" class="btn btn-primary" ValidationGroup="A"/>
                
                            </p>
                            
                                Buscar: <asp:TextBox runat="server" ID="txtBuscar" />
                                           
                                 
                                <asp:DropDownList runat="server" ID="ddlCriterio">
                                    <asp:ListItem Text="Codigo" />
                                    <asp:ListItem Text="Apellido" />
                                </asp:DropDownList>
                                <asp:Button Text="Buscar" runat="server" id="btnBuscar"  class="btn btn-primary"/>
                            <br/><br/>
                            <div class="table-responsive"> 
                                <asp:GridView runat="server" ID="gvCliente" CssClass="table table-hover"></asp:GridView>
                                </div>
   
                        </div>
                  </form>
                    </div>
            </div>

    </main>

</body>
</html>