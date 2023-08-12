using Rutas_Boyaca_Proyecto.Datos;
using Rutas_Boyaca_Proyecto.Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Rutas_Boyaca_Proyecto.Logica
{
    public class ClPqrL
    {
        public int mtdque(ClPqrEntidades pq)
        {
            ClPQR clPQR = new ClPQR();
            int comepqr = clPQR.mtdPQR(pq);
            return comepqr;
        }
    }
}