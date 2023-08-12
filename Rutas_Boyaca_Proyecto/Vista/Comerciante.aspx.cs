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
    public partial class Comerciante : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string idUsuario = Session["idUsuario"]?.ToString();

                if (string.IsNullOrEmpty(idUsuario))
                    Response.Redirect("~/Vista/Registro.aspx");

                switch (Session["idRol"].ToString())
                {
                    case "1":
                        Response.Redirect("~/Vista/Alcaldia.aspx");
                        break;
                    case "3":
                        Response.Redirect("~/Vista/Turista.aspx");
                        break;
                }
                LoadAllElements();
            }
        }

        public void LoadAllElements()
        {
            ClLogComerciante objUsuEnt = new ClLogComerciante();

            var mtdGetMunicipios = objUsuEnt.mtdGetMunicipios();
            var mtdTypeStores = objUsuEnt.mtdGetTipoEstablecimientos();
            var mtdCategoriaEstablecimiento = objUsuEnt.mtdGetCategory();
            LoadMunicipiosToDdl(mtdGetMunicipios, ddlMunicipio);
            LoadTipoEstablecimientoToDdl(mtdTypeStores, ddlTipos);
            LoadCategoriaEstablecimientoToDdl(mtdCategoriaEstablecimiento, ddlCategorias);
        }

        public void LoadMunicipiosToDdl(List<ClEntMunicipios> municipios, DropDownList dropDownList)
        {
            dropDownList.DataSource = municipios;
            dropDownList.DataTextField = "Nombre";
            dropDownList.DataValueField = "idMunicipio";
            dropDownList.DataBind();
        }

        public void LoadTipoEstablecimientoToDdl(List<ClTipoEstablecimiento> tipo, DropDownList dropDownList)
        {
            dropDownList.DataSource = tipo;
            dropDownList.DataTextField = "Nombre";
            dropDownList.DataValueField = "idTipo";
            dropDownList.DataBind();
        }

        public void LoadCategoriaEstablecimientoToDdl(List<ClCategoriaEstablecimiento> categoria, DropDownList dropDownList)
        {
            dropDownList.DataSource = categoria;
            dropDownList.DataTextField = "Categoria";
            dropDownList.DataValueField = "idCategoriaEstbl";
            dropDownList.DataBind();
        }

        protected void btnRegistrarEstablecimiento_Click(object sender, EventArgs e)
        {
            string imd = txtNombre.Text + ".png";

            ClDatosEstablecimiento objsUsers = new ClDatosEstablecimiento();
            objsUsers.NombreEstablecimiento = txtNombre.Text;
            objsUsers.Direccion = txtDireccion.Text;
            objsUsers.Descripcion = txtDesc.InnerText;
            objsUsers.Foto = imd;
            objsUsers.idTipo = Convert.ToInt32(ddlTipos.SelectedValue);
            objsUsers.idUsuario = Convert.ToInt32(Session["idUsuario"].ToString());
            objsUsers.idCategoriaEstbl = Convert.ToInt32(ddlCategorias.SelectedValue);
            objsUsers.idMunicipio = Convert.ToInt32(ddlMunicipio.SelectedValue);

            string script;

            // Realiza la validación de los datos antes de intentar el registro
            if (string.IsNullOrEmpty(txtNombre.Text) || string.IsNullOrEmpty(txtDireccion.Text) || string.IsNullOrEmpty(txtDesc.InnerText))
            {
                string mensaje = "Debe ingresar todos los datos";
                script = "<script type=\"text/javascript\">alert('" + mensaje + "');</script>";
                ClientScript.RegisterStartupScript(this.GetType(), "Mensaje", script);
                return; // Detiene el proceso de registro si falta algún dato requerido
            }

            // Si todos los datos requeridos están completos, procede con el registro
            ClLogComerciante objUslogic = new ClLogComerciante();
            string result = objUslogic.mtdRegistroStore(objsUsers.NombreEstablecimiento, objsUsers.Direccion, objsUsers.Descripcion,
            objsUsers.Foto, objsUsers.idTipo, objsUsers.idUsuario, objsUsers.idMunicipio, objsUsers.idCategoriaEstbl);

            if (string.IsNullOrEmpty(result))
            {
                string mensaje = "Datos Registrados";
                script = "<script type=\"text/javascript\">alert('" + mensaje + "');</script>";
                ClientScript.RegisterStartupScript(this.GetType(), "Mensaje", script);
            }

        }
    }
}