using System;
using System.Collections.Generic;
using System.Drawing.Printing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace First_App
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void PrikaziGrad_Click(object sender, EventArgs e)
        {
            SelektiranGrad.Text = "";
            DistancaGrad.Text = "";

            foreach (ListItem item in ListaGradovi.Items)
            {
                if (item.Selected)
                {
                    SelektiranGrad.Text += "<br/>" + item.Text;
                    DistancaGrad.Text += "<br/>" + item.Value + "km";
                }
            }


            //Zad 1 i 2
            //ListItem selectedItem = ListaGradovi.SelectedItem;
            //SelektiranGrad.Text = selectedItem.Text;
            //DistancaGrad.Text = selectedItem.Value;
        }
    }
}