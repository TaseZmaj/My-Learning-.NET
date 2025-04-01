using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AV03.Pages
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                mvRegistracija.ActiveViewIndex = 0;
            }
        }

        protected void NextView(object sender, EventArgs e)
        {
            if (mvRegistracija.ActiveViewIndex < mvRegistracija.Views.Count - 1)
            {
                mvRegistracija.ActiveViewIndex++;
            }
            else
            {
                mvRegistracija.ActiveViewIndex = 0;
            }
        }

        protected void PrevView(object sender, EventArgs e)
        {
            if (mvRegistracija.ActiveViewIndex > 0)
            {
                mvRegistracija.ActiveViewIndex--;
            }
            else
            {
                mvRegistracija.ActiveViewIndex = mvRegistracija.Views.Count - 1;
            }
        }
    }
}