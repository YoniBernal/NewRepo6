using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using Rutas_Boyaca_Proyecto.Entidades;

namespace Rutas_Boyaca_Proyecto.Datos
{
    public class ClLogin
    { 
        public ClLoginE dLogin()
        {
            ClConexion con = new ClConexion();
            SqlCommand cmd = new SqlCommand("PROlOGON", con.mtdConexion());
            cmd.CommandType = CommandType.StoredProcedure;
            DataTable tbl = new DataTable(cmd.ToString());

            ClLoginE entidad = null;

            if (tbl.Rows.Count == 1)
            {
                entidad = new ClLoginE();
                cmd.Parameters.AddWithValue("@Correo", entidad.Usuario);
                cmd.Parameters.AddWithValue("@Clave", entidad.Clave);
            }
            SqlDataAdapter tab = new SqlDataAdapter(cmd);
            tab.Fill(tbl);
            return entidad;

        }
    }
}