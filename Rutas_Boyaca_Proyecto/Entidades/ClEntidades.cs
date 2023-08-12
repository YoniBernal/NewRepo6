using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Rutas_Boyaca_Proyecto.Entidades
{
    public class ClEntidades
    {
        public int idMunicipio { get; set; }
        public string Nombre { get; set; }
        public string Extension { get; set; }
        public string Numerohabitantes { get; set; }
        public string Latitud { get; set; }
        public string Longitud { get; set; }
        public string Bandera { get; set; }
        public string Imagen { get; set; }
        public string DEscripcion { get; set; }
        public string Clima { get; set; }
        public string Ubicacion { get; set; }
        public int idProvincia { get; set; }
        public int idAnilloTuristico { get; set; }

    }
}