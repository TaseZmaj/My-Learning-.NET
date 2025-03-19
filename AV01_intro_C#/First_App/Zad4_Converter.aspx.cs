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
            //IsPostBack proveruva dali aplikacijata e loaded prv pat - false
            //ili kako rezultat na postBack - true
            //postBack se slucuva koga stranicata e submitted - pr. button click

            //znaci u kratki crti - linijava mu vika samo na first page load da se napravi kodot
            if (!this.IsPostBack)
            {
                //Inicijalni podatoci
                List<ListItem> list_items = new List<ListItem>();

                ListItem item1 = new ListItem("EUR", "61.5");
                ListItem item2 = new ListItem("USD", "55");

                list_items.Add(item1);
                list_items.Add(item2);

                ListaValuti.DataSource = list_items;
                //DataBind() go azurira UI-ot
                ListaValuti.DataBind();
            }
        }

        protected void DodadiValuta_Click(object sender, EventArgs e)
        {
            if (ImeNaValuta.Text.Trim() == "" || VrednostNaValuta.Text.Trim() == "")
            {
                return;
            }

            ListItem newItem = new ListItem(ImeNaValuta.Text, VrednostNaValuta.Text);
            ListaValuti.Items.Add(newItem);

            UpdateTotal();

            ResetInputFields();
            ResetStatus();
        }
        protected void BrishiValuta_Click(object sender, EventArgs e)
        {
            if (ListaValuti.SelectedIndex != -1)
            {
                ListaValuti.Items.Remove(ListaValuti.SelectedItem);
                UpdateTotal();
            }
            else
            {
                Status.Text = "Немаш селектирано валута за бришење!";
            }
        }
        protected void InputField_Change(object sender, EventArgs e)
        {
            ResetStatus();
        }
        protected void ListaValuti_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Mora da ima AutoPostBack: true za da raboti tuka, bidejki HTTP e stateless
            //protocol.
            //Nastan koj se generira koga ke se promeni selekcija - SelectIndexChanged.
            //AutoPostBack mu kaziva na browserot dali generiraniot nastan (na klientska strana)
            //ke predizvika generiranje na HTTP baranje do serverot.

            //Za da se obraboti na serverska strana nastanot - AutoPostBack = true;
            int value = Convert.ToInt32(ListaValuti.SelectedValue);
            Status.Text = Convert.ToString(Convert.ToInt32(Vrednost.Text) * value);
        }

        private void UpdateTotal()
        {
            BrValuti.Text = ListaValuti.Items.Count.ToString();
        }

        private void ResetStatus()
        {
            Status.Text = "";
        }

        private void ResetInputFields()
        {
            ImeNaValuta.Text = "";
            VrednostNaValuta.Text = "";
        }

    }
}