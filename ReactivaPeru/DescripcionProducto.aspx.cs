using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Drawing;

namespace ReactivaPeru
{
    public partial class DescripcionProducto : System.Web.UI.Page
    {
        private ReactivaDataContext reactiva = new ReactivaDataContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            string codigoP = Request.QueryString["idProducto"].ToString();



            HtmlGenericControl p1,p2, p3, b, h1;
            var lista = reactiva.spListarProductoDetalles(codigoP);
            foreach (var item in lista)
            //for (int i = 0; i < 4; i++)
            {
                h1 = new HtmlGenericControl("h1");

                p1 = new HtmlGenericControl("p");
                p2 = new HtmlGenericControl("p");
                p3 = new HtmlGenericControl("p");

                b = new HtmlGenericControl("b");

                //System.Diagnostics.Debug.Write(item.ImagenI);

                //img.Attributes.Add("src", "data:image/jpg;base64," + Convert.ToBase64String((byte[])DataBinder.Eval(item.ImagenI)));

                h1.Attributes.Add("class", "mb-10");
                h1.InnerText = item.NombreP;
                p1.InnerText = "Empresa: "+item.NombreEmpresa;
                p2.InnerText = "Precio: ";
                b.InnerText = "S/."+item.PrecioDP.ToString();
                p3.InnerText = "Descripcion: " + item.DescripcionP.ToString();
                p2.Controls.Add(b);


                txtdiv.Controls.Add(h1);
                txtdiv.Controls.Add(p1);
                txtdiv.Controls.Add(p2);
                txtdiv.Controls.Add(p3);

            }
            HtmlGenericControl img, div1, div2;
            var lista2 = reactiva.spListarfotosDeProducto(codigoP);
            foreach (var item in lista2)
            {
                div1 = new HtmlGenericControl("div");
                div2 = new HtmlGenericControl("div");
                img = new HtmlGenericControl("img");


                img.Attributes.Add("class", "img-fluid");
                //System.Diagnostics.Debug.Write(item.ImagenI);

                img.Attributes.Add("src", "data:image/jpg;base64," + Convert.ToBase64String((item.ImagenI).ToArray()));
                //img.Attributes.Add("src", "data:image/jpg;base64," + Convert.ToBase64String((byte[])DataBinder.Eval(item.ImagenI)));

                div1.Attributes.Add("class", "col-lg-3 col-md-6 col-sm-6 single-blog");
                div2.Attributes.Add("class", "thumb");
                div2.Controls.Add(img);

                /*a.InnerText = i.ToString();*/
                div1.Controls.Add(div2);
                idDivProdutos.Controls.Add(div1);
            }
            HtmlGenericControl li, a;
            var lista3 = reactiva.spListarEmpresa();
            foreach (var item in lista3)
            /*for (int i = 0; i < 4; i++)*/
            {
                li = new HtmlGenericControl("li");
                a = new HtmlGenericControl("a");
                /*a.InnerText = i.ToString();*/
                a.InnerText = item.NombreE.ToString();
                a.Attributes.Add("href", "DescripcionEmpresa.aspx");
                li.Controls.Add(a);

                idUlEmp.Controls.Add(li);
            }

            var lista4 = reactiva.spListarCategoria();
            foreach (var item in lista4)
            /*for (int i = 0; i < 4; i++)*/
            {
                li = new HtmlGenericControl("li");
                a = new HtmlGenericControl("a");
                /*a.InnerText = i.ToString();*/
                a.InnerText = item.NombreC.ToString();
                a.Attributes.Add("href", "Tejidos.aspx");
                li.Controls.Add(a);

                idUlProducto.Controls.Add(li);
            }

        }
    }
}