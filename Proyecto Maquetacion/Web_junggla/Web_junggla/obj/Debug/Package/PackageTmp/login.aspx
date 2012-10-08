<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Web_junggla.login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Junggla. La mejor manera de descubrir un trabajo<%--The best way to discover a job--%>.</title>
    <link href="../Imagenes/favicon.ico" rel="shortcut icon" />
    <link href="estilo/bootstrap.min.css"  rel="stylesheet"  type="text/css"/>
     <link href="estilo/bootstrap.css"  rel="stylesheet"  type="text/css"/>
     <link href="estilo/bootstrap-responsive.css"  rel="stylesheet"  type="text/css"/>
    <%--Controles framework css--%>
    <link href="estilo/cssframework.css"  rel="stylesheet" type="text/css"/>

   <%-- clase basica junggla--%>
   <link href="estilo/css_home.css"  rel="stylesheet" type="text/css"/>
    <script src="//js/bootstrap.js" type="text/javascript"></script>
    <script src="//js/bootstrap.min.js" type="text/javascript"></script>
</head>
<body >
  
    <nav class="navbar">
        
      <div class="navbar-inner">
        <div class="container">
          <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
          <a href="https://www.junggla.com/" class="brand"><img src="Imagenes/junggla_new_negro_mono.png" alt="Junggla" style="padding-left:70px; " width="190" height="86"></a>
          <div class="nav-collapse">
              
              
              <ul class="nav actions">
                  <li><a href="/home.aspx" data-link="modal" data-target="#login-modal">Inicio</a></li>
              </ul>
               <ul class="nav">
                <li><a href="#">Quienes somos</a></li>
                <li><a href="#">Blog</a></li>
            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    
    </nav>
    

  <article class="container">
      
    
<div id="login" class="accounts-form">
  <h2>Iniciar sesión en Junggla</h2>
  
   <form action="/login" method="POST" id="auth-form">
    <input type="hidden" name="next" value="/welcome/">
    
    <div class="all-errors">
        <div class="alert alert-error">
        <button type="button" class="close" data-dismiss="alert">×</button>
          Este usuario no esta registrado, por favor intente con otro <br />
          o solicite una invitación.
         </div>
          <div class="alert alert-warning">
          <button type="button" class="close" data-dismiss="alert">×</button>
           No es un correo válido.
           </div>
    </div>
      <div class="input">
        <input id="id_username" type="text" name="username" maxlength="75" placeholder="Email">
        
      </div>
      <div class="input">
        <input type="password" name="password" id="id_password" placeholder="Contraseña">
    </div>
    <div class="actions clearfix">
    <input type="submit" value="Iniciar sesión" class="btn btn-green">

    </div>
    </form>
 
</div>
<p class="note"><a href="reset.aspx">¿Has olvidado la contraseña?</a> · Necesitas una cuenta? <a href="/signup">Registrate</a> </p>

      <footer>
        <p>
        <a href="/about/">About us</a>
        <a href="/press/">Press</a>
        <a href="/privacy/">Privacy</a>
        <a href="mailto:hello@junggla.com">Contact</a>
        <a href="http://blog.junggla.com" target="_blank">Blog</a>
        © 2012 Junggla.</p>
      </footer>

    </article> <!-- /container -->

</body>
</html>
