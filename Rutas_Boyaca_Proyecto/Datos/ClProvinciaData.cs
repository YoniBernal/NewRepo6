using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using Rutas_Boyaca_Proyecto.Entidades;

namespace Rutas_Boyaca_Proyecto.Datos
{
    public class ClProvinciaData
    {
        #region Municipios
        public List<ClEntMunicipios> mtdGetMunicipiosById(int idProvincia)
        {
            ClProcesosSQL selectdesconet = new ClProcesosSQL();
            SqlParameter[] parameters = new SqlParameter[]
            {
                new SqlParameter("@idProvincia", idProvincia)
            };

            DataTable dtMunicipio = selectdesconet.CallExecProcedure("GetMunicipiosById", parameters);
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
        public List<ClEntProvincias> mtdProvinciasById(int idProvincia)
        {
            ClProcesosSQL selectdesconet = new ClProcesosSQL();
            SqlParameter[] parameters = new SqlParameter[]
            {
                new SqlParameter("@idProvincia", idProvincia)
            };

            DataTable dtProvincia = selectdesconet.CallExecProcedure("GET_Provincia_BY_ID", parameters);
            List<ClEntProvincias> TablaProvincia = new List<ClEntProvincias>();

            for (int i = 0; i < dtProvincia.Rows.Count; i++)
            {
                ClEntProvincias objProvincia = new ClEntProvincias();
                objProvincia.idProvincia = int.Parse(dtProvincia.Rows[i]["idProvincia"].ToString());
                objProvincia.NombreProvincia = dtProvincia.Rows[i]["NombreProvincia"].ToString();
                objProvincia.Descripcion = dtProvincia.Rows[i]["Descripcion"].ToString();
                objProvincia.Video = dtProvincia.Rows[i]["Video"].ToString();
                objProvincia.Imagen = dtProvincia.Rows[i]["Imagen"].ToString();

                TablaProvincia.Add(objProvincia);
            }

            return TablaProvincia;
        }
        public List<ClEntProvincias> mtdGetActiveProvincias(bool Estado)
        {
            ClProcesosSQL selectdesconet = new ClProcesosSQL();
            SqlParameter[] parameters = new SqlParameter[]
            {
                new SqlParameter("@Estado", Estado)
            };

            DataTable dtProvincia = selectdesconet.CallExecProcedure("GET_Active_Provincias", parameters);
            List<ClEntProvincias> ProvinciaEstado = new List<ClEntProvincias>();

            for (int i = 0; i < dtProvincia.Rows.Count; i++)
            {
                ClEntProvincias objProvincia = new ClEntProvincias();
                objProvincia.idProvincia = int.Parse(dtProvincia.Rows[i]["idProvincia"].ToString());
                objProvincia.NombreProvincia = dtProvincia.Rows[i]["NombreProvincia"].ToString();
                objProvincia.Descripcion = dtProvincia.Rows[i]["Descripcion"].ToString();
                objProvincia.Imagen = dtProvincia.Rows[i]["Imagen"].ToString();
                objProvincia.Estado = Convert.ToBoolean(dtProvincia.Rows[i]["Estado"].ToString());

                ProvinciaEstado.Add(objProvincia);
            }
            return ProvinciaEstado;
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
        #endregion
        public List<ClTipoEstablecimiento> mtdSelectEstablecimiento()
        {
            ClProcesosSQL selectdesconet = new ClProcesosSQL();

            DataTable dtEstablecimiento = selectdesconet.CallExecProcedure("SELECT_ Tipo_Establecimiento", null);
            List<ClTipoEstablecimiento> Establecimiento = new List<ClTipoEstablecimiento>();


            for (int i = 0; i < dtEstablecimiento.Rows.Count; i++)
            {
                ClTipoEstablecimiento objEstable = new ClTipoEstablecimiento();
                objEstable.idTipo = int.Parse(dtEstablecimiento.Rows[i]["idTipo"].ToString());
                objEstable.Nombre = dtEstablecimiento.Rows[i]["Nombre"].ToString();


                Establecimiento.Add(objEstable);
            }

            return Establecimiento;
        }
        public ClIngresoUsuario mtdIngreso(string Email, string Clave)
        {
            ClProcesosSQL selectdesconet = new ClProcesosSQL();
            SqlParameter[] parameters = new SqlParameter[]
            {
                new SqlParameter("@Email", Email),
                new SqlParameter("@Clave", Clave)
            };

            DataTable dtIngreso = selectdesconet.CallExecProcedure("Ingresar_Usuario", parameters);
            ClIngresoUsuario objUser = new ClIngresoUsuario();


            if (dtIngreso.Rows.Count > 0)
            {
                var rowData = dtIngreso.Rows[0];

                objUser.idUsuario = int.Parse(rowData["idUsuario"].ToString());
                objUser.Nombre = rowData["Nombre"].ToString();
                objUser.Documento = rowData["Documento"].ToString();
                objUser.Email = rowData["Email"].ToString();
                objUser.Celular = rowData["Celular"].ToString();
                objUser.Foto = rowData["Foto"].ToString();
                objUser.Clave = rowData["Clave"].ToString();
                if (!string.IsNullOrEmpty(rowData["idMunicipio"].ToString()))
                {
                    objUser.idMunicipio = int.Parse(rowData["idMunicipio"].ToString());

                }
                objUser.idRol = int.Parse(rowData["idRol"].ToString());

            }

            return objUser;

        }
        public string mtdRegisterUsers(string Documento, string Nombre, string Email,
            string Celular, string Foto, string Clave, int idMunicipio, int idRol)
        {
            ClProcesosSQL selectdesconet = new ClProcesosSQL();
            SqlParameter[] parameters = new SqlParameter[]
            {
                new SqlParameter("@Documento", Documento),
                new SqlParameter("@Nombre", Nombre),
                new SqlParameter("@Email", Email),
                new SqlParameter("@Celular", Celular),
                new SqlParameter("@Foto", Foto),
                new SqlParameter("@Clave", Clave),
                new SqlParameter("@idMunicipio", idMunicipio),
                new SqlParameter("@idRol", idRol)
            };

            DataTable dtIngreso = selectdesconet.CallExecProcedure("Register_User", parameters);

            if (dtIngreso.Rows.Count > 0)
            {
                var row = dtIngreso.Rows[0];

                if (!Convert.ToBoolean(row["Result"].ToString()))
                {
                    return row[1].ToString();
                }

            }
            return "";
        }
    }
}