<%@ Control language="C#" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" TagName="LOGO" Src="~/Admin/Skins/Logo.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TEXT" Src="~/Admin/Skins/Text.ascx" %>
<%@ Register TagPrefix="dnn" TagName="USER" Src="~/Admin/Skins/User.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGIN" Src="~/Admin/Skins/Login.ascx" %>
<%@ Register TagPrefix="dnn" TagName="STYLES" Src="~/Admin/Skins/Styles.ascx" %>
<%@ Register TagPrefix="dnn" TagName="COPYRIGHT" Src="~/Admin/Skins/Copyright.ascx" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.DDRMenu.TemplateEngine" Assembly="DotNetNuke.Web.DDRMenu" %>
<%@ Register TagPrefix="dnn" TagName="CONTROLPANEL" Src="~/Admin/Skins/controlpanel.ascx" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>

<dnn:STYLES runat="server" ID="StylesIE7" Name="IE7Minus" StyleSheet="ie7skin.css" Condition="LT IE 8" UseSkinPath="true"/>
<link href="/Portals/_default/Skins/Junggla.Skin/Estilo/bootstrap.min.css"  rel="stylesheet"  type="text/css"/>
<link href="/Portals/_default/Skins/Junggla.Skin/Estilo/bootstrap.css"  rel="stylesheet"  type="text/css"/>
<link href="/Portals/_default/Skins/Junggla.Skin/Estilo/bootstrap-responsive.css"  rel="stylesheet"  type="text/css"/>
<link href="/Portals/_default/Skins/Junggla.Skin/Estilo/cssframework.css"  rel="stylesheet" type="text/css"/>
<link href="/Portals/_default/Skins/Junggla.Skin/Estilo/css_home.css"  rel="stylesheet" type="text/css"/>



<%--<div id="DNN6" class="Home">
	<div id="Background"></div>
    <div id="Header">
        <div class="Content">
            <div id="LogoRow">
			    <dnn:LOGO id="dnnLogo" runat="server" />
                <div class="LogoRowRight">
                    <div id="Login">
                        <dnn:USER ID="dnnUser" runat="server" LegacyMode="false" /> 
                        <dnn:LOGIN ID="dnnLogin" CssClass="LoginLink" runat="server" LegacyMode="false" />
                    </div>
                </div>
            </div>
        </div>
	</div>
    <div id="Content">
        <div id="Panes">
            <div id="ContentPane" runat="server"></div>
            <div id="LeftPane" runat="server"></div>
		    <div id="RightPane" runat="server"></div>
		    <div id="BottomPane" runat="server"></div>
        </div>
    </div>
	<div id="Footer">
        <div class="Content">
            <table width="100%" >
                <tr align="center" valign="middle">
                    <td><a href="/about.aspx">About us</a></td>
                    <td><a href="/press.aspx">Press</a></td>
                    <td><a href="/privacy.aspx">Privacy</a></td>
                    <td><a href="mailto:hello@junggla.com">Contact</a></td>
                    <td><a href="http://blog.junggla.com" target="_blank">Blog</a></td>
                    <td><dnn:COPYRIGHT ID="dnnCopyright" runat="server" CssClass="" /></td>
                </tr>
            </table>
        </div>
    </div>
</div>--%>


<div id="DNN6" class="Home">
   <%-- Cabecera home y login--%>
    <header>
    <nav class="navbar">
      <div class="navbar-inner">
        <div class="container">
         
          <a href="http://junggla.com/" class="brand"><img src="Images/Imagenes/junggla_new_negro_mono.png" alt="junggla" style="padding-left:70px; " width="190" height="86"></a>
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
              <img src="Images/Imagenes/world.png" />              <%--<i class="bookmarking"></i>--%>
                </div>
              <h3>En todas partes.</h3>
               <p>
                 Con Junggla es muy fácil encontrar un puesto de trabajo usando nuestra aplicación movil podras saber todos los puesto de trabajos que se encuentran a tu alrededor y aplicar de forma rapida. <a href="" class="text-warning">Descargala ya</a>
                </p>
            </div>

            <div class="span6">
            <div style="text-align:center;margin-top:10px;">
              <img src="Images/Imagenes/organiza-y-comparte.png" />
              <h3>Organiza y comparte.</h3>
              <p>Ahora podras gestionar  tus entrevistas desde junggla  y compartir con tus amigos las ofertas de trabajo mas interesante del mercado</p>
            </div>
            </div>
            
            <div class="span6">
              <div style="text-align:center;margin-top:80px;">
              <img src="Images/Imagenes/descubreaplica.png" />
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
 </div>
    

<dnn:DnnJsInclude ID="DnnJsInclude1" runat="server" FilePath="jquery.cycle.min.js" PathNameAlias="SkinPath" />
<dnn:DnnJsInclude ID="DnnJsInclude2" runat="server" FilePath="DNNMega/jquery.dnnmega.debug.js" PathNameAlias="SkinPath" />
<dnn:DnnCssInclude ID="DnnCssInclude1" runat="server" FilePath="DNNMega/dnnmega.css" PathNameAlias="SkinPath" />
<dnn:DnnJsInclude ID="DnnJsInclude3" runat="server" FilePath="~/Resources/Shared/Scripts/jquery/jquery.hoverIntent.min.js" />