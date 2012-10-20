<%@ Control language="C#" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" TagName="LOGO" Src="~/Admin/Skins/Logo.ascx" %>
<%@ Register TagPrefix="dnn" TagName="COPYRIGHT" Src="~/Admin/Skins/Copyright.ascx" %>

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