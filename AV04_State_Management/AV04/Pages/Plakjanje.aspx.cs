using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AV04.Pages
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ArrayList lista;
            if (Session["koshnicka"] != null)
            {
                lista = (ArrayList)(Session["koshnicka"]);
                Cart.DataSource = lista;
                Cart.DataBind();
            }
        }


    }
}