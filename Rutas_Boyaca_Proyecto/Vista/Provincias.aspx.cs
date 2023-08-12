using Rutas_Boyaca_Proyecto.Logica;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Rutas_Boyaca_Proyecto.Vista
{
    public partial class Provincias : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            ClLogProvincias LogicaMuni = new ClLogProvincias();
            var provincias = LogicaMuni.mtdGetActiveProvincias(true);

            rep1.DataSource = provincias;
            rep1.DataBind();
        }
    }
}