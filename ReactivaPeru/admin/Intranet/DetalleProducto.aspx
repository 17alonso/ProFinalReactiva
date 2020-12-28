<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DetalleProducto.aspx.cs" Inherits="ReactivaPeru.Intranet.DetalleProducto" %>


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
                            <h1 class="jumbotron-heading">CRUD DetalleProducto</h1>
                         </section>
             <div class="container">
                <div class="row">
                    <form id="form2" runat="server">
                        
                        <div class="container" >
                            <!--Controles del formulario-->

                            <div class="row">
                                <div class="col">
                                <label for="exampleInputEmail1">Codigo DetalleProducto:
                                    
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtIdDetalleProducto" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300" ValidationGroup="A">*</asp:RequiredFieldValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtIdDetalleProducto" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300" ValidationGroup="B">*</asp:RequiredFieldValidator>
                                                                   
                                </label>
                                <asp:TextBox runat="server" Id="txtIdDetalleProducto" class="form-control"  placeholder="Id Detalle Producto" style="width:400px"/>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    Codigo Producto<label for="exampleInputEmail1">: 
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtidCodigoProducto" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300" ValidationGroup="A">*</asp:RequiredFieldValidator>

                                </label>

                                <asp:TextBox runat="server" Id="txtidCodigoProducto" class="form-control" placeholder="Codigo Producto" style="width:400px"/>
                                </div>
                                <div class="col">
                                <label for="exampleInputEmail1">Stock:

                                </label>
                                    <asp:TextBox runat="server" Id="txtStock" class="form-control" placeholder="Stock" style="width:400px"/>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                <label for="exampleInputEmail1">Precio: </label>

                                <asp:TextBox runat="server" Id="txtPrecio" class="form-control" placeholder="Precio" style="width:400px"/>
                                </div>
                                <div class="col">
                                <label for="exampleInputEmail1">Estado: </label>
                                    <asp:TextBox runat="server" Id="txtEstado" class="form-control" placeholder="Estado" style="width:400px"/>
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