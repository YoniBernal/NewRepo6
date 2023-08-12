using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Rutas_Boyaca_Proyecto.Entidades
{
    public class ClCrearRutaE
    {
        public int idRutaMr { get; set; }

        public int IdMunicipio { get; set; }

        public int idUsuario { get; set; }

        public string NombreTM { get; set; }

        public string DescripcionTM { get; set; }

        public string TituloComentario { get; set; }

        public string Comentario { get; set; }

        public string Imagen { get; set; }

        public string NombreRuta { get; set; }

    }
}