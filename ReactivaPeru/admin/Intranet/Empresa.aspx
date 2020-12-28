<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Empresa.aspx.cs" Inherits="ReactivaPeru.Intranet.Empresa" %>

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
                            <h1 class="jumbotron-heading">CRUD Empresa</h1>
                         </section>
             <div class="container">
                <div class="row">
                    <form id="form2" runat="server">
                        
                        <div class="container" >
                            <!--Controles del formulario-->

                            <div class="row">
                                <div class="col">
                                <label for="exampleInputEmail1">Codigo Empresa:
                                    
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtIdEmpresa" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300" ValidationGroup="A">*</asp:RequiredFieldValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtIdEmpresa" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300" ValidationGroup="B">*</asp:RequiredFieldValidator>
                                                                   
                                </label>
                                <asp:TextBox runat="server" Id="txtIdEmpresa" class="form-control"  placeholder="Codigo Empresa" style="width:400px"/>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                <label for="exampleInputEmail1">Correo: 
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtCorreoEmpresa" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300" ValidationGroup="A">*</asp:RequiredFieldValidator>

                                </label>

                                <asp:TextBox runat="server" Id="txtCorreoEmpresa" class="form-control" placeholder="Correo" style="width:400px"/>
                                </div>
                                <div class="col">
                                <label for="exampleInputEmail1">Ruc: 
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtRucEmpresa" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300" ValidationGroup="A">*</asp:RequiredFieldValidator>

                                </label>
                                    <asp:TextBox runat="server" Id="txtRucEmpresa" class="form-control" placeholder="Ruc" style="width:400px"/>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                <label for="exampleInputEmail1">Telefono:

                                </label>

                                <asp:TextBox runat="server" Id="txtTelefonoEmpresa" class="form-control" placeholder="Telefono" style="width:400px"/>
                                </div>
                                <div class="col">
                                <label for="exampleInputEmail1">Descripcion </label>
                                    <asp:TextBox runat="server" Id="txtDireccionEmpresa" class="form-control" placeholder="Descripcion" style="width:400px"/>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                <label for="exampleInputEmail1">Codigo Vendedor: <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtidVendedorEmpresa" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300" ValidationGroup="A">*</asp:RequiredFieldValidator>

                                </label>

                                <asp:TextBox runat="server" Id="txtidVendedorEmpresa" class="form-control" placeholder="Codigo Vendedor" style="width:400px"/>
                                </div>
                            </div>
                            
                            <div class="row">
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