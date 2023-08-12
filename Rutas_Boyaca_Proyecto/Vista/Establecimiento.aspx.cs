using Rutas_Boyaca_Proyecto.Entidades;
using Rutas_Boyaca_Proyecto.Logica;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



namespace Rutas_Boyaca_Proyecto.Vista
{
    public partial class Establecimiento : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                ClLogComerciante LogComerciante = new ClLogComerciante();
                string idUsuario = Session["idUsuario"]?.ToString();

                if (!string.IsNullOrEmpty(idUsuario))
                {

                    var result = LogComerciante.GetUserInfo(int.Parse(idUsuario));

                    lblUserName.Text = result.Nombre;
                    UserPhoto.ImageUrl = "/Imagenes/UserPicks/" + result.Foto;
                }
            }
        }

        protected void btnRedireccionar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Comerciante.aspx");
        }
    }
}