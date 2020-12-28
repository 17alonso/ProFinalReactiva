using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

namespace ReactivaPeru.admin
{
    public partial class Imagenes : System.Web.UI.Page
    {
        private ReactivaDataContext reactiva = new ReactivaDataContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            gvMisImagenes.DataSource = reactiva.spMisImagenes((Page.User.Identity.Name).ToString());
            gvMisImagenes.DataBind();
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            string idI = txtCodImag.Text.Trim();
            var resultado = from C in reactiva.spEliminarImagen(idI)
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
                //Response.Write("<script>window.location = 'Imagenes.aspx';</script>");
                Response.Redirect("Imagenes.aspx");
            }
        }

        protected void BtnAgregar_Click(object sender, EventArgs e)
        {
            int tamanio = imag.PostedFile.ContentLength;
            byte[] imagenOriginal = new byte[tamanio];
            imag.PostedFile.InputStream.Read(imagenOriginal,0,tamanio);
            Bitmap imageOriginalBinaria = new Bitmap(imag.PostedFile.InputStream);
            //base de datos
            string idP = txtCodProducto.Text.Trim();
            string nombreI = txtCodTitulo.Text.Trim();

            var resultado = from C in reactiva.spAgregarImagen(idP, imagenOriginal, nombreI)
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
                Response.Write("<script>window.location = 'Imagenes.aspx';</script>");
            }


            string imagenDataURL64= "data:image/jpg;base64," + Convert.ToBase64String(imagenOriginal);
            idimgPreview.ImageUrl = imagenDataURL64;
        }

        protected void btnVisualizar_Click(object sender, EventArgs e)
        {
            int tamanio = imag.PostedFile.ContentLength;
            byte[] imagenOriginal = new byte[tamanio];
            imag.PostedFile.InputStream.Read(imagenOriginal, 0, tamanio);
            Bitmap imageOriginalBinaria = new Bitmap(imag.PostedFile.InputStream);           
            string imagenDataURL64 = "data:image/jpg;base64," + Convert.ToBase64String(imagenOriginal);
            idimgPreview.ImageUrl = imagenDataURL64;
        }
    }
}