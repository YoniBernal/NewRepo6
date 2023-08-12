<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Establecimiento.aspx.cs" Inherits="Rutas_Boyaca_Proyecto.Vista.Establecimiento" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="CSS/Establecimiento.css" rel="stylesheet" />

    <style>
        html {
    background-color: #fefefe;
    box-sizing: border-box;
    font-family: 'Roboto', sans-serif;
    font-size: 14px;
    font-weight: 400;
}

/* Contenedor principal */
.container {
    width: 100%;
    max-width: 330px;
    margin: 35px auto;
    padding: 70px;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.3);
}

/* Encabezado */
.header {
    background-color: #a45858;
    color: #ffffff;
    text-align: center;
    padding: 15px;
    font-size: 20px;
}

/* Overlay para el encabezado */
.overlay-header {
    background-color: #a45858;
    height: 80px;
    margin: -50px 0 0 -25%;
    transform: rotate(-10deg);
    width: 130%;
    z-index: -1;
    position: absolute;
}

/* Cuerpo del contenido */
.body {
    background-color: #f2f4f4;
    color: #333333;
    padding: 15px;
    position: relative;
    z-index: 1;
}

/* Formulario */
.form-container {
    margin-top: 20px; /* Desplazado hacia abajo */
}

/* Tarjeta */
.card {
    background: #ffffff;
    border-radius: 5px;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    margin: 10px 0;
    padding: 10px;
}

.card-heading {
    font-size: 14px;
    text-transform: uppercase;
    margin-bottom: 5px;
}

.card-more {
    cursor: pointer;
    float: right;
    color: #a45858;
}

.card-list {
    list-style-type: none;
    margin: 10px 0 0;
    padding: 0;
    white-space: nowrap;
    overflow-x: auto;
}

.card-list::-webkit-scrollbar {
    height: 3px;
    background-color: #f5f5f5;
}

.card-list li {
    display: inline-block;
    margin-right: 10px;
}

.card-list img {
    width: 100px;
    height: 100px;
    object-fit: cover;
    border-radius: 5px;
}
    </style>


    <title>Establecimiento</title>
</head>
<body>
    <form id="form1" runat="server">
        
            <div class="ba">

            <div class="container">
                <div class="header-container">
                    <div class="header">
                        <svg fill="#ffffff" height="18" viewBox="0 0 24 24" width="18" xmlns="http://www.w3.org/2000/svg" class="header-icon">
                            <path d="M0 0h24v24H0z" fill="none" />
                            <path d="M3 18h18v-2H3v2zm0-5h18v-2H3v2zm0-7v2h18V6H3z" />
                        </svg>

                        <svg fill="#ffffff" height="18" viewBox="0 0 24 24" width="18" xmlns="http://www.w3.org/2000/svg" class="u-float-right header-icon">
                            <path d="M15.5 14h-.79l-.28-.27C15.41 12.59 16 11.11 16 9.5 16 5.91 13.09 3 9.5 3S3 5.91 3 9.5 5.91 16 9.5 16c1.61 0 3.09-.59 4.23-1.57l.27.28v.79l5 4.99L20.49 19l-4.99-5zm-6 0C7.01 14 5 11.99 5 9.5S7.01 5 9.5 5 14 7.01 14 9.5 11.99 14 9.5 14z" />
                            <path d="M0 0h24v24H0z" fill="none" />
                        </svg>
                    </div>
                    <!-- END header -->
                </div>

                <div class="overlay-header"></div>
                <div class="body">
                    <asp:ImageButton ID="UserPhoto" runat="server" Height="90px" CssClass="rounded-circle nav-item mx-2" />
                    <br />
                    <asp:Label ID="lblUserName" runat="server" Text="---" CssClass="nav-item"></asp:Label>
                    <br />                    
                   
                 <div>
                       <asp:Button ID="btnRegistrar" runat="server" class="btn btn-6" Text="Registrar Establecimiento"  OnClick="btnRedireccionar_Click" />
                </div>
                    </div>                   
                    <br />
                    <br />
                    <br />

                    <div class="card u-clearfix">
                        <span class="card-heading">Mis Establecimientos</span>
                        <span class="card-more">
                            <svg fill="#777777" height="18" viewBox="0 0 24 24" width="18" xmlns="http://www.w3.org/2000/svg" href="/Comerciante.aspx">
                                <path d="M0 0h24v24H0z" fill="none" />
                                <path d="M6 10c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2zm12 0c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2zm-6 0c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2z" />
                            </svg>
                        </span>
                        <ul class="card-list">
                            <li>
                                <img src="Imagenes/Imagen%20de%20WhatsApp%202023-08-11%20a%20las%2002.58.20.jpg" />
                            <li>
                                <img src="https://s14.postimg.cc/6ts0it3xt/m2f.jpg" alt="" /></li>
                            <li>
                                <img src="https://s13.postimg.cc/ri499o2zr/m3f.jpg" alt="" /></li>
                            <li>
                                <img src="https://s13.postimg.cc/ri499o2zr/m3f.jpg" alt="" /></li>
                        </ul>
                    </div>
                </div>

            </div>
       
        
    <footer>
        <p> RUTAS BOYACÁ © </p>
        <script src="app/app.js"></script>
        <!– Libreria de animaciones de entradas –>
        <script src="https://unpkg.com/aos@next/dist/aos.js"></script>
  <script>
      AOS.init();
  </script>
    </footer>

    </form>
</body>
</html>