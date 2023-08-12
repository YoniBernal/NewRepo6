<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SesionI.aspx.cs" Inherits="Rutas_Boyaca_Proyecto.SesionI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>


    <link href="Vista/CSS/CssLogin.css" rel="stylesheet" />
   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"/>
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.css"/>

    

    <title></title>
</head>
<body>


    
    <form id="form1" runat="server">
        <div>
 
            
<%--            <video src="Vista/Imagenes/Videos/burbujas-1085.mp4" autoplay="true" muted="true" loop="true" poster="https://carontestudio.com/img/contacto.jpg"></video>--%>
<%--            <video src="https://pixabay.com/es/videos/burbujas-aire-submarino-agua-1085/" autoplay="true" muted="true" loop="true" poster="https://carontestudio.com/img/contacto.jpg"></video>--%>
  <section id="sect1" class="sect">
 <section class="box">

        <!-- start login -->
        <div class="container login">
            <div class="row">
                <div class="col-md-4 login-box">

                    <!-- start tabs -->
                    <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="pills-login-tab" data-bs-toggle="pill" data-bs-target="#pills-login" type="button" role="tab" aria-controls="pills-login" aria-selected="true">Sesion</button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="pills-register-tab" data-bs-toggle="pill" data-bs-target="#pills-register" type="button" role="tab" aria-controls="pills-register" aria-selected="false">Registrar</button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="pills-password-tab" data-bs-toggle="pill" data-bs-target="#pills-password" type="button" role="tab" aria-controls="pills-password" aria-selected="false">Recuperar contraseña</button>
                        </li>
                    </ul><!-- end tabs -->

                    <!-- tabs -->
                    <div class="tab-content" id="pills-tabContent">

                        <!-- tab access -->
                        <div class="tab-pane fade" id="pills-login" role="tabpanel" aria-labelledby="pills-login-tab">

                            <h2 class="text-left">Login</h2>
                            <div class="login-form">
                                <div class="input-group mb-3">
                                    <div class="input-group-append">
                                        <div class="input-group-text"><i class="far fa-user" style="margin:5px 0"></i></div>
                                    </div>
                                    <asp:TextBox ID="txtUsuario" runat="server" type="email"  name="email" value="Example@.com" class="form-control input_user"  placeholder="Email" ></asp:TextBox>
<%--                                    <input type="email" id="email" name="email" value="Example@.com" class="form-control input_user" value="" placeholder="Email" autocomplete="off" />--%>
                                </div>
                                <div class="input-group mb-3">
                                    <div class="input-group-append">
                                        <span class="input-group-text"><i class="fas fa-key" style="margin:5px 0"></i></span>
                                    </div>
                                 
                                    <asp:TextBox ID="txtcontrase" runat="server" type="password"  name="password" value="password"  class="form-control input_pass" placeholder="Password"></asp:TextBox>
                                </div>
                                <div class="form-group mb-3">
                                    <div class="custom-control custom-checkbox">
                                        <input type="checkbox" class="custom-control-input" id="customControlInline"/>
                                        <label class="custom-control-label" for="customControlInline">Recordar</label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="form-group">
                                        <asp:Button ID="btnIniciar" runat="server" Text="Button" />
<%--                                        <asp:Button ID="btnIniciar" runat="server" Text="Button" type="submit" class="btn btn-secondary btn-block" name="access"<%-- onclick="btnIniciar_Click"--%> />--%>
<%--                                        <button type="submit" class="btn btn-secondary btn-block" id="access" name="access">Login</button>--%>
                                    </div>
                                </div>

                            </div>
                        </div><!-- end tab access -->

                        <!-- tab register -->
                        <div class="tab-pane fade" id="pills-register" role="tabpanel" aria-labelledby="pills-register-tab">
                            <h2 class="text-left">Registrarse</h2>
                            <div class="login-form">
                                <div class="input-group mb-3">
                                    <div class="input-group-append">
                                        <div class="input-group-text"><i class="far fa-user" style="margin:5px 0"></i></div>
                                    </div>
                                    <asp:TextBox ID="txtcorreo" runat="server" type="email"  name="email" value="Example@.com" class="form-control input_user"  placeholder="Email" ></asp:TextBox>
                                </div>
                                <div class="input-group mb-3">
                                    <div class="input-group-append">
                                        <span class="input-group-text"><i class="fas fa-key" style="margin:5px 0"></i></span>
                                    </div>
                                  <asp:TextBox ID="txtClaveR" runat="server" type="password"  name="password" value="password"  class="form-control input_pass" placeholder="Password"></asp:TextBox>

                               </div>
                                <div class="row">
                                    <div class="form-group">
<%--                                        <asp:Button ID="btningressar" runat="server" Text="Button"  " />--%>
                                        <input id="btnIngresso" runat="server" type="button" value="button"  class="btn btn-secondary btn-block"/>
                                    </div>
                                </div>
                            </div>
                            <p class="agree"><small> </small></p>
                        </div>

                        <div class="tab-pane fade" id="pills-password" role="tabpanel" aria-labelledby="pills-password-tab">
                        
                            <div class="login-form">
                                <div class="input-group mb-3">
                                    <div class="input-group-append">
                                        <div class="input-group-text"><i class="far fa-user" style="margin:5px 0"></i></div>
                                    </div>
                                    <input type="email" id="email" name="email" value="test@test.com" class="form-control input_user"  placeholder="Email" />
                                </div>
                                <div class="row">
                                    <div class="form-group">

                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>

                </div>

                <!-- start carousel -->
                <div class="col-md-8 carousel-box">
                    <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
                        <div class="carousel-indicators">
                            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
                            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
                        </div>
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <img src="https://upload.wikimedia.org/wikipedia/commons/3/36/Parque_Municipio_de_Boyaca.JPG" class="d-block w-100" alt="...">
                                <div class="carousel-caption d-none d-md-block">
                                    </div>
                            </div>
                            <div class="carousel-item">
                                <img src="https://upload.wikimedia.org/wikipedia/commons/3/36/Parque_Municipio_de_Boyaca.JPG" class="d-block w-100" alt="...">
                                <div class="carousel-caption d-none d-md-block">
                                   </div>
                            </div>
                            <div class="carousel-item">
                                <img src="https://upload.wikimedia.org/wikipedia/commons/3/36/Parque_Municipio_de_Boyaca.JPG" class="d-block w-100" alt="...">
                                <div class="carousel-caption d-none d-md-block">
                                     </div>
                            </div>
                        </div>
                        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Previous</span>
                        </button>
                        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Next</span>
                        </button>
                    </div>
                </div><!-- end carousel -->
            </div>
        </div><!-- end login -->
    </section>
  </section>
        </div>
        <script src="Vista/Js/login.js"></script>

    </form>
</body>
</html>
