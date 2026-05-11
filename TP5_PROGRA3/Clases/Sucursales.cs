using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace TP5_PROGRA3.Clases
{
    public class Sucursales
    {
        AccesoBD conexion = new AccesoBD();
        public DataTable ObtenerSucursales()
        {
            string consultaSQL = "SELECT Id_Sucursal AS ID, NombreSucursal AS NOMBRE, DescripcionProvincia AS PROVINCIA, DireccionSucursal AS DIRECCIÓN FROM Sucursal INNER JOIN Provincia ON Id_Provincia=Id_ProvinciaSucursal";
            string nombreTabla = "Sucursales";
            return conexion.ObtenerTablaBD(consultaSQL, nombreTabla);
        }

        public DataTable ObtenerProvincias()
        {
            string consultaSQL = "SELECT * FROM Provincia";
            string nombreTabla = "Provincias";
            return conexion.ObtenerTablaBD(consultaSQL, nombreTabla);
        }

        public DataTable ObtenerHorarios()
        {
            string consultaSQL = "SELECT * FROM Horario"; //1 = 8 a 12 | 2 = 12 a 16 | 3 = 16 a 20 | 4 = 20 a 24 | 5 = 8 a 20 | 6 = 10 a 22
            string nombreTabla = "Horarios";
            return conexion.ObtenerTablaBD(consultaSQL, nombreTabla);
        }

        public int AgregarSucursal(string nombre, string descripcion, string idProvincia, string direccion)
        {
            string consultaSQL = ""; 
            return conexion.ConsultaBD(consultaSQL);
        }

        public int EliminarSucursal(string idSucursal)
        {
            string consultaSQL = ""; 
            return conexion.ConsultaBD(consultaSQL);
        }

        public DataTable BuscarSucursal(string idSucursal)
        {
            string consultaSQL = ""; 
            string nombreTabla = "Sucursales";
            return conexion.ObtenerTablaBD(consultaSQL, nombreTabla);
        }
    }
}