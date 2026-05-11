using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TP5_PROGRA3.Clases;

namespace TP5_PROGRA3.Ejercicios
{
    public partial class AgregarSucursal : System.Web.UI.Page
    {
        Sucursales Agregar = new Sucursales();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                ddlProvincias.DataSource = Agregar.ObtenerProvincias();
                ddlProvincias.DataTextField = "DescripcionProvincia";
                ddlProvincias.DataValueField = "Id_Provincia";
                ddlProvincias.DataBind();
            }
        }

        protected void btnGuardar_Click(Object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string nombre = txtNombreSucursal.Text;
                string descripcion = txtDescripcion.Text;
                string direccion = txtDireccion.Text;
                string idProvincia = ddlProvincias.SelectedValue;
            }
        }
    }
}