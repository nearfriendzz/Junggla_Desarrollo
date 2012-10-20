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
<link href="Css/bootstrap.min.css"  rel="stylesheet"  type="text/css"/>
<link href="Css/bootstrap.css"  rel="stylesheet"  type="text/css"/>
<link href="Css/bootstrap-responsive.css"  rel="stylesheet"  type="text/css"/>
<link href="Css/cssframework.css"  rel="stylesheet" type="text/css"/>
<title>Junggla. La mejor manera de descubrir un trabajo.</title>

<div id="DNN6" class="Home">
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
</div>   

<dnn:DnnJsInclude ID="DnnJsInclude1" runat="server" FilePath="jquery.cycle.min.js" PathNameAlias="SkinPath" />
<dnn:DnnJsInclude ID="DnnJsInclude2" runat="server" FilePath="DNNMega/jquery.dnnmega.debug.js" PathNameAlias="SkinPath" />
<dnn:DnnCssInclude ID="DnnCssInclude1" runat="server" FilePath="DNNMega/dnnmega.css" PathNameAlias="SkinPath" />
<dnn:DnnJsInclude ID="DnnJsInclude3" runat="server" FilePath="~/Resources/Shared/Scripts/jquery/jquery.hoverIntent.min.js" />