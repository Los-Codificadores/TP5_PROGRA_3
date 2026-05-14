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
                CargarSucursales();
                return;
            }

            GridViewSucursales.DataSource = Listado.FiltrarSucursalesPorId(TextBoxBuscarId.Text);
            GridViewSucursales.DataBind();
        }

        protected void ButtonMostrarTodos_Click(object sender, EventArgs e)
        {
            CargarSucursales();
            return;
        }
    }
}