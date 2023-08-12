using Rutas_Boyaca_Proyecto.Entidades;
using Rutas_Boyaca_Proyecto.Logica;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Rutas_Boyaca_Proyecto.Vista
{
    public partial class InformacionProvincia : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["idProvincia"] != null)
            {
                int idProvincia = int.Parse(Request.QueryString["idProvincia"]);

                ClLogProvincias LogicaProvi = new ClLogProvincias();
                var provincia = LogicaProvi.mtdProvinciasById(idProvincia);

                if (provincia.Count > 0)
                {
                    ClEntProvincias prov = provincia[0];
                    lblNombre.Text = prov.NombreProvincia;
                    lbldescripcion.Text = prov.Descripcion;
                }

                var municipios = LogicaProvi.mtdGetMunicipiosByIds(idProvincia);

                         
                if (municipios.Count > 0)
                {
                    ListaMunicipios.DataSource = municipios;
                    ListaMunicipios.DataBind();
                }
                       }

        }

     }
 }
