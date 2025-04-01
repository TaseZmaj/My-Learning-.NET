using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AV03
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AddBtn_Click(object sender, EventArgs e)
        {
            ImePredmet.Text = "Predmet:" + ImeInput.Text;
            Ocena.Text = "Ocena: " + OcenaInput.Text;
            Datum.Text = "Datum: " + DatumInput.Text;
        }
    }
}