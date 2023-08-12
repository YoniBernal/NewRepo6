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
    public partial class Municipio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                {
                    if (Request.QueryString["idMunicipio"] != null)
                    {
                        int idMunicipio = int.Parse(Request.QueryString["idMunicipio"]);

                        ClLogica LogicaSoga = new ClLogica();
                        var municipio = LogicaSoga.mtdMunicipiosL(idMunicipio);

                        if (municipio.Count > 0)
                        {
                            ClEntidades muni = municipio[0];
                            location.Text = muni.Nombre;
                            lblLongitud.Text = muni.Longitud;
                            lblLatitud.Text = muni.Latitud;
                            lblUbicacion.Text = muni.Ubicacion;
                            lblNombre_C.InnerText = muni.Nombre;
                            lblDescripcion.InnerText = muni.DEscripcion;
                            lblN_Hbit.Text = muni.Numerohabitantes;
                            lblExte.Text = muni.Extension;


                            string bandera = muni.Bandera;
                            string imageUrl = muni.Imagen;

                            if (!string.IsNullOrEmpty(imageUrl))
                            {
                                imageMunicipi.ImageUrl = imageUrl;
                            }
                            if (!string.IsNullOrEmpty(bandera))
                            {
                                BanderasB.ImageUrl = bandera;
                            }
                        }
                    }
                }
            }
        }
    }
