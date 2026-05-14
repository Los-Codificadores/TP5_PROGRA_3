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
    }
}