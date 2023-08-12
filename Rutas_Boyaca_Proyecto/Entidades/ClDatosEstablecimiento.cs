using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Rutas_Boyaca_Proyecto.Entidades
{
    public class ClDatosEstablecimiento
    {
        public string NombreEstablecimiento { get; set; }
        public string Direccion { get; set; }
        public string Descripcion { get; set; }
        public string Foto { get; set; }
        public int idTipo { get; set; }
        public int idUsuario { get; set; }
        public int idCategoriaEstbl { get; set; }
        public int idMunicipio { get; set; }
    }
}