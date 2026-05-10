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
        Sucursales Test = new Sucursales();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                ddlTest1.DataSource = Test.ObtenerHorarios();
                ddlTest1.DataTextField = "DescripcionHorario";
                ddlTest1.DataValueField = "Id_Horario";
                ddlTest1.DataBind();

                ddlTest2.DataSource = Test.ObtenerProvincias();
                ddlTest2.DataTextField = "DescripcionProvincia";
                ddlTest2.DataValueField = "Id_Provincia";
                ddlTest2.DataBind();

            }

        }
    }
}