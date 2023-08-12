<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InformacionProvincia.aspx.cs" Inherits="Rutas_Boyaca_Proyecto.Vista.InformacionProvincia" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="CSS/InformProvincia.css" rel="stylesheet" />
    
    <style>
        body {
    margin: 0;
    padding: 0;
    font-family: Arial, sans-serif;
}

.header {
    background-color: #333;
    color: white;
    padding: 10px 0;
    position: fixed;
    width: 100%;
    top: 0;
    left: 0;
    z-index: 1000;
}

.nav {
    display: flex;
    align-items: center;
    justify-content: space-between;
    margin: 0 auto;
    max-width: 1200px;
    padding: 0 20px;
}

.logo {
    color: white;
    font-size: 24px;
    text-decoration: none;
}

.nav ul {
    list-style: none;
    margin: 0;
    padding: 0;
    display: flex;
}

.nav ul li {
    margin-right: 20px;
}

.nav ul li a {
    color: white;
    text-decoration: none;
}

.content {
    margin-top: 3px; /* Ajusta este valor según el espacio que quieras dejar debajo del menú */
    padding: 5px;
}

    </style>
    
    <title>Información Provincia</title>
</head>
<body>
     
         <header class="header">
    <nav class="nav">
        <a href="Principal.aspx" class="logo">RUTAS BOYACÁ</a>
        <ul>
            <li><a href="Provincias.aspx" class="active">Provincias</a></li>
            <li><a href="Mapa.aspx">Municipios</a></li>
            <li><a href="Anillo.aspx">Anillos</a></li>
            <li><a href="Registro.aspx">Crear ruta</a></li>
        </ul>
    </nav>
</header>

    <br />

     <div class="content">
         <div class="ba">
        <div class="center">
            <div class="card--container">
                <div class="card card--one">
                    <div class="card--title">
                        <h2>
                            <asp:Label ID="lblNombre" runat="server" Text="Nombre Provincia"></asp:Label></h2>
                    </div>
                    <form id="form1" runat="server">


                       <asp:Literal ID="LiteralVideo" runat="server"></asp:Literal>
<div>
    <video controls="controls">
        <source id="VideoProvincia" type="video/mp4" runat="server" />
    </video>
</div>

                    </form>

                </div>
                <div class="card-container">
                    <div class="card card--two">
                        <div class="card--title">

                            <h3>
                                <asp:Label runat="server" Text="Municipios"></asp:Label></></h3>
                            <asp:Repeater ID="ListaMunicipios" runat="server">
                                <HeaderTemplate>
                                    <ul class="ulMunicipios">
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <li>
                                        <%# Eval("Nombre")%>
                                    </li>
                                </ItemTemplate>
                                <FooterTemplate>
                                    </ul>
                                </FooterTemplate>
                            </asp:Repeater>
                        </div>
                        <span class="card--author"></span>
                    </div>

                    <span class="card card--three">
                        <span class="card--title">
                            <h4>
                                <asp:Label ID="lbldescripcion" runat="server" Text="Descripción"></asp:Label>
                            </h4>
                        </span>

                        <span class="card--author"></span>
                    </span>
                </div>
            </div>
            <div class="center--row menu-container">
            </div>
        </div>
    </div>
         </div>

</body>
</html>