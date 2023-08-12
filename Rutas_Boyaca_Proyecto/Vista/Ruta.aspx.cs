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
    public partial class Ruta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarDatosRutaMunicipio();
            }
        }


        protected void CargarDatosRutaMunicipio()
        {
            ClCrearRutaL rutaL = new ClCrearRutaL();
            List<ClCrearRutaE> lista = new List<ClCrearRutaE>();
            lista = rutaL.RMunicipioL();

            mySelect.DataSource = lista;
            mySelect.DataTextField = "NombreTM";
            mySelect.DataValueField = "IdMunicipio";
            mySelect.DataBind();
        }


        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            ClPqrEntidades pqrEn = new ClPqrEntidades();
            pqrEn.Titulo = txtTitulo.Text;
            pqrEn.Desripcion = txtMensaje.Text;

            pqrEn.idUsuario = int.Parse(Session["idUsuario"].ToString()); 

            ClPqrL PQRL = new ClPqrL();
            int regis = PQRL.mtdque(pqrEn);

            string script;
            if (regis == 0)
            {
                script = "<script type=\"text/javascript\">alert('Datos Registrados');</script>";
                ClientScript.RegisterStartupScript(this.GetType(), "Mensaje", script);
            }

        }

        protected void btncic_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(txtTitulo.Text) && !string.IsNullOrEmpty(txtMensaje.Text))
            {
                ClCrearRutaE guardar = new ClCrearRutaE();

                guardar.idUsuario = int.Parse(Session["idUsuario"].ToString());

                guardar.TituloComentario = txtTiComentario.Text;
                guardar.Comentario = txtComentar.Text;
                guardar.NombreRuta = txtNombreRuta.Text;

                // Obtener los nombres seleccionados del drop-down list
                List<string> nombresSeleccionados = new List<string>();
                foreach (ListItem item in mySelect.Items)
                {
                    if (item.Selected)
                    {
                        nombresSeleccionados.Add(item.Text);
                    }
                }
                // Concatenar los nombres seleccionados en una cadena separada por comas
                string nombresConcatenados = string.Join(", ", nombresSeleccionados);

                guardar.Imagen = nombresConcatenados;

                ClCrearRutaL guardarR = new ClCrearRutaL();
                int gua = guardarR.mtdReComn(guardar);

                txtTiComentario.Text = "";
                txtComentar.Text = "";
                txtNombreRuta.Text = "";
                mySelect.ClearSelection();


            }
        }

    }
}


