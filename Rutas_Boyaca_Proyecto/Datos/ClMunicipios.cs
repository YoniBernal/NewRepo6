using Rutas_Boyaca_Proyecto.Entidades;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace Rutas_Boyaca_Proyecto.Datos
{
    public class ClMunicipios
    {
        public List<ClEntidades> mtdMunicipios(int idMunicipio)
        {
            string municipio = "SELECT * FROM Municipio WHERE idMunicipio =" + idMunicipio;
            ClProcesosSQL selectdesconet = new ClProcesosSQL();
            DataTable dtMunicipio = selectdesconet.mtdSelectDes(municipio);

            List<ClEntidades> TablaMunicipiosbd = new List<ClEntidades>();

            for (int i = 0; i < dtMunicipio.Rows.Count; i++)
            {
                ClEntidades objentidaesmun = new ClEntidades();
                objentidaesmun.idMunicipio = int.Parse(dtMunicipio.Rows[i]["idMunicipio"].ToString());
                objentidaesmun.Nombre = dtMunicipio.Rows[i]["Nombre"].ToString();
                objentidaesmun.Numerohabitantes = dtMunicipio.Rows[i]["Numerohabitantes"].ToString();
                objentidaesmun.Extension = dtMunicipio.Rows[i]["Extension"].ToString();
                objentidaesmun.Latitud = dtMunicipio.Rows[i]["Latitud"].ToString();
                objentidaesmun.Longitud = dtMunicipio.Rows[i]["Longitud"].ToString();
                objentidaesmun.Bandera = dtMunicipio.Rows[i]["Bandera"].ToString();
                objentidaesmun.Imagen = dtMunicipio.Rows[i]["Imagen"].ToString();
                objentidaesmun.Clima = dtMunicipio.Rows[i]["Clima"].ToString();
                objentidaesmun.Ubicacion = dtMunicipio.Rows[i]["Ubicacion"].ToString();
                objentidaesmun.DEscripcion = dtMunicipio.Rows[i]["Descripcion"].ToString();
                TablaMunicipiosbd.Add(objentidaesmun);


            }

            return TablaMunicipiosbd;
        }
    }
}