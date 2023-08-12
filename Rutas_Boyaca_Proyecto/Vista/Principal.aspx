<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Principal.aspx.cs" Inherits="Rutas_Boyaca_Proyecto.Vista.Principal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <style>
           .w3-row-padding.w3-center {
            text-align: center;
        }

        .w3-col.m3 {
            width: 20%;
            display: inline-block;
            margin-right: 20px; /* Espacio entre imágenes */
            vertical-align: top; /* Alinea las imágenes en la parte superior */
        }

        .w3-col.m3:last-child {
            margin-right: 0; /* Elimina el margen derecho de la última imagen */
        }
    </style>

    <title></title>
     <meta name="description" content="Soluciones integrales para simplificar tu vida.">
   
    <meta name="keywords" content="Grupo Jamuy, Publicidad, Agencia Digital, Construccion, Servicios Generales"/>
    <meta name="copyright" content="Eleo Alonzo"/>
    <meta name="robots" content="index,follow"/>

    <link href="CSS/Anillo.css" rel="stylesheet" />
    <link href="CSS/Principal.css" rel="stylesheet" />
    <link href="CSS/responsive.css" rel="stylesheet" />
    <link href="CSS/animaciones.css" rel="stylesheet" />
    <link href="CSS/reset.css" rel="stylesheet" />
    <link href="CSS/styles.css" rel="stylesheet" />
    
   

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Didact+Gothic&family=PT+Sans:wght@400;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
</head>
<body>
    <header id="header">
        <a href="#" class="logo">RUTAS BOYACÁ</a>
        <ul>
            <li><a href="Provincias.aspx" class="active">Provincias</a></li>
            <li><a href="Mapa.aspx">Municipios</a></li>
            <li><a href="Anillo.aspx">Anillos</a></li>
            <li><a href="Registro.aspx">Crear ruta</a></li>
<%--            <li><a href="Registro.aspx">Registrate</a></li>--%>
            
        </ul>
    </header>
     
    <section>
        <h2 id="text"><span>Que esperas para conocer</span><br />
            <br>BOYACÁ</h2>
        
        <img src="https://user-images.githubusercontent.com/65358991/170092504-132fa547-5ced-40e5-ab64-ded61518fac2.png" id="bird1">
        <img src="https://user-images.githubusercontent.com/65358991/170092542-9747edcc-fb51-4e21-aaf5-a61119393618.png" id="bird2">
        <img src="https://user-images.githubusercontent.com/65358991/170092559-883fe071-eb4f-4610-8c8b-a037d061c617.png" id="forest">
        

        
        <img src="https://user-images.githubusercontent.com/65358991/170092605-eada6510-d556-45cc-b7fa-9e4d1d258d26.png" id="rocks">
        <img src="https://user-images.githubusercontent.com/65358991/170092616-5a70c4af-2eed-496f-bde9-b5fcc7142a31.png" id="water">
    </section>

        </div>
<footer>
       
    </footer>
    
    <script>
        let text = document.getElementById('text');
        let bird1 = document.getElementById('bird1');
        let bird2 = document.getElementById('bird2');
        let btn = document.getElementById('btn');
        let rocks = document.getElementById('rocks');
        let forest = document.getElementById('forest');
        let water = document.getElementById('water');
        let header = document.getElementById('header');

        window.addEventListener('scroll', function () {
            let value = window.scrollY;

            text.style.top = 50 + value * -.1 + '%';
            bird2.style.top = value * -1.5 + 'px';
            bird2.style.left = value * 2 + 'px';
            bird1.style.top = value * -1.5 + 'px';
            bird1.style.left = value * -5 + 'px';
            btn.style.marginTop = value * 1.5 + 'px';
            rocks.style.top = value * -.12 + 'px';
            forest.style.top = value * .25 + 'px';
            header.style.top = value * .5 + 'px';
        })
    </script>
    <section class="section-2">
        <h3 data-aos="fade-down" data-aos-duration="1000">Bellos Paisajes - Provincias - Municipios - Fauna - Flora - Y mucho más </h3>
        <p data-aos="fade-up" data-aos-duration="1000" data-aos-delay="500">Boyacá y sus alrededores es uno de los mejores lugares para recorrer, con características inigualables y costumbres fantasticas, por eso qué esperas para conocer este bello departamento. Las mejores rutas las encontrarás aquí</p>
    </section>
    <section class="proyecto">
          

    </section>
    <section class="portafolio" id="portafolio">
        <div class="portafolio-titulos">
            <h3 data-aos="fade-down" data-aos-duration="1200">Un recorrido por nuestro departamento</h3>
            <h2 data-aos="fade-up" data-aos-duration="1200" data-aos-delay="500">Boyacá</h2>
        </div>
     
        <div class="cta">
            <div class="cta-img">
            </div>
            <div class="portafolio-sec" style="justify-content">
                <p data-aos="fade-up" data-aos-duration="1500" style="justify-content:right"/>Boyacá es un departamento colombiano con una historia vibrante, una belleza natural 
               cautivadora y una destacada contribución a la independencia de Colombia. 
               Es un destino atractivo para aquellos interesados en la cultura, 
               la historia y la naturaleza, ofreciendo una experiencia enriquecedora para los visitantes.</p>
            </div>
        </div>
    </section>

     <div class="w3-content w3-container w3-padding-64" id="destacados">
  <h3 class="w3-center">Lugares Destacados de Boyacá</h3>
    <br />



         <div class="w3-row-padding w3-center">
    <div class="w3-col m3">
        <img src="https://th.bing.com/th/id/OIP.4_kVwIGV5_W_t1xXOTHY3QHaE4?w=270&h=180&c=7&r=0&o=5&pid=1.7" style="width:100%" onclick="onClick(this)" class="w3-hover-opacity">
    </div>

    <div class="w3-col m3">
        <img src="Imagenes/Boyaca%202.jpg" style="width:100%" onclick="onClick(this)" class="w3-hover-opacity">
    </div>

    <div class="w3-col m3">
        <img src="Imagenes/Boyaca%203.jpg" style="width:100%" onclick="onClick(this)" class="w3-hover-opacity">
    </div>

    <div class="w3-col m3">
        <img src="Imagenes/Boyaca%201.jpg" style="width:100%" onclick="onClick(this)" class="w3-hover-opacity">
    </div>

   
</div>

         <br />
        

<%--  <div class="w3-row-padding w3-center">
    <div class="w3-col m3">
      <img src="https://th.bing.com/th/id/OIP.4_kVwIGV5_W_t1xXOTHY3QHaE4?w=270&h=180&c=7&r=0&o=5&pid=1.7" style="width:20%" onclick="onClick(this)" class="w3-hover-opacity" >
    </div>

    <div class="w3-col m3">
      <img src="Imagenes/Boyaca%202.jpg" style="width:20%" onclick="onClick(this)" class="w3-hover-opacity">
    </div>

    <div class="w3-col m3">
     <img src="Imagenes/Boyaca%203.jpg" style="width:20%" onclick="onClick(this)" class="w3-hover-opacity" >
    </div>

    <div class="w3-col m3">
     <img src="Imagenes/Boyaca%201.jpg" style="width:20%" onclick="onClick(this)" class="w3-hover-opacity" >
    </div>

    <div class="w3-col m3">
      <src="/w3images/p8.jpg" style="width:20%" onclick="onClick(this)" class="w3-hover-opacity">
    </div>
  </div>
</div>--%>

<!-- Footer -->
<footer class="w3-center w3-black w3-padding-64 w3-opacity w3-hover-opacity-off">
 <%-- </div>
  <a href="https://www.w3schools.com/w3css/default.asp" target="_blank" class="w3-hover-text-green"></a></p>--%>
</footer>
        
 
    <footer>
        <p> RUTAS BOYACÁ © </p>
        <script src="app/app.js"></script>
        <!– Libreria de animaciones de entradas –>
        <script src="https://unpkg.com/aos@next/dist/aos.js"></script>
  <script>
      AOS.init();
  </script>
    </footer>
    <script>

        function onClick(element) {
            document.getElementById("img01").src = element.src;
            document.getElementById("modal01").style.display = "block";
            var captionText = document.getElementById("caption");
            captionText.innerHTML = element.alt;
        }


        window.onscroll = function () { myFunction() };
        function myFunction() {
            var navbar = document.getElementById("myNavbar");
            if (document.body.scrollTop > 100 || document.documentElement.scrollTop > 100) {
                navbar.className = "w3-bar" + " w3-card" + " w3-animate-top" + " w3-white";
            } else {
                navbar.className = navbar.className.replace(" w3-card w3-animate-top w3-white", "");
            }
        }


        function toggleFunction() {
            var x = document.getElementById("navDemo");
            if (x.className.indexOf("w3-show") == -1) {
                x.className += " w3-show";
            } else {
                x.className = x.className.replace(" w3-show", "");
            }
        }
    </script>
</body>
</html>
