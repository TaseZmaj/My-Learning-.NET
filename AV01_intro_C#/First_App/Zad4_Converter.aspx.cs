using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace First_App
{
    public partial class Zad4_Converter : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DodadiValuta_Click(object sender, EventArgs e)
        {
            if (ImeNaValuta.Text.Trim() == "" || VrednostNaValuta.Text.Trim() == "")
            {
                return;
            }

            ListItem newItem = new ListItem(ImeNaValuta.Text, VrednostNaValuta.Text);
            ListaValuti.Items.Add(newItem);

            ImeNaValuta.Text = "";
            VrednostNaValuta.Text = "";

        }
    }
}