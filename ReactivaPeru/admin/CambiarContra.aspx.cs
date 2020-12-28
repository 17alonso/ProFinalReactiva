using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ReactivaPeru.admin
{
    public partial class CambiarContra : System.Web.UI.Page
    {
        private ReactivaDataContext reactiva = new ReactivaDataContext();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            string usuario = (Page.User.Identity.Name).ToString();
            string contrasena = txtContra.Text;
            string nuevaContrasena = txtNuevaContra.Text;
            string nuevaContrasena2 = txtNuevaContraRepe.Text;
            if (nuevaContrasena == nuevaContrasena2)
            {
                
                var resultado = from C in reactiva.spCambiarContraseniaVendedor(usuario, contrasena, nuevaContrasena)
                                select C;
                byte codError = 0;
                string mensaje = string.Empty;
                foreach (var x in resultado)
                {
                    codError = Convert.ToByte(x.CodError);
                    mensaje = x.Mensaje;
                }
                Response.Write("<script>alert(' " + mensaje + "');</script>");
                if (codError == 0)
                {
                    Response.Write("<script>alert('" + mensaje + "');</script>");
                    Response.Write("<script>window.location = 'Perfil.aspx';</script>");
                }
                else
                {
                    Response.Write("<script>alert('" + mensaje + "');</script>");
                }
            }
            else
                Response.Write("<script>alert('Las constraseñas no coinciden');</script>");



        }
    }
}