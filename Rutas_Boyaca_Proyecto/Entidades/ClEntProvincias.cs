using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Rutas_Boyaca_Proyecto.Entidades
{
    public class ClEntProvincias
    {
        public int idProvincia { get; set; }
        public string NombreProvincia { get; set; }
        public string Descripcion { get; set; }
        public string Imagen { get; set; }
        public string Video { get; set; }
        public bool Estado { get; set; }
    }
}