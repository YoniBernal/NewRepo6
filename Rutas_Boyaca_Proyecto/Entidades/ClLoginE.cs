using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Rutas_Boyaca_Proyecto.Entidades
{
    public class ClLoginE
    {
        public int idUsuario { get; set; }
        public string Usuario { get; set; }

        public string Nombres { get; set; }

        public string Apelidos { get; set; }

        public string Correo { get; set; }

        public string Clave { get; set; }
    }
}