using Rutas_Boyaca_Proyecto.Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


namespace Rutas_Boyaca_Proyecto.Datos
{
    public class ClPQR
    {
        public int mtdPQR(ClPqrEntidades pqrE)
        {
            string comentariopqr = "INSERT INTO PQR(Titulo,Descripcion,Respuesta,idUsuario)" +
                "" + "VALUES('" + pqrE.Titulo + "','" + pqrE.Desripcion + "','" + pqrE.Respuesta + "',"+pqrE.idUsuario + ")";

            ClProcesosSQL pqrco = new ClProcesosSQL();
            int squsu = pqrco.mtdIUDconect(comentariopqr);
            return squsu;

        }

    }
}