using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ReactivaPeru
{
    public partial class RegistrarEmpresa : System.Web.UI.Page
    {
        private ReactivaDataContext reactiva = new ReactivaDataContext();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            string nombreEmp = txtNomEmp.Text.Trim();
            string correoEmp = txtCorreoEmp.Text.Trim();
            string nombreVen = txtNomVen.Text.Trim();
            string apellidosVen = txtApellVen.Text.Trim();
            string telefVen = txtTelef.Text.Trim();
            string correoVen = txtCorreoVen.Text.Trim();
            string contrasenia = txtContra.Text.Trim();
            string contraseniaRepe = txtContraRepe.Text.Trim();
            if (string.IsNullOrEmpty(txtNomEmp.Text) || string.IsNullOrEmpty(txtCorreoEmp.Text) || string.IsNullOrEmpty(txtNomVen.Text) || string.IsNullOrEmpty(txtApellVen.Text)
                || string.IsNullOrEmpty(txtTelef.Text) || string.IsNullOrEmpty(txtContra.Text) || string.IsNullOrEmpty(txtContraRepe.Text) || string.IsNullOrEmpty(txtCorreoVen.Text))
            {
                Response.Write("<script>alert(' Todos los campos deben de ser llenados');</script>");
            }
            else
            {
                if (contrasenia == contraseniaRepe)
                {
                    var resultado = from C in reactiva.spAgregarVendedorEmpresa(correoVen, contrasenia, nombreVen,
                        apellidosVen, telefVen, null, nombreEmp, correoEmp, null, null, null)
                                    select C;
                    byte codError = 0;
                    string mensaje = string.Empty;
                    foreach (var x in resultado)
                    {
                        codError = Convert.ToByte(x.CodError);
                        mensaje = x.Mensaje;
                    }
                    Response.Write("<script>alert('" + mensaje + "');</script>");
                    if (codError == 0)
                    {
                        Response.Write("<script>window.location = 'Login.aspx';</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert(' Las contraseñas no son iguales');</script>");

                }
            }
        }
    }
}