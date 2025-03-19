using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace First_App
{
    public partial class Zad8 : System.Web.UI.Page
    {
        //private string[] colors = { "Red", "Yellow", "Green", "Blue" };
        //private string[] fonts = { "Arial", "Times New Roman", "Inter" };
        //private string tipRamka = "Bound";

        protected void Page_Load(object sender, EventArgs e)
        {
            //v1 - moe
            //if (!this.IsPostBack)
            //{
            //    BoiPozadina.DataSource = colors;
            //    BoiFont.DataSource = colors;
            //    ImeFont.DataSource = fonts;

            //    BoiPozadina.DataBind();
            //    BoiFont.DataBind();
            //    ImeFont.DataBind();
            //}

            //v2 - moe
            //if (!this.IsPostBack)
            //{
            //    foreach (string color in colors)
            //    {
            //        BoiPozadina.Items.Add(color);
            //        BoiFont.Items.Add(color);
            //    }
            //    foreach (string font in fonts)
            //    {
            //        ImeFont.Items.Add(font);
            //    }
            //}

            //v3 - nivno
            if (!this.IsPostBack)
            {
                BoiPozadina.Items.Add(new ListItem("Green"));
                BoiPozadina.Items.Add(new ListItem("Red"));
                BoiPozadina.Items.Add(new ListItem("Yellow"));

                ImeFont.Items.Add(new ListItem("Arial"));
                ImeFont.Items.Add(new ListItem("Times New Roman"));

                BoiFont.Items.Add(new ListItem("Green"));
                BoiFont.Items.Add(new ListItem("Red"));
                BoiFont.Items.Add(new ListItem("Yellow"));

                RamkaType.Items.Add(new ListItem(BorderStyle.None.ToString(), ((int)BorderStyle.None).ToString()));
                RamkaType.Items.Add(new ListItem(BorderStyle.Solid.ToString(), ((int)BorderStyle.Solid).ToString()));
                RamkaType.Items.Add(new ListItem(BorderStyle.Dotted.ToString(), ((int)BorderStyle.Dotted).ToString()));
                RamkaType.Items.Add(new ListItem(BorderStyle.Dashed.ToString(), ((int)BorderStyle.Dashed).ToString()));
            }
        }
        //Save_Click moe
        protected void Save_Click(object sender, EventArgs e)
        {
            //mozesh da dopushesh dopolnitelen kod za da gi resetira vrednostite

            //Boja pozadina
            Cestitka.BackColor = Color.FromName(BoiPozadina.SelectedValue);

            //Font
            Poraka.Font.Name = ImeFont.SelectedValue;

            //Boja na text
            Cestitka.ForeColor = Color.FromName(BoiFont.SelectedValue);

            //Golemina na font
            try
            {
                Poraka.Font.Size = FontUnit.Parse(GoleminaFont.Text);
            }
            catch
            {
                Console.Write("Invalid golemina na font!!");
            }

            //Tip na ramka 
            try
            {
                //- SHABLON za konverzija od string vo System UI dzagara bagara BorderStyle
                int vrednost = Convert.ToInt32(RamkaType.Text);
                Cestitka.BorderStyle = (BorderStyle)vrednost;
            }
            catch
            {
                Cestitka.BorderStyle = BorderStyle.None;
            }

            //Slika
            if (Slika.Checked)
            {
                SlikaCestitka.Visible = true;
            }
            else
            {
                Slika.Visible = false;
            }

            //Sodrzina na cestitka
            Poraka.Text = CestitkaSodrzina.Text;


            //Drugi styles
            Cestitka.Width = 400;
            Cestitka.Height = 500;
            Cestitka.Visible = true;
        }
    }
}