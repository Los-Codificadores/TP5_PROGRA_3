using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TP5_PROGRA3.Clases;

namespace TP5_PROGRA3.Ejercicios
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        Sucursales Listado = new Sucursales();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                CargarSucursales();
                CargarProvincias();
            }
        }

        private void CargarSucursales()
        {
            GridViewSucursales.DataSource = Listado.ObtenerSucursales();
            GridViewSucursales.DataBind();
        }

        protected void ButtonFiltrarPorID_Click(object sender, EventArgs e)
        {

            if (string.IsNullOrEmpty(TextBoxBuscarId.Text))
            {
                if (ddlProvincias.SelectedValue != "0")
                {
                    GridViewSucursales.DataSource = Listado.FiltrarSucursalesPorProvincia(ddlProvincias.SelectedValue);
                    GridViewSucursales.DataBind();
                }
                else
                {
                    CargarSucursales();
                }
                return;
            }
            if (ddlProvincias.SelectedValue != "0")
            {
                GridViewSucursales.DataSource = Listado.FiltrarSucursalesPorProvinciaYID(ddlProvincias.SelectedValue, TextBoxBuscarId.Text);
                GridViewSucursales.DataBind();
            }
            else
            {
                GridViewSucursales.DataSource = Listado.FiltrarSucursalesPorId(TextBoxBuscarId.Text);
                GridViewSucursales.DataBind();
            }
                

            TextBoxBuscarId.Text = string.Empty;
        }

        protected void ButtonMostrarTodos_Click(object sender, EventArgs e)
        {
            CargarSucursales();
            TextBoxBuscarId.Text = string.Empty;
            return;
        }

        protected void CargarProvincias()
        {
            ddlProvincias.DataSource = Listado.ObtenerProvincias();
            ddlProvincias.DataTextField = "DescripcionProvincia";
            ddlProvincias.DataValueField = "Id_Provincia";
            ddlProvincias.DataBind();
            //Inserto la opcion "Seleccione una provincia" al inicio del DropDownList
            ddlProvincias.Items.Insert(0, new ListItem("Seleccione una provincia", "0"));
        }

        protected void ddlProvincias_SelectedIndexChanged(object sender, EventArgs e)
        {
            ButtonFiltrarPorID_Click(sender, e);
        }

        protected void GridViewSucursales_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridViewSucursales.PageIndex = e.NewPageIndex;
            ButtonFiltrarPorID_Click(sender, e);
        }
    }
}