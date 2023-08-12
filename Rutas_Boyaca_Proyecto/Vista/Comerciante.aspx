<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Comerciante.aspx.cs" Inherits="Rutas_Boyaca_Proyecto.Vista.Comerciante" %>

<!DOCTYPE html>

<html lang="en" dir="ltr">
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="Survey.css">
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <meta name="viewport" content="width-device-width, initial-scale=1.0">
    <link href="CSS/Comerciante.css" rel="stylesheet" />

    <style>
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

    <title>Comerciante</title>
</head>
<body>


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


    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <main id="container">
        <form id="form1" runat="server">
            <div id="form_header">
                <h2>Establecimiento</h2>                
            </div>

            <h4>Registrar los siguientes datos del Establecimiento:</h4>

            <div class="form sign-in">
                <label>
                    Nombre del Establecimiento:
            <asp:TextBox ID="txtNombre" runat="server" CssClass="input-field" AutoComplete="off"></asp:TextBox>
                </label>
                <br />
                <label>
                    Dirección del Establecimiento:
            <asp:TextBox ID="txtDireccion" runat="server" CssClass="input-field" AutoComplete="off"></asp:TextBox>
                </label>
                <br />
                <label>
                    Descripción del Establecimiento:
                    <br />
                        <textarea class="form-control" runat="server" id="txtDesc" rows="3"></textarea>
                </label>
            </div>

            <div runat="server" id="ddlTipo">
                <label>Seleccione el tipo de establecimiento:</label>
                <asp:DropDownList ID="ddlTipos" CssClass="ddlComerciante" runat="server"
                    AppendDataBound="true"
                    Visible="True">
                </asp:DropDownList>
            </div>
            <br />
            <div runat="server" id="ddlCategoria">
                <label>Seleccione la categoria de su establecimiento:</label>
                <asp:DropDownList ID="ddlCategorias" CssClass="ddlComerciante" runat="server"
                    AppendDataBound="true"
                    Visible="True">
                </asp:DropDownList>
            </div>
            <br />
            <div runat="server" id="ddlMunicipios">
                <label>Seleccione el Municipio:</label>
                <asp:DropDownList ID="ddlMunicipio" CssClass="ddlComerciante" runat="server"
                    AppendDataBound="true"
                    Visible="True">
                </asp:DropDownList>
            </div>
            <br /> 

            <asp:FileUpload ID="fuImagen" runat="server" />
            <br />

            <asp:Button ID="Button1" CssClass="btn" runat="server" Text="Registrar" value="Registrar" OnClick="btnRegistrarEstablecimiento_Click" />
        </form>
        <div />
    </main>

    
    <footer>
        <p> RUTAS BOYACÁ © </p>
        <script src="app/app.js"></script>
        <!– Libreria de animaciones de entradas –>
        <script src="https://unpkg.com/aos@next/dist/aos.js"></script>
  <script>
      AOS.init();
  </script>
    </footer>

</body>
</html>