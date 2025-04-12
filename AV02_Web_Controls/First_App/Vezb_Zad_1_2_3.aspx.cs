using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebGrease.Css.Ast.Selectors;

namespace First_App
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        public class City
        {
            public string name;
            public int distance;
            public City(string name, int distance)
            {
                this.name = name;
                this.distance = distance;
            }

            public string getCity()
            {
                return name;
            }
            public int getDistance()
            {
                return distance;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            City[] cities = { new City("Skopje", 0), new City("Dojran", 200), new City("Veles", 30) };
            if (!IsPostBack)
            {
                foreach (City city in cities)
                {
                    ListItem cityItem = new ListItem(city.name, city.distance.ToString());
                    ListaGradovi.Items.Add(cityItem);
                }
            }
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            //Za single item selected
            //if (ListaGradovi.SelectedIndex != -1)
            //{
            //    GradName.Text = ListaGradovi.Items[ListaGradovi.SelectedIndex].Text;
            //    GradDistance.Text = ListaGradovi.Items[ListaGradovi.SelectedIndex].Value + "km";
            //}

            //Za multiple items selected
            foreach (ListItem cityItem in ListaGradovi.Items)
            {
                if (cityItem.Selected)
                {
                    GradName.Text += cityItem.Text + " ";
                    GradDistance.Text += cityItem.Value + "km ";
                }
            }
        }

        protected void DeletePicture_Click(object sender, EventArgs e)
        {
            if (ListaGradovi.SelectedIndex != -1)
            {
                ListaGradovi.Items.Remove(ListaGradovi.SelectedItem);
            }
        }
    }
}