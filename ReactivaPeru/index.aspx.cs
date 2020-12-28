using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.HtmlControls;

namespace ReactivaPeru
{

    public partial class index : System.Web.UI.Page
    {
        private ReactivaDataContext reactiva = new ReactivaDataContext();

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                HtmlGenericControl li, a;
                var lista = reactiva.spListarEmpresa();
                foreach (var item in lista)
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

                var lista2 = reactiva.spListarCategoria();
                foreach (var item in lista2)
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
}