using Rutas_Boyaca_Proyecto.Datos;
using Rutas_Boyaca_Proyecto.Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Rutas_Boyaca_Proyecto.Logica
{
    public class ClLogProvincias
    {
        ClProvinciaData objEstb = new ClProvinciaData();

        public List<ClEntProvincias> mtdProvinciasById(int idProvincia)
        {
            return objEstb.mtdProvinciasById(idProvincia);
        }

        public List<ClEntProvincias> mtdGetActiveProvincias(bool Estado)
        {
            return objEstb.mtdGetActiveProvincias(Estado);
        }

        public List<ClEntMunicipios> mtdGetMunicipiosByIds(int idProvincia)
        {
            return objEstb.mtdGetMunicipiosById(idProvincia);
        }

        public List<ClEntMunicipios> mtdGetMunicipios()
        {
            return objEstb.mtdGetMunicipios();
        }

        public List<ClTipoEstablecimiento> mtdEstablecimiento()
        {
            return objEstb.mtdSelectEstablecimiento();
        }

        public ClIngresoUsuario mtdLogearUsuario(string Email, string Clave)
        {
            return objEstb.mtdIngreso(Email, Clave);
        }

        public string mtdRegistroUser(string Documento, string Nombre, string Email,
            string Celular, string Foto, string Clave, int idMunicipio, int idRol)
        {
            return objEstb.mtdRegisterUsers(Documento, Nombre, Email, Celular, Foto, Clave, idMunicipio, idRol);
        }
    }
}