<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Anillo.aspx.cs" Inherits="Rutas_Boyaca_Proyecto.Vista.Anillo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     <meta name="description" content="Soluciones integrales para simplificar tu vida."
    <meta name="robots" content="index,follow"/>
    <link rel="icon" type="image/x-icon" href="img/Logo/favicon.png">

   
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/styles.css">
    <link rel="stylesheet" href="css/animaciones.css">
    <link rel="stylesheet" href="css/responsive.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Didact+Gothic&family=PT+Sans:wght@400;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />

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

    <style>
    #container {
      display: flex;
      justify-content: space-evenly;
    }

    #container img {
      width: 200px; /* Tamaño inicial de las imágenes */
      margin: 0; /* Eliminamos el margen entre las imágenes */
      position: relative; /* Establecemos la posición relativa para poder posicionar el zoom encima */
      transition: transform 0.3s ease; /* Transición para el efecto de zoom */
    }

    #container img:hover {
      transform: scale(3.5); /* Zoom del 50% al pasar el cursor sobre las imágenes */
      z-index: 1; /* Aseguramos que el zoom esté por encima de la imagen original */
    }
  </style>

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

    <section class="section-hero"  >
        <video autoplay="autoplay" muted="muted" loop="loop" class="w-100">
            <source src="Imagenes/Videos/Anillos.mp4" type="video/mp4"/>
        </video> 
        <div class="titulo"  id="animatedTitle" data-aos="fade-up,initial-scale=1.0">
            <h2>ANILLOS TURISTICOS BOYACÁ</h2>
            <h1>Rutas alterativas para conocer</h1>
        </div> 
    </section>
  <section class="section-2">
        <h3 data-aos="fade-down" data-aos-duration="1000">Bellos Paisajes - Provincias - Municipios - Fauna - Flora - Y mucho más </h3>
        <p data-aos="fade-up" data-aos-duration="1000" data-aos-delay="500">Boyacá y sus alrededores es uno de los mejores lugares para recorrer, con características inigualables y costumbres fantasticas, por eso qué esperas para conocer este bello departamento. Las mejores rutas las encontrarás aquí</p>
    </section>
    <section class="proyecto ">
      
            <div class="botones">
                <div class="boton-izquierda" id="left">
                    <img src="img/sliders/arrow-icn.svg" alt="">
                </div>
                <div class="boton-derecha" id="right">
                    <img src="img/sliders/arrow-icn.svg" alt="">
                </div>
            </div>
       
    </section>
    <section class="portafolio" id="portafolio">
        <div class="portafolio-titulos">
            <h3 data-aos="fade-down" data-aos-duration="1200">Un recorrido por algunos de nuestros anillos </h3>
            <h2 data-aos="fade-up" data-aos-duration="1200" data-aos-delay="500">BOYACENSES</h2>
        </div>



         <div>
    <div id="container">
      <img alt="img0" src="Imagenes/2.png" />
      <img alt="img1" src="Imagenes/3.png" />
      <img alt="img2" src="Imagenes/4.png" />
      <img alt="img3" src="Imagenes/5.png" />
      <img alt="img3" src="Imagenes/6.png" />
    </div>
  </div>

        <br />
        <br />
        <br />
        <br />
        <br />
        <br />

    </section>

            </form>
     

    <footer>
        <p> RUTAS BOYACÁ © </p>
        <script src="app/app.js"></script>
        <!– Libreria de animaciones de entradas –>
        <script src="https://unpkg.com/aos@next/dist/aos.js"></script>
  <script>
      AOS.init();
  </script>
    </footer>
    <script src="Js/Anillo.js"></script>
</body>
</html>
