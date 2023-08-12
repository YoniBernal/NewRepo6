using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using Rutas_Boyaca_Proyecto.Entidades;

namespace Rutas_Boyaca_Proyecto.Datos
{
    public class ClEstablecimientoDatos
    {
        public string mtdRegisterStore(string NombreEstablecimiento, string Direccion, string Descripcion, string Foto, int idTipo,
           int idUsuario, int idCategoriaEstbl, int idMunicipio)
        {
            ClProcesosSQL selectdesconet = new ClProcesosSQL();
            SqlParameter[] parameters = new SqlParameter[]
            {
                new SqlParameter("@NombreEstablecimiento", NombreEstablecimiento),
                new SqlParameter("@Direccion", Direccion),
                new SqlParameter("@Descripcion", Descripcion),
                new SqlParameter("@Foto", Foto),
                new SqlParameter("@idTipo", idTipo),
                new SqlParameter("@idUsuario", idUsuario),
                new SqlParameter("@idCategoriaEstbl", idCategoriaEstbl),
                new SqlParameter("@idMunicipio", idMunicipio)
            };

            DataTable dtEstablecimiento = selectdesconet.CallExecProcedure("Register_Store", parameters);
            if (dtEstablecimiento.Rows.Count > 0)
            {
                var row = dtEstablecimiento.Rows[0];
                if (!Convert.ToBoolean(row["Result"].ToString()))
                {
                    return row[1].ToString();
                }
            }
            return "";
        }

        public List<ClEntMunicipios> mtdGetMunicipios()
        {
            ClProcesosSQL selectdesconet = new ClProcesosSQL();

            DataTable dtMunicipio = selectdesconet.CallExecProcedure("GetMunicipios", null);
            List<ClEntMunicipios> Municipios = new List<ClEntMunicipios>();

            for (int i = 0; i < dtMunicipio.Rows.Count; i++)
            {
                ClEntMunicipios objMunic = new ClEntMunicipios();
                objMunic.idMunicipio = int.Parse(dtMunicipio.Rows[i]["idMunicipio"].ToString());
                objMunic.Nombre = dtMunicipio.Rows[i]["Nombre"].ToString();

                Municipios.Add(objMunic);
            }
            return Municipios;
        }

        public List<ClTipoEstablecimiento> mtdGetTipoEstablecimiento()
        {
            ClProcesosSQL selectdesconet = new ClProcesosSQL();

            DataTable dtEstablecimiento = selectdesconet.CallExecProcedure("GetTipoEstablecimiento", null);
            List<ClTipoEstablecimiento> Establecimientos = new List<ClTipoEstablecimiento>();

            for (int i = 0; i < dtEstablecimiento.Rows.Count; i++)
            {
                ClTipoEstablecimiento objMunic = new ClTipoEstablecimiento();
                objMunic.idTipo = int.Parse(dtEstablecimiento.Rows[i]["idTipo"].ToString());
                objMunic.Nombre = dtEstablecimiento.Rows[i]["Nombre"].ToString();

                Establecimientos.Add(objMunic);
            }
            return Establecimientos;
        }

        public List<ClCategoriaEstablecimiento> mtdGetCategoriaEstablecimiento()
        {
            ClProcesosSQL selectdesconet = new ClProcesosSQL();

            DataTable dtCategoriaEstablecimiento = selectdesconet.CallExecProcedure("GetCategoryStore", null);
            List<ClCategoriaEstablecimiento> Categoria = new List<ClCategoriaEstablecimiento>();

            for (int i = 0; i < dtCategoriaEstablecimiento.Rows.Count; i++)
            {
                ClCategoriaEstablecimiento objMunic = new ClCategoriaEstablecimiento();
                objMunic.idCategoriaEstbl = int.Parse(dtCategoriaEstablecimiento.Rows[i]["idCategoriaEstbl"].ToString());
                objMunic.Categoria = dtCategoriaEstablecimiento.Rows[i]["Categoria"].ToString();

                Categoria.Add(objMunic);
            }
            return Categoria;
        }


        public ClIngresoUsuario GetUserInfo(int idUsuario)
        {
            ClProcesosSQL selectdesconet = new ClProcesosSQL();
            ClIngresoUsuario objUserPhoto = new ClIngresoUsuario();

            SqlParameter[] parameters = new SqlParameter[]
           {
                new SqlParameter("@idUsuario", idUsuario),

           };
            DataTable dtUser = selectdesconet.CallExecProcedure("GetUserInfo", parameters);
            objUserPhoto.Nombre = dtUser.Rows[0]["Nombre"].ToString();
            objUserPhoto.Foto = dtUser.Rows[0]["Foto"].ToString();

            return objUserPhoto;


        }


    }
}
