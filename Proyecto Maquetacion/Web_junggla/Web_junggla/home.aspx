<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="Web_junggla.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head runat="server">
    <title>Junggla. La mejor manera de descubrir un trabajo<%--The best way to discover a job--%>.</title>
    <link href="Imagenes/favicon.ico" rel="shortcut icon" />
    <link href="/estilo/bootstrap.min.css"  rel="stylesheet"  type="text/css"/>
    <link href="/estilo/bootstrap.css"  rel="stylesheet"  type="text/css"/>
    <link href="/estilo/bootstrap-responsive.css"  rel="stylesheet"  type="text/css"/>
    <%--Controles framework css--%>
    <link href="/estilo/cssframework.css"  rel="stylesheet" type="text/css"/>

   <%-- clase basica junggla--%>
   <link href="/estilo/css_home.css"  rel="stylesheet" type="text/css"/>
   <script src="//js/bootstrap.js" type="text/javascript"></script>
    <script src="//js/bootstrap.min.js" type="text/javascript"></script>
     <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
            <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
</head>
<body class="home home-new  logged-out ">

    <form id="form1" runat="server">
   <%-- Cabecera home y login--%>
    <header>
    <nav class="navbar">
      <div class="navbar-inner">
        <div class="container">
         
          <a href="http://junggla.com/" class="brand"><img src="Imagenes/junggla_new_negro_mono.png" alt="junggla" style="padding-left:70px;" width="190px" height="86px"></a>
          <div class="nav-collapse">
              
              
              <ul class="nav">
                     <form class="form-inline">
                      <input type="text" class="input-small inline" placeholder="Email">
                      <input type="password" class="input-small inline" placeholder="Password">
                      <button type="submit" class="btn btn-inline" style="margin-top:0px;margin-bottom:4px;" formaction="/login.aspx">Iniciar sesión</button>
                      <label class="checkbox">
                        <input type="checkbox">No cerrar sesión
                        <a href="">¿Has olvidado la contraseña?</a>
                      </label>
                    </form>
              
              </ul>
              <ul class="nav actions" style="margin-top:2px;height:50px;">
              <span class="icon-bar"></span>
              </ul>
            <ul class="nav">
                <%--<li><a href="/Movil/">Movil</a></li>--%>
                <li><a href="#">Quienes somos</a></li>
                <li><a href="#">Blog</a></li>
            </ul>
            
          </div><!--/.nav-collapse -->
        </div>
      </div>
    
    </nav>
    </header>
    <%----Fin Cabecera----%>

    <%--Cuerpo web--%>
 <div id="cuerpo">
    <div class="container">
    <div>
      <header class="hero-unit">
        <h1>
            La mejor manera<%--The Best way--%>
            <small> de descubrir un puesto de trabajo<%--to discovery a job--%></small>
        </h1>
        
      </header>
    </div>
      </div>    
    <div class="container">
      <section>
          <div class="row features">
  
            <div class="span6">
            <div style="text-align:center;margin-top:40px;">
              <img src="Imagenes/world.png" />              <%--<i class="bookmarking"></i>--%>
                </div>
              <h3>En todas partes.</h3>
               <p>
                 Con Junggla es muy fácil encontrar un puesto de trabajo usando nuestra aplicación movil podras saber todos los puesto de trabajos que se encuentran a tu alrededor y aplicar de forma rapida. <a href="" class="text-warning">Descargala ya</a>
                </p>
            </div>

            <div class="span6">
            <div style="text-align:center;margin-top:10px;">
              <img src="Imagenes/organiza-y-comparte.png" />
              <h3>Organiza y comparte.</h3>
              <p>Ahora podras gestionar  tus entrevistas desde junggla  y compartir con tus amigos las ofertas de trabajo mas interesante del mercado</p>
            </div>
            </div>
            
            <div class="span6">
              <div style="text-align:center;margin-top:80px;">
              <img src="Imagenes/descubreaplica.png" />
              <h3>Descubre,sigue y aplica.</h3>
              <p>Encuentra los puestos que mas se aplican a ti.
Sigue a las empresas y se el primero en enterarse
de las ofertas de trabajo disponibles. 
</p>
            </div></div>
            
        </div>
        </section>
    </div>

 </div>


<%-- invitacion --%>
 <div class="home-discover">
          <div>
              <section class="clearfix">
                  <h2>Registrate para recibir una invitación y unirte a Junggla<%--Sign up for and invite to join Junggla.--%></h2>
                  <div class="form-horizontal" style="text-align:center; font-size:18px">
                      <input type="text" class="input-xlarge"  placeholder="Email Address">
                      <button type="button" class="btn-info">Solicitar invitación</button>
                  </div>
                   <div class="container">
                  <%-- Mensajes de Errores y OK Invitaciones--%>
                  <%-- <div class="alert alert-error">
                   <button type="button" class="close" data-dismiss="alert">×</button>
                     Este usuario ya esta registrado, por favor intente con otro.
                     </div>--%>
               <%--   <div class="alert alert-warning">
                 <button type="button" class="close" data-dismiss="alert">×</button>
                      No es un correo valido.
                    </div>--%>
               <%--       <div class="alert alert-success">
                    <button type="button" class="close" data-dismiss="alert">×</button>
                     ¡Pronto estaremos disponible para usted, gracias por registrarse.!
                    </div>--%>

                   
                </div>
                
         </section>
        </div>

 <div class="form-actions">
      <div class="div_registrar_empresa">
         <h1>Eres una empresa?</h1><button type="button" class="btn-warning xlarge">Registrate</button> 
     </div>
 </div>
 </div>



   <footer>
        <p>
        <a href="/about/">About us</a>
        <a href="/press/">Press</a>
        <a href="/privacy/">Privacy</a>
        <a href="mailto:hello@junggla.com">Contact</a>
        <a href="http://blog.junggla.com" target="_blank">Blog</a>
        © 2012 Junggla.</p>
      </footer>
 </form>
    
</body>
</html>
