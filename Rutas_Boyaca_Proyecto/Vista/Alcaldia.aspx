<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Alcaldia.aspx.cs" Inherits="Rutas_Boyaca_Proyecto.Vista.Alcaldia" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"/>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway"/>
      
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>


<style>
body,h1,h2,h3,h4,h5 {font-family: "Raleway", sans-serif}
</style>



    <title></title>
</head>
<body class="w3-light-grey">
    <form id="form1" runat="server">
<div class="w3-content" style="max-width:1400px">
<header class="w3-container w3-center w3-padding-32"> 
  <h1><b> Crear Ruta</b></h1>
  <p>Quieres crear una ruta? <span class="w3-tag">Empieza</span></p>
</header>
<div class="w3-row">

<div class="w3-col l8 s12">

  <div class="w3-card-4 w3-margin w3-white">
<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d127258.71014876182!2d-74.1113856!3d4.6235648!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1ses!2sco!4v1684488500115!5m2!1ses!2sco" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>    <div class="w3-container">
      <h5>EVENTOS Y FESTIVIDADES BOYACÁ <span class="w3-opacity"></span></h5>
    </div>

    <div class="w3-container">
      <p>Una ruta turística es un itinerario planificado que incluye una serie de lugares de interés turístico en una zona determinada. 
        Estos lugares pueden ser atracciones turísticas, monumentos históricos, parques naturales, museos y otros lugares de interés cultural o natural. 
          Una ruta turística puede ser diseñada por una agencia de viajes o por el propio turista y puede incluir transporte, alojamiento y otros servicios.
          El objetivo de una ruta turística es proporcionar al turista una experiencia enriquecedora y organizada al visitar una zona
 
      </p>
      <div class="w3-row">
        <div class="w3-col m8 s12">
            <asp:Button ID="Crear" runat="server" Text="Button"  class="w3-button w3-padding-large w3-white w3-border" />
<%--        <asp:Button ID="Crear" class="w3-button w3-padding-large w3-white w3-border" runat="server" Text="Crear Ruta" OnClick="Crear_Click" />--%>
        </div>
        <div class="w3-col m4 w3-hide-small">
          <p><span class="w3-padding-large w3-right"><b>Comments  </b> <span class="w3-tag">0</span></span></p>
        </div>
      </div>
    </div>
  </div>
  <hr>

  <!-- Blog entry -->
  <div class="w3-card-4 w3-margin w3-white">
  <img src="https://periodicoeldiario.com/wp-content/uploads/2020/04/IMG-20200411-WA0013-1024x682.jpg" alt="Norway" style="width:100%">
    <div class="w3-container">
      <h3><b> </b></h3>
      <h5><span class=""</span></h5>
    </div>

    <div class="w3-container">
      <p></p>
      <div class="w3-row">
        <div class="w3-col m8 s12">
          <p><button class="w3-button w3-padding-large w3-white w3-border"><b>READ MORE »</b></button></p>
        </div>
        <div class="w3-col m4 w3-hide-small">
          <p><span class="w3-padding-large w3-right"><b>Comments  </b> <span class="w3-badge">2</span></span></p>
        </div>
      </div>
    </div>
  </div>
<!-- END BLOG ENTRIES -->
</div>

<!-- Introduction menu -->
<div class="w3-col l4">
  <!-- About Card -->
  <div class="w3-card w3-margin w3-margin-top">
  <img src="https://i.linio.com/p/5ab2bcffeafaea26a5f69d657a8109f5-product.jpg" style="width:100%">
    <div class="w3-container w3-white">
      <h4><b>!Has creado una ruta!</b></h4>
      <p> Si acabas de crear una ruta puedes ingresar los siguientes datos</p>

        <div>

             <div class="form-group">
            <label for="validation01">Nombres</label>
                  <asp:TextBox ID="txtNombre" runat="server" type="text" class="form-control is-valid" ></asp:TextBox>
    
               </div>

             <div class="form-group">
            <label for="validation01">Correo</label>
                  <asp:TextBox ID="txtCiudad" runat="server" type="text" class="form-control is-valid" ></asp:TextBox>
    
               </div>

             <div class="form-group">
            <label for="validation01">Ciudad</label>
                  <asp:TextBox ID="txtCorreo" runat="server" type="text" class="form-control is-valid" ></asp:TextBox>
    
               </div>
              

             <div class="form-group">
            <label for="validation01">Nombre de la ruta</label>
                  <asp:TextBox ID="txtNombreRuta" runat="server" type="text" class="form-control is-valid" ></asp:TextBox>
    
               </div>
              
              
              

        </div>

        <br />
        <br />
    </div>
  </div><hr>
  
  <!-- Posts -->
  <div class="w3-card w3-margin">
    <div class="w3-container w3-padding">
      <h4>Lugares mas visitas por los turistas</h4>
    </div>
    <ul class="w3-ul w3-hoverable w3-white">
      <li class="w3-padding-16">
        <img src="https://live.staticflickr.com/4089/5042529519_6dc23567ed_b.jpg" alt="Image" class="w3-left w3-margin-right" style="width:50px">
        <span class="w3-large">Barbosa</span><br>
        <span>Puerta de oro de Santander</span>
      </li>
      <li class="w3-padding-16">
        <img src="https://www.risaralda.gov.co/info/gobrisaralda/media/pubInt/thumbs/thMetapubInt_600X600_155220.jpg" alt="Image" class="w3-left w3-margin-right" style="width:50px">
        <span class="w3-large">Belen</span><br>
        <span>el misterio del nacimiento de Cristo</span>
      </li> 
      <li class="w3-padding-16">
        <img src="https://www.viajaporcolombia.com/images/especial/4/photos/mongui-6.jpg" alt="Image" class="w3-left w3-margin-right" style="width:50px">
        <span class="w3-large">Mongui</span><br>
        <span>Fomento de las actividades culturales, artísticas y deportivas</span>
      </li>   
      <li class="w3-padding-16 w3-hide-medium w3-hide-small">
        <img src="https://boyacaturismo.com/wp-content/uploads/2022/07/slide-1.jpg" alt="Image" class="w3-left w3-margin-right" style="width:50px">
        <span class="w3-large">Playa blanca</span><br>
        <span> es la más alta de las playas del hemisferio sur, y una de las más altas del mundo</span>
      </li>  
    </ul>
  </div>
  <hr> 
 
  <!-- Labels / tags -->
  <div class="w3-card w3-margin">
    <div class="w3-container w3-padding">
      <h4>Lugares a visitar en Boyaca</h4>
    </div>
    <div class="w3-container w3-white">
    <p><span class="w3-tag w3-black w3-margin-bottom">Pueblito Boyacense</span> <span class="w3-tag w3-light-grey w3-small w3-margin-bottom">Puente de Boyaca</span> <span class="w3-tag w3-light-grey w3-small w3-margin-bottom">Playa Blanca</span>
      <span class="w3-tag w3-light-grey w3-small w3-margin-bottom">Observatorio Astronómico Zaquencipa</span> <span class="w3-tag w3-light-grey w3-small w3-margin-bottom">Reserva Natural Pueblito Antiguo</span> <span class="w3-tag w3-light-grey w3-small w3-margin-bottom">Galeria Contemporanea</span>
      <span class="w3-tag w3-light-grey w3-small w3-margin-bottom">Parque de la Uvita </span> <span class="w3-tag w3-light-grey w3-small w3-margin-bottom">Iglesia Defensores De La Fe Nobsa  </span> <span class="w3-tag w3-light-grey w3-small w3-margin-bottom">Cerro de Capacapi </span>
      <span class="w3-tag w3-light-grey w3-small w3-margin-bottom">Iglesia Colonial </span> <span class="w3-tag w3-light-grey w3-small w3-margin-bottom">Chorrerones del Zaque  </span> <span class="w3-tag w3-light-grey w3-small w3-margin-bottom">Iglesia San Vicente de Ferrer  </span>
      <span class="w3-tag w3-light-grey w3-small w3-margin-bottom">Paso del Angel
 </span> <span class="w3-tag w3-light-grey w3-small w3-margin-bottom">La Cabaña  </span>
    </p>
    </div>
  </div>
  
<!-- END Introduction Menu -->
</div>

<!-- END GRID -->
</div><br>

<!-- END w3-content -->
</div>
           </form>
</body>
</html>
