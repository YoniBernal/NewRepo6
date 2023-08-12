<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Mapa.aspx.cs" Inherits="Rutas_Boyaca_Proyecto.Vista.Mapa" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous" />
    <link href="Css/Mapa.css" rel="stylesheet" />


    <style>
      
        body {
    position: relative;
    margin: 0;
    background-size: cover;
    background-position: center;
    background-attachment: scroll;
    perspective: 1000px;
    left: 254px;
    background-image: url('Imagenes/mapp1.png');
    height: 50%;
    width: 80%;
}

  
    </style>

    <style>
                     /* Estilos para el nav */
    .nav {
        display: flex;
        justify-content: space-between; /* Distribuye los elementos del menú a lo largo del nav */
        align-items: center; /* Centra verticalmente los elementos del menú */
        padding: 20px; /* Espaciado interno del nav */
    }

   .logo {
        color: black; /* Color del texto del logo */
        font-size: 24px;
        text-decoration: none;
        margin-left: -220px; /* Ajusta este valor según lo desees */
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
        color: black; /* Color del texto de los enlaces del menú */
        text-decoration: none;
    }

    li a:hover {
        text-decoration: underline; /* Subraya el enlace al pasar el mouse sobre él */
    }



    </style>

    <title></title>
</head>
<body>

  


          <header class="header">
    <nav class="nav">
        <a href="Principal.aspx" class="logo">Benvenidos a Boyacá</a>
        <ul>
            <li><a href="Provincias.aspx" class="active">Provincias</a></li>
            <li><a href="Mapa.aspx">Municipios</a></li>
            <li><a href="Anillo.aspx">Anillos</a></li>
            <li><a href="Registro.aspx">Crear ruta</a></li>
        </ul>
    </nav>
</header>

    <br />
    <br />
    <br />
    <br />




   

 <section class="contenedor-principal">

        <section class="card">
            <p>El departamento de Boyacá es una región situada en el centro de Colombia,
                reconocida por su rica historia, cultura y belleza natural.
                Es conocido por sus pintorescos paisajes montañosos, valles fértiles y numerosos lagos. 
                Boyacá ha desempeñado un papel significativo en la independencia de Colombia, siendo escenario de importantes batallas 
                durante la época colonial. Además, es famoso por su patrimonio arquitectónico, incluyendo iglesias coloniales y pintorescos pueblos.</p>
        </section>
     </section>

    <br />
    <br />

    <br />


    <div>


    <img src="Imagenes/[removal.ai]_dabe3de3-82ad-4c7d-a1b4-3dfd09cea66d-mapaboyaca.png" usemap="#image-map"   />
    <map name="image-map" />

    <area target="_top" alt="Puerto Boyacà" title="Puerto Boyacà" href="#" coords="27,218,3,384,108,387,146,305" shape="poly" data-id="73"/>
    <area target="_top" alt="Otanche" title="Otanche" href="#" coords="159,343,147,430,106,394,142,325" shape="poly" data-id="62"/>
    <area target="_top" alt="La Victoria" title="La Victoria" href="#" coords="133,441,119,449,123,472,140,464" shape="poly" data-id="48"/>
    <area target="_top" alt="Quipama" title="Quipama" href="#" coords="144,464,162,452,116,404,118,414" shape="poly" data-id="74"/>
    <area target="_top" alt="San Pablo de Borbur" title="San Pablo de Borbur" href="#" coords="179,408,171,430,150,422,159,348" shape="poly" data-id="86"/>
    <area target="_top" alt="Pauna" title="Pauna" href="#" coords="173,366,233,428,218,442,184,415" shape="poly" data-id="68"/>
    <area target="_top" alt="Muzo" title="Muzo" href="#" coords="153,431,170,432,181,458,165,469" shape="poly" data-id="58"/>
    <area target="_top" alt="Coper" title="Coper" href="#" coords="170,469,192,453,209,485,192,506" shape="poly" data-id="24"/>
    <area target="_top" alt="Maripi" title="Maripi" href="#" coords="181,414,174,433,195,461,214,440" shape="poly" data-id="52"/>
    <area target="_top" alt="Buena Vista" title="Buena Vista" href="#" coords="216,440,198,459,210,484,228,473" shape="poly" data-id="11"/>
    <area target="_top" alt="Tununguá" title="Tununguá" href="#" coords="214,406,231,393,216,381,203,390" shape="poly" data-id="109"/>
    <area target="_top" alt="Caldas" title="Caldas" href="#" coords="244,425,233,425,216,444,237,465" shape="poly" data-id="13"/>
    <area target="_top" alt="Briceño" title="Briceño" href="#" coords="234,391,214,409,233,428" shape="poly" data-id="10"/>
    <area target="_top" alt="Chinquinquira" title="Chinquinquira" href="#" coords="288,422,279,435,244,444,232,413" shape="poly" data-id="17"/>
    <area target="_top" alt="San Miguel de Sema" title="San Miguel de Sema" href="#" coords="260,441,281,436,289,454,268,470" shape="poly" data-id="85"/>
    <area target="_top" alt="Saboyà" title="Saboyà" href="#" coords="248,394,246,414,288,420,301,396,276,370" shape="poly" data-id="78"/>
    <area target="_top" alt="Sutamarchàn" title="Sutamarchàn" href="#" coords="304,402,326,415,314,435,292,420" shape="poly" data-id="125"/>
    <area target="_top" alt="Tinjacà" title="Tinjacà" href="#" coords="291,453,308,432,291,420,282,437" shape="poly" data-id="126"/>
    <area target="_top" alt="Raquira" title="Raquira" href="#" coords="312,431,328,447,318,490,281,462" shape="poly" data-id="76"/>
    <area target="_top" alt="Santa Sofia" title="Santa Sofia" href="#" coords="326,406,302,396,308,379,318,378" shape="poly" data-id="90"/>
    <area target="_top" alt="Sachica" title="Sachica" href="#" coords="326,423,341,436,331,447,324,437" shape="poly" data-id="79"/>
    <area target="_top" alt="Villa de Leiva" title="Villa de Leiva" href="#" coords="338,430,327,419,336,402,363,398" shape="poly" data-id="50"/>
    <area target="_top" alt="Ganchantivà" title="Ganchantivà" href="#" coords="341,398,329,400,319,374,339,373" shape="poly" data-id="37"/>
    <area target="_top" alt="Arcabuco" title="Arcabuco" href="#" coords="375,411,386,408,377,383,352,363,342,378,354,396,345,390" shape="poly" data-id="4"/>
    <area target="_top" alt="Moniquira" title="Moniquira" href="#" coords="310,376,320,373,347,366,356,357,331,333,318,322,310,336" shape="poly" data-id="56"/>
    <area target="_top" alt="Togui" title="Togui" href="#" coords="350,324,341,325,337,334,359,356,367,344" shape="poly" data-id="111"/>
    <area target="_top" alt="Chitaraque" title="Chitaraque" href="#" coords="347,316,369,344,385,310,363,292" shape="poly" data-id="20"/>
    <area target="_top" alt="Santana" title="Santana" href="#" coords="347,279,361,289,349,309,332,293" shape="poly" data-id="87"/>
    <area target="_top" alt="San Josè de Pare" title="San Josè de Pare" href="#" coords="333,331,350,310,332,294,317,316" shape="poly" data-id="82"/>
    <area target="_top" alt="Samacà" title="Samacà" href="#" coords="330,450,343,440,361,470,327,490,319,488" shape="poly" data-id="80"/>
    <area target="_top" alt="Ventaquemada" title="Ventaquemada" href="#" coords="321,517,316,501,346,482,361,473,364,485" shape="poly" data-id="115"/>
    <area target="_top" alt="Chiquiza" title="Chiquiza" href="#" coords="362,404,372,414,346,435,347,421" shape="poly" data-id="30"/>
    <area target="_top" alt="Cucaita" title="Cucaita" href="#" coords="348,446,365,444,366,455,362,463" shape="poly" data-id="28"/>
    <area target="_top" alt="Sora" title="Sora" href="#" coords="350,437,364,424,372,432,355,445" shape="poly" data-id="99"/>
    <area target="_top" alt="Motavita" title="Motavita" href="#" coords="373,439,389,434,383,411,367,418" shape="poly" data-id="57"/>
    <area target="_top" alt="Tunja" title="Tunja" href="#" coords="371,441,397,435,401,446,386,466,364,473" shape="poly" data-id="121"/>
    <area target="_top" alt="Còmbita" title="Còmbita" href="#" coords="393,432,414,401,387,375,381,385" shape="poly" data-id="23"/>
    <area target="_top" alt="Soracà" title="Soracà" href="#" coords="403,449,388,467,393,477,413,466" shape="poly" data-id="100"/>
    <area target="_top" alt="Siachoque" title="Siachoque" href="#" coords="413,459,439,487,451,463,427,444" shape="poly" data-id="93"/>
    <area target="_top" alt="Chivatà" title="Chivatà" href="#" coords="407,451,422,447,425,420,406,442,407,451" shape="poly" data-id="21"/>
    <area target="_top" alt="Oicata" title="Oicata" href="#" coords="409,417,419,423,408,435,396,431" shape="poly" data-id="61"/>
    <area target="_top" alt="Toca" title="Toca" href="#" coords="425,435,450,455,466,422,436,418" shape="poly" data-id="103"/>
    <area target="_top" alt="Tuta" title="Tuta" href="#" coords="422,419,466,421,446,397,417,398,413,414,420,416,432,392" shape="poly" data-id="105"/>
    <area target="_top" alt="Sotaquirà" title="Sotaquirà" href="#" coords="445,393,438,379,450,361,420,367,396,347,387,372,408,396" shape="poly" data-id="101"/>
    <area target="_top" alt="Turmeque" title="Turmeque" href="#" coords="350,500,329,512,337,537,353,529" shape="poly" data-id="107"/>
    <area target="_top" alt="Umbita" title="Umbita" href="#" coords="361,521,339,538,341,562,378,547,373,524" shape="poly" data-id="114"/>
    <area target="_top" alt="Nuevo Còlon" title="Nuevo Còlon" href="#" coords="364,488,360,518,355,498,354,519" shape="poly" data-id="60"/>
    <area target="_top" alt="Tibana" title="Tibana" href="#" coords="365,495,398,523,377,526,363,517" shape="poly" data-id="106"/>
    <area target="_top" alt="Ramiriqui" title="Ramiriqui" href="#" coords="389,485,395,511,407,506,410,544,400,528,414,510,399,518,401,499" shape="poly" data-id="75"/>
    <area target="_top" alt="Jenesano" title="Jenesano" href="#" coords="382,490,394,510,368,494,378,495" shape="poly" data-id="44"/>
    <area target="_top" alt="Boyacá" title="Boyacá" href="#" coords="371,492,393,482,389,470,364,483" shape="poly" data-id="9"/>
    <area target="_top" alt="Rondòn" title="Rondòn" href="#" coords="418,518,430,508,440,511,457,498,451,485,427,483,411,504" shape="poly" data-id="77"/>
    <area target="_top" alt="Viracachá" title="Viracachá" href="#" coords="399,480,427,481,414,466" shape="poly" data-id="122"/>
    <area target="_top" alt="Cienaga" title="Cienaga" href="#" coords="398,482,423,483,410,505,400,492" shape="poly" data-id="22"/>
    <area target="_top" alt="La Capilla" title="La Capilla" href="#" coords="357,588,367,574,349,560,344,574" shape="poly" data-id="47"/>
    <area target="_top" alt="Tenza" title="Tenza" href="#" coords="368,572,377,591,360,588,364,584" shape="poly" data-id="110"/>
    <area target="_top" alt="Sutatenza" title="Sutatenza" href="#" coords="363,605,355,588,374,592,378,598" shape="poly" data-id="124"/>
    <area target="_top" alt="Guateque" title="Guateque" href="#" coords="351,592,360,607,353,612,336,602" shape="poly" data-id="41"/>
    <area target="_top" alt="Guayatá" title="Guayatá" href="#" coords="353,612,360,635,334,638,333,600" shape="poly" data-id="42"/>
    <area target="_top" alt="Somondoco" title="Somondoco" href="#" coords="382,604,360,625,356,612,372,602" shape="poly" data-id="98"/>
    <area target="_top" alt="Almeida" title="Almeida" href="#" coords="364,636,383,625,383,605,360,624" shape="poly" data-id="2"/>
    <area target="_top" alt="Chivor" title="Chivor" href="#" coords="387,626,368,637,376,652,393,666,400,641" shape="poly" data-id="31"/>
    <area target="_top" alt="San Luis de Gaceno" title="San Luis de Gaceno" href="#" coords="428,649,478,614,483,637,477,677,463,700,439,707" shape="poly" data-id="83"/>
    <area target="_top" alt="Santa Maria" title="Santa Maria" href="#" coords="436,700,395,670,406,632,428,621" shape="poly" data-id="88"/>
    <area target="_top" alt="Macanal" title="Macanal" href="#" coords="387,603,421,590,428,618,392,631" shape="poly" data-id="51"/>
    <area target="_top" alt="Garagoa" title="Garagoa" href="#" coords="385,600,422,585,416,561,377,581" shape="poly" data-id="39"/>
    <area target="_top" alt="Pachavita" title="Pachavita" href="#" coords="375,552,390,568,377,580,360,561" shape="poly" data-id="63"/>
    <area target="_top" alt="Chinavita" title="Chinavita" href="#" coords="392,524,418,559,395,568,376,549,374,534" shape="poly" data-id="16"/>
    <area target="_top" alt="Campo hermoso" title="Campo hermoso" href="#" coords="442,635,486,603,457,575,428,585,427,615" shape="poly" data-id="14"/>
    <area target="_top" alt="Miraflores" title="Miraflores" href="#" coords="412,549,446,536,469,558,458,572,421,583" shape="poly" data-id="53"/>
    <area target="_top" alt="Zetaquira" title="Zetaquira" href="#" coords="410,521,409,549,426,543,451,535,463,521,491,507,456,496" shape="poly" data-id="116"/>
    <area target="_top" alt="Berbeo" title="Berbeo" href="#" coords="472,521,452,538,463,546" shape="poly" data-id="6"/>
    <area target="_top" alt="San Eduardo" title="San Eduardo" href="#" coords="482,520,491,537,476,555,468,539" shape="poly" data-id="81"/>
    <area target="_top" alt="Páez" title="Pàez" href="#" coords="461,574,493,546,511,546,519,582,499,610" shape="poly" data-id="64"/>
    <area target="_top" alt="Pesca" title="Pesca" href="#" coords="469,483,476,496,455,495,451,471,453,450,462,431,491,422" shape="poly" data-id="71"/>
    <area target="_top" alt="Toca" title="Toca" href="#" coords="490,434,512,445,489,493,474,478" shape="poly" data-id="103"/>
    <area target="_top" alt="Aquitania" title="Aquitania" href="#" coords="554,415,566,425,581,470,555,477,525,505,511,541,488,496,531,429" shape="poly" data-id="3"/>
    <area target="_top" alt="Cuitiva" title="Cuitiva" href="#" coords="514,426,525,428,515,443,497,435" shape="poly" data-id="29"/>
    <area target="_top" alt="Iza" title="Iza" href="#" coords="504,415,489,426,494,434,514,424" shape="poly" data-id="43"/>
    <area target="_top" alt="Firavitoba" title="Firavitoba" href="#" coords="471,425,499,414,494,394,467,406" shape="poly" data-id="35"/>
    <area target="_top" alt="Tibasosa" title="Tibasosa" href="#" coords="490,367,506,386,497,399,472,399" shape="poly" data-id="112"/>
    <area target="_top" alt="Nobsa" title="Nobsa" href="#" coords="496,370,523,375,508,385,508,389" shape="poly" data-id="59"/>
    <area target="_top" alt="Sogamoso" title="Sogamoso" href="#" coords="522,380,543,422,518,423,502,406" shape="poly" data-id="97"/>
    <area target="_top" alt="Mongui" title="Mongui" href="#" coords="527,385,552,398,543,416" shape="poly" data-id="55"/>
    <area target="_top" alt="Topaga" title="Topaga" href="#" coords="542,372,555,378,542,388,528,381" shape="poly" data-id="127"/>
    <area target="_top" alt="Gameza" title="Gameza" href="#" coords="546,374,598,380,602,363,548,361" shape="poly" data-id="38"/>
    <area target="_top" alt="Mongua" title="Mongua" href="#" coords="556,379,614,382,600,389,570,427,546,389,555,394" shape="poly" data-id="54"/>
    <area target="_top" alt="Pajarito" title="Pajarito" href="#" coords="578,523,617,496,583,465,551,490" shape="poly" data-id="66"/>
    <area target="_top" alt="La Branza Grande" title="La Branza Grande" href="#" coords="589,411,622,404,649,450,621,510,564,432" shape="poly" data-id="46"/>
    <area target="_top" alt="Paya" title="Paya" href="#" coords="710,371,691,391,651,401,638,429,656,447,691,451,710,410" shape="poly" data-id="69"/>
    <area target="_top" alt="Pisba" title="Pisba" href="#" coords="615,377,657,354,695,376,633,421" shape="poly" data-id="72"/>
    <area target="_top" alt="Paipa" title="Paipa" href="#" coords="414,342,437,311,474,388,464,412" shape="poly" data-id="65"/>
    <area target="_top" alt="Duitama" title="Duitama" href="#" coords="442,314,473,384,495,367,472,321" shape="poly" data-id="32"/>
    <area target="_top" alt="Santa Rosa de Viterbo" title="Santa Rosa de Viterbo" href="#" coords="480,315,479,330,493,354,509,341" shape="poly" data-id="89"/>
    <area target="_top" alt="Cerinza" title="Cerinza" href="#" coords="496,310,491,322,507,341,520,329" shape="poly" data-id="15"/>
    <area target="_top" alt="Busbanza" title="Busbanza" href="#" coords="530,351,528,378,516,371" shape="poly" data-id="12"/>
    <area target="_top" alt="Correales" title="Correales" href="#" coords="540,347,532,359,529,380,551,359" shape="poly" data-id="25"/>
    <area target="_top" alt="Floresta" title="Floresta" href="#" coords="515,335,497,360,516,369,525,354" shape="poly" data-id="36"/>
    <area target="_top" alt="Belén" title="Belén" href="#" coords="542,321,523,331,491,313,500,299,512,288" shape="poly" data-id="5"/>
    <area target="_top" alt="Tutaza" title="Tutaza" href="#" coords="543,321,549,291,540,268,512,282" shape="poly" data-id="113"/>
    <area target="_top" alt="Paz de Rio" title="Paz de Rio" href="#" coords="548,284,580,305,557,323,546,319" shape="poly" data-id="70"/>
    <area target="_top" alt="Beteitiva" title="Beteitiva" href="#" coords="519,333,528,353,550,336,549,321" shape="poly" data-id="7"/>
    <area target="_top" alt="Tasco" title="Tasco" href="#" coords="568,338,600,361,556,359,547,344,556,322" shape="poly" data-id="102"/>
    <area target="_top" alt="Socha" title="Socha" href="#" coords="592,296,570,314,575,340,598,354" shape="poly" data-id="96"/>
    <area target="_top" alt="Socotà" title="Socotà" href="#" coords="594,277,630,292,668,347,600,387" shape="poly" data-id="95"/>
    <area target="_top" alt="Chita" title="Chita" href="#" coords="645,220,625,259,645,312,660,337,672,362,702,344,670,233" shape="poly" data-id="19"/>
    <area target="_top" alt="Sativa Sur" title="Sativa Sur" href="#" coords="558,281,580,305,595,289,578,284" shape="poly" data-id="92"/>
    <area target="_top" alt="Sativa Norte" title="Sativa Norte" href="#" coords="549,285,594,285,597,264,539,262" shape="poly" data-id="91"/>
    <area target="_top" alt="Jericò" title="Jericò" href="#" coords="601,249,631,266,630,289,597,275" shape="poly" data-id="45"/>
    <area target="_top" alt="Susacòn" title="Susacòn" href="#" coords="546,259,598,262,597,243,563,225" shape="poly" data-id="123"/>
    <area target="_top" alt="Soatà" title="Soatà" href="#" coords="565,220,588,234,598,216,591,205,571,199" shape="poly" data-id="94"/>
    <area target="_top" alt="Tipacoque" title="Tipacoque" href="#" coords="571,188,588,168,594,204,570,199" shape="poly" data-id="108"/>
    <area target="_top" alt="Covarachia" title="Covarachia" href="#" coords="550,148,573,180,589,168,559,131" shape="poly" data-id="26"/>
    <area target="_top" alt="Boavita" title="Boavita" href="#" coords="592,180,605,183,618,215,612,236,600,239" shape="poly" data-id="8"/>
    <area target="_top" alt="San Mateo" title="San Mateo" href="#" coords="607,181,619,173,641,203,619,210,612,200" shape="poly" data-id="84"/>
    <area target="_top" alt="La uvita" title="La uvita" href="#" coords="621,211,645,212,624,256,603,246" shape="poly" data-id="49"/>
    <area target="_top" alt="Panqueba" title="Panqueba" href="#" coords="658,167,658,184,646,190,649,175" shape="poly" data-id="67"/>
    <area target="_top" alt="Guacamayas" title="Guacamayas" href="#" coords="628,168,644,176,638,195,624,178" shape="poly" data-id="40"/>
    <area target="_top" alt="El Espino" title="El Espino" href="#" coords="641,154,661,156,646,176,629,167" shape="poly" data-id="34"/>
    <area target="_top" alt="El Cocuy" title="El Cocuy" href="#" coords="660,182,693,201,675,242,638,208" shape="poly" data-id="33"/>
    <area target="_top" alt="Guican" title="Guican" href="#" coords="661,176,679,131,694,110,755,91,748,158,711,219" shape="poly" data-id="117"/>
    <area target="_top" alt="Chiscas" title="Chiscas" href="#" coords="622,163,649,148,669,153,699,79,648,61" shape="poly" data-id="18"/>
    <area target="_top" alt="Cubara" title="Cubara" href="#" coords="643,59,738,93,775,72,798,9,696,2" shape="poly" data-id="27"/>

       </div>


     <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="js/Mapa.js"></script>
  
   <%-- <script>
        $(document).ready(function () {
            $("area").click(function (e) {
                e.preventDefault();
                var id = $(this).data("id");
                var url = "Municipio_B.aspx?idMunicipio=" + id;
                window.open(url, "_blank");
            });
        });

    </script>--%>

</body>
</html>
