<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Municipio_B.aspx.cs" Inherits="Rutas_Boyaca_Proyecto.Vista.Municipio" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <title></title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"/>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />

    <link href="Css/Municipio.css" rel="stylesheet" />
    <style>
        .immag{
             position: absolute; 
         top: 100px;
         right: 600px; /* Ajusta este valor según lo desees */
         width: 150px;
         height: 120px;
        }

       body {
    background-size: cover;
    background-position: center;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
    display: flex;
    margin: 0;
    padding: 0;
    background-image: url('https://images.pexels.com/photos/4980914/pexels-photo-4980914.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1');
}

    </style>

</head>
<body>
    <form id="form1" runat="server">
      

            <div>
                <div style="margin-right: 200px;" >
                   <a href="Mapa.aspx">
    <h1 id="lblNombre_C" runat="server"></h1>
</a>
                </div>
                




             
<%--  <img id="imagenclima" src="Imagenes/clima.png" alt="Icono" class="immag"/>--%>
  
                <br />
                <br />
                                
                <div class="noticia" style="margin-left: 200px;">
<%--                    <asp:Image ID="BanderaM" runat="server" class="izquierda" ImageUrl='<%#Eval("Bandera") %>' />--%>
                    <asp:Image ID="BanderasB" CssClass="izquierda" ImageUrl='<%#Eval("B")  %>' runat="server" />
<%--                    <img class="izquierda" src="Imagenes/40px-BandChivatá.jpg" />--%>
                    <aside id="lblDescripcion" runat="server"></aside>
                    <div class="reset">
                    </div>
                </div>
                <br />
                <br />
             
                <div style="margin-right: 200px; display:flex; align-items: center; justify-content: center;">
                    <div style="text-align: center;">

                        <div class="card-main" style="margin: 0 auto;">
                           
                            <div class="card-info-section">
                                                                 <label>N_Habitantes</label>
                                    <asp:Label ID="lblN_Hbit" runat="server" Text="Label"></asp:Label>
                                     <label>Extension</label>
                                    <asp:Label ID="lblExte" runat="server" Text="Label"></asp:Label>

                                <div class="row mt-5">
                                   
                                </div>
                            </div>
                            <div class="header-img-container">
                                <asp:Image ID="imageMunicipi" runat="server" class="header-img" ImageUrl='<%# Eval("Imagen") %>' />
                            </div>
                        </div>
                    </div>
                </div>

                <br />
                <br />
                <br />
                <br />
                <br />
                <br />


      <div id="widget-containerr" class="immag" style="width: 140px";>

                <div id="widget-container">
                    <asp:Label ID="location" runat="server" Text=""></asp:Label>
                    <div id="weather-icon"></div>
                    <p id="temperature">°C</p>
                    <p id="description">Soleado</p>
                    <div id="coordinates">
                        <div>
                            <label for="longitud">Longitud</label>
                            <br>
                            <i class="fas fa-map-marker-alt coordinates-icon">
                                <br>
                            </i>
                            <br>
                            <asp:Label ID="lblLongitud" runat="server" Text="Label"></asp:Label>
                        </div>
                        <div>
                            <label for="latitud">Latitud</label>
                            <br>
                            <i class="fas fa-map-marker-alt coordinates-icon">
                                <br>
                            </i>
                            <br>
                            <asp:Label ID="lblLatitud" runat="server" Text="Label"></asp:Label>
                        </div>
                        <div>
                            <label for="ubicacion">Ubicación</label>
                            <br>
                            <i class="fas fa-map-marker-alt coordinates-icon">
                                <br>
                            </i>
                            <br>
                            <asp:Label ID="lblUbicacion" runat="server" Text="Label"></asp:Label>
                        </div>
                    </div>
                </div>
            </div>

           


          

          
            <br />
           

        </div>


  

          <script src="js/Municipios.js"></script>
       
    </form>
</body>
</html>
