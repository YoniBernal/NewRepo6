<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="Rutas_Boyaca_Proyecto.Vista.Registro" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="CSS/Registro.css" rel="stylesheet" />
<style>

    body{
        background-image:url("Imagenes/pexels-eugene-golovesov-7825574.jpg");
    }

        /* Estilos para el nav */
        .nav {
            display: flex;
            justify-content: space-between; /* Distribuye los elementos del menú a lo largo del nav */
            align-items: center; /* Centra verticalmente los elementos del menú */
            background-color: #333; /* Color de fondo del nav */
            padding: 20px; /* Espaciado interno del nav */
        }

        .logo {
            color: #fff; /* Color del texto del logo */
            font-size: 24px;
            text-decoration: none;
        }

        ul {
            list-style: none;
            margin: 0;
            padding: 0;
            display: flex;
        }

        li {
            margin-left: 20px; /* Espaciado entre elementos del menú */
        }

            li:first-child {
                margin-left: 0; /* Elimina el margen izquierdo para el primer elemento del menú */
            }

            li a {
                color: #fff; /* Color del texto de los enlaces del menú */
                text-decoration: none;
            }

                li a:hover {
                    text-decoration: underline; /* Subraya el enlace al pasar el mouse sobre él */
                }
    </style>

    <title>Registro</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <header class="header">
                <nav class="nav">
                    <a href="Principal.aspx" class="logo">RUTAS BOYACÁ</a>
                    <ul>
                        <li><a href="Provincias.aspx" class="active">Provincias</a></li>
                        <li><a href="Mapa.aspx">Municipios</a></li>
                        <li><a href="Anillo.aspx">Anillos</a></li>
                    </ul>
                </nav>
            </header>
        </div>
        <br />
     
        <div>
            <div class="cont">
                <div class="form sign-in">
                    <h2>Bienvenidos</h2>

                    <label>
                        <span>Correo</span>
                        <asp:TextBox ID="txtCorreoUsuario" runat="server" AutoComplete="off"></asp:TextBox>
                    </label>
                    <label>
                        <span>Contraseña</span>
                        <asp:TextBox ID="txtClaveUsuario" TextMode="Password" runat="server" autocomplete="off"></asp:TextBox>
                    </label>
                    <p class="forgot-pass"></p>
                    <asp:Button ID="btnIngresar" CssClass="btn" runat="server" Text="Ingresar" value="Ingresar" OnClick="btnLogin_Click" />

                </div>
                <div class="sub-cont">
                    <div class="img">
                        <div class="img__text m--up">
                            <h4>¿Desea Registrarse?</h4>

                        </div>
                        <div class="img__text m--in">
                            <h4>Iniciar Sesión</h4>
                        </div>
                        <div class="img__btn">
                            <span class="m--up">Registrar</span>
                            <span class="m--in">Ingresar</span>
                        </div>
                    </div>
                    <div class="form sign-up">
                        <h2>Registrate</h2>

                        <label>
                            <span>Registrarse Como:</span>
                        </label>
                        <asp:RadioButtonList ID="rblTipoUsuario" runat="server" CssClass="tipoUsuarioRadioButtons">
                            <asp:ListItem Text="Alcaldia" Value="1" />
                            <asp:ListItem Text="Comerciante" Value="2" />
                            <asp:ListItem Text="Turista" Value="3" />
                        </asp:RadioButtonList>

                         <div runat="server" id="ddlMunicipios">
                            <label>Seleccione el Municipio:</label>
                            <asp:DropDownList ID="ddlMunicipio" CssClass="ddlMunicipio" runat="server"
                                AppendDataBound="true"
                                Visible="True">
                            </asp:DropDownList>
                        </div>

                        <label>
                            <span>Ingrese su N° Documento:</span>
                            <asp:TextBox ID="txtDocumento" runat="server" autocomplete="off"></asp:TextBox>
                        </label>

                        <label>
                            <span>Ingrese su Nombre:</span>
                            <asp:TextBox ID="txtNombre" runat="server" autocomplete="off"></asp:TextBox>
                        </label>

                        <label>
                            <span>Ingrese su N° Celular:</span>
                            <asp:TextBox ID="txtCelular" runat="server" autocomplete="off"></asp:TextBox>
                        </label>

                        <label>
                            <span>Ingrese su Email</span>
                            <asp:TextBox ID="txtEmail" runat="server" autocomplete="off"></asp:TextBox>
                        </label>

                        <label>
                            <span>Contraseña</span>
                            <asp:TextBox ID="txtContraseña" TextMode="Password" runat="server"></asp:TextBox>
                        </label>
                        
                        <label>
                            <asp:Label ID="lblImagenUsuario" runat="server" Text="Imagen de usuario"></asp:Label>
                            <asp:FileUpload ID="fuImagen" runat="server" />
                            <br />
                        </label>                        

                        <asp:Button ID="Button1" CssClass="btn" runat="server" Text="Registrar" value="Registrar" OnClick="btnRegistrar_Click" />

                    </div>
                </div>
            </div>
        </div>

        <script>
            document.querySelector('.img__btn').addEventListener('click', function () {
                document.querySelector('.cont').classList.toggle('s--signup');
            });

            document.addEventListener("DOMContentLoaded", function () {
                var ddlMunicipios = document.getElementById("ddlMunicipios");
                var rblTipoUsuario = document.getElementsByName("rblTipoUsuario");

                ddlMunicipios.style.display = "none";

                for (var i = 0; i < rblTipoUsuario.length; i++) {
                    rblTipoUsuario[i].addEventListener("change", function () {
                        ddlMunicipios.style.display = (this.value !== "2" && this.value !== "3") ? "block" : "none";
                    });
                }
            });
        </script>

    </form>
</body>
</html>