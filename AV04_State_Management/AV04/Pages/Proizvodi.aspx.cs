using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.DynamicData;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AV04.Pages
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ArrayList lista;
            if (Session["koshnicka"] != null)
            {
                lista = (ArrayList)Session["koshnicka"];
                SelektiraniProizvodi.DataSource = lista;
                SelektiraniProizvodi.DataBind();
            }
            if (!IsPostBack)
            {
                string[] knigi = { "Kniga1", "Kniga2", "Kniga3" };
                string[] tocaci = { "BMX", "Tocak2", "Tocak3" };
                string[] kompjuteri = { "Alienware", "Sony", "Kompjuter 3" };

                Heading.Text = Request.QueryString["ime"];

                int id = Int32.Parse(Request.QueryString["id"]);
                switch (id)
                {
                    case 1:
                        ListProizvodi.DataSource = knigi;
                        break;
                    case 2:
                        ListProizvodi.DataSource = tocaci;
                        break;
                    case 3:
                        ListProizvodi.DataSource = kompjuteri;
                        break;

                }
                ListProizvodi.DataBind();
            }


        }

        protected void Dodadi_Proizvod(object sender, EventArgs e)
        {
            ArrayList lista;
            if (Session["koshnicka"] == null)
            {
                lista = new ArrayList();
            }
            else
            {
                lista = (ArrayList)Session["koshnicka"];
            }

            lista.Add(new ListItem(ListProizvodi.SelectedItem.Text, ListProizvodi.SelectedItem.Text));

            SelektiraniProizvodi.DataSource = lista;
            SelektiraniProizvodi.DataBind();

            Session["koshnicka"] = lista;
        }

        protected void ListProizvodi_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ViewState["brPromeni"] == null)
            {
                ViewState["brPromeni"] = 1;
            }
            else
            {
                ViewState["brPromeni"] = (int)(ViewState["brPromeni"]) + 1;
            }

            BrPromeni.Text = ViewState["brPromeni"].ToString();
        }

        protected void Plakjanje_Click(object sender, EventArgs e)
        {
            Response.Redirect("Plakjanje.aspx");
        }
    }
}