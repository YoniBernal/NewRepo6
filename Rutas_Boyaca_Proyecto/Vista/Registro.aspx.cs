using Rutas_Boyaca_Proyecto.Datos;
using Rutas_Boyaca_Proyecto.Entidades;
using Rutas_Boyaca_Proyecto.Logica;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;



namespace Rutas_Boyaca_Proyecto.Vista
{
    public partial class Registro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                LoadAllElements();

            }
        }

        public void LoadAllElements()
        {
            ClLogProvincias objUsuEnt = new ClLogProvincias();
            var mtdGetMunicipios = objUsuEnt.mtdGetMunicipios();

            LoadMunicipiosToDdl(mtdGetMunicipios, ddlMunicipio);
        }

        public void LoadMunicipiosToDdl(List<ClEntMunicipios> municipios, DropDownList dropDownList)
        {
            dropDownList.DataSource = municipios;
            dropDownList.DataTextField = "Nombre";
            dropDownList.DataValueField = "idMunicipio";
            dropDownList.DataBind();
        }

        public void btnLogin_Click(object sender, EventArgs e)
        {
            ClLogProvincias objUser = new ClLogProvincias();

            string Email = txtCorreoUsuario.Text;
            string Clave = txtClaveUsuario.Text;

            if (string.IsNullOrEmpty(Email) || string.IsNullOrEmpty(Clave))
            {
                string mensaje = "Debe digitar un usuario y una contraseña";
                string script = "<script type=\"text/javascript\">alert('" + mensaje + "');</script>";

                ClientScript.RegisterStartupScript(this.GetType(), "Mensaje", script);

                return;
            }

            var obUsr = objUser.mtdLogearUsuario(Email, Clave);

            if (obUsr.idUsuario == 0)
            {
                string mensaje = "Datos no encontrados, debe registrarse";
                string script = "<script type=\"text/javascript\">alert('" + mensaje + "');</script>";

                ClientScript.RegisterStartupScript(this.GetType(), "Mensaje", script);
                return;
            }

            Session["idUsuario"] = obUsr.idUsuario;
            Session["idRol"] = obUsr.idRol;

            if (obUsr.idRol == 1)
            {
                Response.Redirect("~/Vista/Alcaldia.aspx");
            }
            else if (obUsr.idRol == 2)
            {
                Response.Redirect("~/Vista/Establecimiento.aspx");
            }
            else if (obUsr.idRol == 3)
            {
                //idMunicipio = 0;
                Response.Redirect("~/Vista/Ruta.aspx");
            }
        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            string imgname = "";

            ClRegisterUser objsUsers = new ClRegisterUser();
            objsUsers.Documento = txtDocumento.Text;
            objsUsers.Nombre = txtNombre.Text;
            objsUsers.Email = txtEmail.Text;
            objsUsers.Celular = txtCelular.Text;
            objsUsers.Clave = txtContraseña.Text;
            objsUsers.idRol = Convert.ToInt32(rblTipoUsuario.SelectedValue);
            objsUsers.idMunicipio = Convert.ToInt32(ddlMunicipio.SelectedValue);


            if (fuImagen.HasFile)
            {

                imgname = fuImagen.FileName;
                string path = Server.MapPath("~/Imagenes/UserPicks/" + imgname);
                fuImagen.SaveAs(path);

            }
            objsUsers.Foto = imgname;

            if (objsUsers.idRol == 3)
            {
                objsUsers.idMunicipio = 0;
            }

            ClLogProvincias objUslogic = new ClLogProvincias();
            string Result = objUslogic.mtdRegistroUser(objsUsers.Documento, objsUsers.Nombre, objsUsers.Email, objsUsers.Celular,
                objsUsers.Foto, objsUsers.Clave, objsUsers.idMunicipio, objsUsers.idRol);

            string script;
            if (string.IsNullOrEmpty(Result))
            {
                script = "<script type=\"text/javascript\">alert('Datos Registrados');</script>";
                ClientScript.RegisterStartupScript(this.GetType(), "Mensaje", script);
            }
            else
            {
                script = "<script type=\"text/javascript\">alert('Debe registrar todos los datos');</script>";
                ClientScript.RegisterStartupScript(this.GetType(), "Mensaje", script);
                Response.Redirect("~/Vista/Registro.aspx");

            }


        }
    }
}