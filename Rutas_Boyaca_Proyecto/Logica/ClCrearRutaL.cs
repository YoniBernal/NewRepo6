using Rutas_Boyaca_Proyecto.Datos;
using Rutas_Boyaca_Proyecto.Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Rutas_Boyaca_Proyecto.Logica
{
    public class ClCrearRutaL
    {
        public List<ClCrearRutaE> RMunicipioL()
        {

            ClCrearRutaD crtRuta = new ClCrearRutaD();
            List<ClCrearRutaE> rutaMunicipios = crtRuta.mtdRutaMunicipioo();

            return rutaMunicipios;
        }

        public int mtimg(ClCrearRutaE InsertImag)
        {
            ClCrearRutaD imgg = new ClCrearRutaD();
            int im = imgg.mtdImagen(InsertImag);
            return im;
        }




        public int mtdReComn(ClCrearRutaE RegComen)
        {
            ClCrearRutaD Comrentar = new ClCrearRutaD();
            int regicm = Comrentar.comentariosRM(RegComen);
            return regicm;
        }


        public int mtrRuTa(ClCrearRutaE ru)
        {
            ClCrearRutaD rutaD = new ClCrearRutaD();
            int rrt = rutaD.mtdRuta(ru);
            return rrt;
        }

    }
}