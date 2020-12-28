using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;


namespace ReactivaPeru
{
    public partial class Login : System.Web.UI.Page
    {
        private ReactivaDataContext reactiva = new ReactivaDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            string correo = txtCorreo.Text.Trim();
            string contrasenia = txtPassword.Text.Trim();
            var resultado = from C in reactiva.spLoginVendedor(correo, contrasenia)
                            select C;
            byte codError = 0;
            string mensaje = string.Empty;
            foreach (var x in resultado)
            {
                codError = Convert.ToByte(x.CodError);
                mensaje = x.Mensaje;
            }
            if (codError == 0)
            {
                Response.Write("<script>window.location = 'adminCPanel.aspx';</script>");
                FormsAuthentication.RedirectFromLoginPage(mensaje, false);
            }
            else
            {
                Response.Write("<script>alert('" + mensaje + "');</script>");
            }
        }
    }
}