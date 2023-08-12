<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ruta.aspx.cs" Inherits="Rutas_Boyaca_Proyecto.Vista.Ruta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/multi-select/0.9.12/css/multi-select.min.css" rel="stylesheet" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet" />

    <link href="Css/CrearRuta.css" rel="stylesheet" />
    <link href="Css/Modal.css" rel="stylesheet" />

    <style>
        body {
    font-family: 'Architects Daughter', cursive;
    margin: 20px auto;
    text-align: center;
    /*    background-color: azure;*/
    background-image: url('Imagenes/pexels-eugene-golovesov-7825574.jpg');
}
    </style>


    <style>
          body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }

        .nav {
            display: flex;
        justify-content: space-between; /* Distribuye los elementos del menú a lo largo del nav */
        align-items: center; /* Centra verticalmente los elementos del menú */
        background-color:transparent; /* Color de fondo del nav */
        padding: 20px; 
        }

       
           .nav .logo {
            color: #fff; /* Color del texto del logo */
        font-size: 24px;
        text-decoration: none;
            }

        .nav ul {
           list-style: none;
        margin: 0;
        padding: 0;
        display: flex;
        }

        .nav li {
           margin-left: 20px; /* Flotar a la derecha */
        }

        .nav li a {
            color: #fff; /* Color del texto de los enlaces del menú */
        text-decoration: none;
        }

        .nav   li a:hover {
        text-decoration: underline; /* Subraya el enlace al pasar el mouse sobre él */
    }
    </style>

    <title></title>
</head>
<body>

      <nav class="nav">        
        <a href="Principal.aspx" class="logo">RUTAS BOYACÁ</a>
        <ul>
            <li><a href="Provincias.aspx" class="active">Provincias</a></li>
            <li><a href="Mapa.aspx">Municipios</a></li>
            <li><a href="Anillo.aspx">Anillos</a></li>
            <li><a href="Registro.aspx">Crear ruta</a></li>
        </ul>
    </nav>

    <form id="form1" runat="server">
        <div class="container">
            <div class="form-container">
                <h1>Crear Ruta por Boyacá</h1>
                <br />
                <div class="container">
                    <div class="form-container">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="form-label">Selecciona los municipios por los que deseas pasar</label>
                                    <asp:DropDownList runat="server" ID="mySelect" CssClass="form-control" Multiple="Multiple"></asp:DropDownList>
                                    <br />
                                    <br />
                                </div>
  <div id="tarjetaContainer" style="display: block;">
        <div id="tarjeta" class="tarjeta">
            <div class="tarjeta-body">
                <h3>Guardar la ruta</h3>
                <label for="tituloComentario">Titulo del Comentario</label>
                <asp:TextBox ID="txtTiComentario" runat="server"></asp:TextBox>
                <label for="comentario">Comentar</label>
                <asp:TextBox ID="txtComentar" runat="server"></asp:TextBox>
<%--                <label for="nombreImagen">Nombre de la imagen</label>
                <asp:TextBox ID="txtN_Imagen" runat="server"></asp:TextBox>--%>
                <br />
                <br />
                <asp:Button ID="btncic" runat="server" Text="Guardar"  OnClick="btncic_Click"/>
             
            </div>
        </div>
    </div>          
                                <button class="floating-button" onclick="abrirModal()">+</button>
                                <div id="modal" class="modal">
                                    <div class="modal-content">
                                        <span class="close" onclick="cerrarModal()">&times;</span>
                                        <h2>Peticiones Quejas o Reclamos</h2>
                                        <asp:Panel ID="formulario" runat="server">
                                            <label for="nombre">Titulo</label>
                                            <asp:TextBox ID="txtTitulo" runat="server" Required="true" />
                                            <br />
                                            <br />
                                            <label for="mensaje">Mensaje</label>
                                            <asp:TextBox ID="txtMensaje" runat="server" TextMode="MultiLine" Required="true"></asp:TextBox>
                                            <br />
                                            <br />
                                            <asp:Button ID="btnEnviar" runat="server" Text="Enviar comentario" OnClick="btnEnviar_Click" />
                                            
                                        </asp:Panel>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div> b
                    <div>
                        <div>
                       <label for="NRuta">Nombre Ruta</label>
            <asp:TextBox ID="txtNombreRuta" runat="server"></asp:TextBox>
        </div>
        <br />
        <div class="map-container">
            <div id="canvas-container">
                <canvas id="canvas"></canvas>
            </div>
        </div>
        <br />
        <br />
    </div>
                </div>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/multi-select/0.9.12/js/jquery.multi-select.min.js"></script>
        <script>

            function abrirModal() {
                var modal = document.getElementById("modal");
                if (modal.style.display !== "block") {
                    modal.style.display = "block";
                    document.getElementById("txtTitulo").value = "";
                    document.getElementById("txtMensaje").value = ""; 
                }
            }

            function cerrarModal() {
                document.getElementById("modal").style.display = "none";
            }
        </script>
        <script src="js/CrearRuta.js"></script>
    </form>
</body>
</html>

