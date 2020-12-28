using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ReactivaPeru.admin
{
    public partial class CambiarDatosVendedor : System.Web.UI.Page
    {
        private ReactivaDataContext reactiva = new ReactivaDataContext();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            string usuario = (Page.User.Identity.Name).ToString();
            string nombre = txtNombres.Text;
            string apellidos= txtApellidos.Text;
            string dni = txtDNI.Text;
            string telefono = txtTelefono.Text;


            var resultado = from AM in reactiva.spActualizarDatosVendedor(usuario, nombre, apellidos,telefono,dni)
                            select AM;
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
    }
}