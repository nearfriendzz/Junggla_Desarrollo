<%@ Control language="C#" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" TagName="LOGO" Src="~/Admin/Skins/Logo.ascx" %>
<%@ Register TagPrefix="jgg" TagName="ctlLogin" Src="~/DesktopModules/Junggla.Login/Controls/ctlLogin.ascx" %>

<link href="Css/bootstrap.min.css"  rel="stylesheet"  type="text/css"/>
<link href="Css/bootstrap.css"  rel="stylesheet"  type="text/css"/>
<link href="Css/bootstrap-responsive.css"  rel="stylesheet"  type="text/css"/>
<link href="Css/cssframework.css"  rel="stylesheet" type="text/css"/>
<script language="javascript" type="text/javascript" src="js/bootstrap.min.js" ></script>
<title>Junggla. La mejor manera de descubrir un trabajo.</title>

<script type="text/javascript" language="javascript">
    $(document).ready(function () {
        if ($('#dnnCPWrap').size() > 0) { //Baja el Header si estamos logueados como host
            $('#Header').css('padding-top', '50px');
        }
    }); 
</script>

<div id="DNN6" class="Home">
	<div id="Background"></div>
    <div id="Header">
        <div class="Content">
            <div id="LogoRow">
			    <dnn:LOGO id="dnnLogo" runat="server" />
                    <div id="Login">
						<jgg:ctlLogin ID="ctlLogin" runat="server" />
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
</div>   