﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Prueba.aspx.cs" Inherits="Rutas_Boyaca_Proyecto.Vista.Prueba" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
         
        <head>
    <title>Anillos Turisticos</title>
            <link href="CSS/Principal.css" rel="stylesheet" />

</head>
<body>
    <header id="header">
        <a href="#" class="logo">RUTAS BOYACÁ</a>
        <ul>
            <li><a href="#" class="active">Provincias</a></li>
            <li><a href="#">Municipios</a></li>
            <li><a href ="#">Anillos </a></li>
            <li><a href="#">Crear ruta</a></li>
            <li><a href="#">Registrate</a></li>
            
        </ul>
    </header>
     
    <Section>
        <h2 id="text"><span>Que esperas para conocer</span><br />
            <br>BOYACÁ</h2>
        
        <img src="https://user-images.githubusercontent.com/65358991/170092504-132fa547-5ced-40e5-ab64-ded61518fac2.png" id="bird1">
        <img src="https://user-images.githubusercontent.com/65358991/170092542-9747edcc-fb51-4e21-aaf5-a61119393618.png" id="bird2">
        <img src="https://user-images.githubusercontent.com/65358991/170092559-883fe071-eb4f-4610-8c8b-a037d061c617.png" id="forest">
        

        
        <img src="https://user-images.githubusercontent.com/65358991/170092605-eada6510-d556-45cc-b7fa-9e4d1d258d26.png" id="rocks">
        <img src="https://user-images.githubusercontent.com/65358991/170092616-5a70c4af-2eed-496f-bde9-b5fcc7142a31.png" id="water">
    </Section>


        </div>
    </form>
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
    
</body>
</html>