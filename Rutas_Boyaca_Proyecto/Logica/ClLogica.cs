using Rutas_Boyaca_Proyecto.Datos;
using Rutas_Boyaca_Proyecto.Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Rutas_Boyaca_Proyecto.Logica
{
    public class ClLogica
    {
        public List<ClEntidades> mtdMunicipiosL(int idMunicipio)
        {
            ClMunicipios objMunicipiosD = new ClMunicipios();
            List<ClEntidades> idporMunicipio = objMunicipiosD.mtdMunicipios(idMunicipio);

            return idporMunicipio;

        }
    }
}