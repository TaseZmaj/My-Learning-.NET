using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace First_App
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void MaliciousTomBtn_Click(object sender, ImageClickEventArgs e)
        {
            //Prikazuvanje koordinati
            Label1.Text = "x: " + e.X + " y: " + e.Y;
        }
    }
}