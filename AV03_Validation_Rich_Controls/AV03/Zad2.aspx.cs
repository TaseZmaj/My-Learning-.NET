using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AV03
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubmitGrad(object sender, EventArgs e)
        {
            if (GradoviList.SelectedValue != "(grad)")
            {
                gradLabel.Text = "Selektiran grad: " + GradoviList.SelectedValue;
            }
        }
    }
}