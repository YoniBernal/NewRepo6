using Rutas_Boyaca_Proyecto.Datos;
using Rutas_Boyaca_Proyecto.Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Rutas_Boyaca_Proyecto.Logica
{
    public class ClLogComerciante
    {

        ClEstablecimientoDatos objEstb = new ClEstablecimientoDatos();

        public List<ClEntMunicipios> mtdGetMunicipios()
        {
            return objEstb.mtdGetMunicipios();
        }

        public string mtdRegistroStore(string NombreEstablecimiento, string Direccion, string Descripcion,
            string Foto, int idTipo, int idUsuario, int idMunicipio, int idCategoriaEstbl)
        {
            return objEstb.mtdRegisterStore(NombreEstablecimiento, Direccion, Descripcion, Foto, idTipo,
            idUsuario, idCategoriaEstbl, idMunicipio);
        }


        public List<ClTipoEstablecimiento> mtdGetTipoEstablecimientos()
        {
            return objEstb.mtdGetTipoEstablecimiento();
        }

        public List<ClCategoriaEstablecimiento> mtdGetCategory()
        {
            return objEstb.mtdGetCategoriaEstablecimiento();
        }

        public ClIngresoUsuario GetUserInfo(int idUsuario)
        {
            return objEstb.GetUserInfo(idUsuario);
        }

    }
}
