using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Rutas_Boyaca_Proyecto.Datos
{
    public class ClConexion
    {
        SqlConnection conexion = null;
        public SqlConnection mtdConexion()
        {
            conexion = new SqlConnection("Data Source=DESKTOP-CQMIB01;Initial Catalog=DBO_Rutas_Boyaca;Integrated Security=True");
            conexion.Open();
            return conexion;
        }
    }
}