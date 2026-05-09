using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace TP5_PROGRA3.Clases
{
    public class ClaseAccesoBD
    {
        private const string rutaConexion = @"Data Source= (localdb)\MSSQLLocalDB;Initial Catalog=BDSucursales;Integrated Security=True;TrustServerCertificate=True";
        //private static string rutaConexion = @"Data Source=localhost\sqlexpress;Initial Catalog=BDSucursales;Integrated Security=True";
        //Borrar la primera y establecer la ruta comentada antes de entregar (nos vamos a olvidar)
        public DataTable ObtenerTablaBD(string consultaSQL, string nombreTabla)
        {
            SqlConnection conexion = new SqlConnection(rutaConexion);
            conexion.Open();
            SqlDataAdapter adapter = new SqlDataAdapter(consultaSQL, conexion);
            DataSet ds = new DataSet();
            adapter.Fill(ds, "nombreTabla");
            conexion.Close();
            return ds.Tables["nombreTabla"];
        }

        public int ConsultaBD(string consultaSQL)
        {
            SqlConnection conexion = new SqlConnection(rutaConexion);
            conexion.Open();
            SqlCommand cmd = new SqlCommand(consultaSQL, conexion);
            int filas = (int)cmd.ExecuteNonQuery(); // PARA INSERT-UPDATE-DELETE
            conexion.Close();
            return filas;
        }
    }
}