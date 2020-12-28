using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Drawing;
using System.Web.UI.WebControls;
using System.Globalization;



namespace ReactivaPeru.admin
{
    public partial class Productos : System.Web.UI.Page
    {
        private ReactivaDataContext reactiva = new ReactivaDataContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                
                gvProducto.DataSource = reactiva.spMisProductos((Page.User.Identity.Name).ToString());
                gvProducto.DataBind();
                /*
                Console.WriteLine(reactiva.spMisProductos((Page.User.Identity.Name).ToString()));
                Console.ReadLine();
                */
                
            }
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            int tamanio = imag.PostedFile.ContentLength;
            byte[] imagenOriginal = new byte[tamanio];
            imag.PostedFile.InputStream.Read(imagenOriginal, 0, tamanio);
            Bitmap imageOriginalBinaria = new Bitmap(imag.PostedFile.InputStream);

            string codProd = txtCodProd.Text.Trim();
            string correoV = (Page.User.Identity.Name).ToString();
            string codCat = txtCodCat.Text.Trim();
            string nombre = txtNom.Text.Trim();
            string marca = txtMarca.Text.Trim();
            int stock = Int32.Parse(txtStock.Text.Trim());
            float precio = float.Parse(txtPrecio.Text.Trim(), CultureInfo.InvariantCulture.NumberFormat);
            string descripccion = txtDescrip.Text.Trim();

            var resultado = from C in reactiva.spAgregarProducto(correoV, codCat, nombre, marca, imagenOriginal, descripccion,stock, precio)
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
                Response.Write("<script>window.location = 'Productos.aspx';</script>");
            }
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            int codProd = Int32.Parse(txtCodProd.Text.Trim());
            var resultado = from C in reactiva.spEliminarProducto(codProd)
                            select C;
            byte codError = 0;
            string mensaje = string.Empty;

            System.Diagnostics.Debug.WriteLine(resultado);

            foreach (var x in resultado)
            {
                
                codError = Convert.ToByte(x.CodError);
                /*
                System.Diagnostics.Debug.WriteLine(x);
                */
                mensaje = x.Mensaje;
            }
            
            Response.Write("<script>alert(' " + mensaje + "');</script>");
            if (codError == 0)
            {
                Response.Write("<script>window.location = 'Productos.aspx';</script>");
            }
            
        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            int tamanio = imag.PostedFile.ContentLength;
            byte[] imagenOriginal = new byte[tamanio];
            imag.PostedFile.InputStream.Read(imagenOriginal, 0, tamanio);
            Bitmap imageOriginalBinaria = new Bitmap(imag.PostedFile.InputStream);

            int codProd = Int32.Parse(txtCodProd.Text.Trim());
            string codCat = txtCodCat.Text.Trim();
            string nombre = txtNom.Text.Trim();
            string marca = txtMarca.Text.Trim();
            int stock = Int32.Parse(txtStock.Text.Trim());
            float precio = float.Parse(txtPrecio.Text.Trim(), CultureInfo.InvariantCulture.NumberFormat);
            string descripccion = txtDescrip.Text.Trim();

            var resultado = from C in reactiva.spActualizarProducto(codProd, codCat, nombre, imagenOriginal, marca,  stock, precio, descripccion)
                            select C;
            byte codError = 0;
            string mensaje = string.Empty;
            foreach (var x in resultado)
            {
                codError = Convert.ToByte(x.CodError);
                mensaje = x.Mensaje;
            }
            Response.Write("<script>alert(' "+mensaje+"');</script>");
            if (codError == 0)
            {
                Response.Write("<script>window.location = 'Productos.aspx';</script>");
            }
        }
        
    }
}