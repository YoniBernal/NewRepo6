using Rutas_Boyaca_Proyecto.Entidades;
using Rutas_Boyaca_Proyecto.Vista;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace Rutas_Boyaca_Proyecto.Datos
{
    public class ClCrearRutaD
    {
        public List<ClCrearRutaE> mtdRutaMunicipioo()
        {
            string sqlRmunicipio = "SELECT Municipio.Nombre, Municipio.Descripcion, RutaMunicipio.idRuta, RutaMunicipio.idMunicipio, RutaMunicipio.TituloComentario, RutaMunicipio.Comentario, RutaMunicipio.Imagen " +
                            "FROM RutaMunicipio " +
                            "INNER JOIN Municipio ON RutaMunicipio.idMunicipio = Municipio.idMunicipio";

            ClProcesosSQL selectD = new ClProcesosSQL();
            DataTable dtRutaMu = selectD.mtdSelectDes(sqlRmunicipio);

            List<ClCrearRutaE> RutaMuLis = new List<ClCrearRutaE>();

            for (int i = 0; i < dtRutaMu.Rows.Count; i++)
            {
                ClCrearRutaE Ramunicipio = new ClCrearRutaE();
                Ramunicipio.NombreTM = dtRutaMu.Rows[i]["Nombre"].ToString();
                Ramunicipio.DescripcionTM = dtRutaMu.Rows[i]["Descripcion"].ToString();
                Ramunicipio.IdMunicipio = int.Parse(dtRutaMu.Rows[i]["idMunicipio"].ToString());
                Ramunicipio.TituloComentario = dtRutaMu.Rows[i]["TituloComentario"].ToString();
                Ramunicipio.Comentario = dtRutaMu.Rows[i]["Comentario"].ToString();
                Ramunicipio.Imagen = dtRutaMu.Rows[i]["Imagen"].ToString();

                RutaMuLis.Add(Ramunicipio);
            }

            return RutaMuLis;
        }

        public int mtdImagen(ClCrearRutaE img)
        {
            string iruta = "INSERT INTO RutaMunicipio(Imagen)" + "VALUES('" + img.Imagen + "')";
            ClProcesosSQL i = new ClProcesosSQL();
            int rutasql = i.mtdIUDconect(iruta);
            return rutasql;
        }


        public int comentariosRM(ClCrearRutaE Comentario)
        {
            string insertCome = "INSERT INTO RutaMunicipio (TituloComentario, Comentario, Imagen) " +
                                "VALUES ('" + Comentario.TituloComentario + "','" + Comentario.Comentario + "','" + Comentario.Imagen + "'); " +
                                "INSERT INTO Ruta (NombreRuta, idUsuario) " + "VALUES ('" + Comentario.NombreRuta + "', " + Comentario.idUsuario + ");";

            ClProcesosSQL comen = new ClProcesosSQL();
            int squsu = comen.mtdIUDconect(insertCome);
            return squsu;
        }

        public int mtdRuta(ClCrearRutaE ruta)
        {
            string iruta = "INSERT INTO Ruta(NombreRuta)" + "VALUES('" + ruta.NombreRuta + "')";
            ClProcesosSQL rt = new ClProcesosSQL();
            int rutasql = rt.mtdIUDconect(iruta);
            return rutasql;
        }

    }
}