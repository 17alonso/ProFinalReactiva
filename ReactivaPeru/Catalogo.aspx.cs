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
    public partial class Catalogo : System.Web.UI.Page
    {
        private ReactivaDataContext reactiva = new ReactivaDataContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            
            HtmlGenericControl div1, div2,p,img, br,a,h4;
            var lista = reactiva.spListarCatalogo();
            foreach (var item in lista)
            //for (int i = 0; i < 4; i++)
            {
                div1 = new HtmlGenericControl("div");
                div2 = new HtmlGenericControl("div");
                p = new HtmlGenericControl("p");
                img = new HtmlGenericControl("img");
                br = new HtmlGenericControl("p");
                a = new HtmlGenericControl("a");
                h4 = new HtmlGenericControl("h4");

                img.Attributes.Add("class", "img-fluid");
                //System.Diagnostics.Debug.Write(item.ImagenI);

                img.Attributes.Add("src", "data:image/jpg;base64,"+ Convert.ToBase64String((item.ImagenRef).ToArray()));
                //img.Attributes.Add("src", "data:image/jpg;base64," + Convert.ToBase64String((byte[])DataBinder.Eval(item.ImagenI)));

                div1.Attributes.Add("class", "col-lg-3 col-md-6 col-sm-6 single-blog");
                div2.Attributes.Add("class", "thumb");
                div2.Controls.Add(img);
                h4.InnerText = item.NombreP;
                a.Attributes.Add("href", "DescripcionProducto.aspx?idProducto="+item.IdP);
                a.Controls.Add(h4);                 
                p.InnerText = item.DescripcionP;
                /*a.InnerText = i.ToString();*/
                div1.Controls.Add(div2);
                div1.Controls.Add(br);
                div1.Controls.Add(a);
                div1.Controls.Add(p);
                idDivProdutos.Controls.Add(div1);
            }
        }
    }
}