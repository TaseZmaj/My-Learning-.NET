using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AV04
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Knigi_Click(object sender, EventArgs e)
        {
            Response.Redirect("Proizvodi.aspx?id=1&ime=Knigi");
        }
        protected void Tocaci_Click(object sender, EventArgs e)
        {
            Response.Redirect("Proizvodi.aspx?id=2&ime=Tocaci");
        }

        protected void Kompjuteri_Click(object sender, EventArgs e)
        {
            Response.Redirect("Proizvodi.aspx?id=3&ime=Kompjuteri");
        }
    }
}