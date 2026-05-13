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
                ajustesDefault();
            }
        }


        protected void btnGuardar_Click(Object sender ,EventArgs e)
        {
            // Siempre comienza en falso, verificamos si debe cambiar
            labelControlGuardadoExitoso.Visible = false;
            LabelControlGuardadoFallido.Visible = false;

            if (Page.IsValid)
            {

                if (txtNombreSucursal.Text.Length > 100 || txtDescripcion.Text.Length > 100 || txtDireccion.Text.Length > 100)
                {
                    LabelControlGuardadoFallido.Text = "Error: Los campos no pueden superar los 100 caracteres.";
                    LabelControlGuardadoFallido.Visible = true;
                    return;
                }

                if (Agregar.ExisteNombreSucursal(txtNombreSucursal.Text))
                {
                    LabelControlGuardadoFallido.Visible = true;
                    return; // Esto evita que siga con el proceso de guardado
                }

                string nombre = txtNombreSucursal.Text;
                string descripcion = txtDescripcion.Text;
                string direccion = txtDireccion.Text;
                string idProvincia = ddlProvincias.SelectedValue;

                Agregar.AgregarSucursal(nombre, descripcion, idProvincia, direccion);
                labelControlGuardadoExitoso.Visible = true;
                ajustesDefault();
                Response.AppendHeader("Refresh", "5;url=AgregarSucursal.aspx");
            }
        }

        protected void LinkButtonAgregarSucursal_Click(object sender, EventArgs e)
        {
            ajustesDefault();
        }
        protected void ajustesDefault()
        {
            txtNombreSucursal.Text = "";
            txtDescripcion.Text = "";
            txtDireccion.Text = "";
            ddlProvincias.SelectedIndex = 0;

            txtNombreSucursal.Focus();
        }
    }
}