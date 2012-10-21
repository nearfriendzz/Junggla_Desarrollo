<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="ctlRequestInvitation.ascx.vb" Inherits="Junggla.Modules.Invitacion.ctlRequestInvitation" %>

<script type="text/javascript" language="javascript" src="/junggla/js/jquery.placeholder.js"></script>

 <div class="home-discover">
    <section class="clearfix">
        <h2><%= TextoLocalizado("lblTitle.Text")%></h2>
        <div class="form-horizontal" style="text-align:center; font-size:18px; margin-top:10px;">
            <asp:TextBox ID="txtEmail" runat="server" placeholder="Email Address" CssClass="input-xlarge" MaxLength="320" ></asp:TextBox>
            <asp:Button ID="btnRequest" runat="server" resourcekey="btnRequest" CssClass="btn-info" />
        </div>
        <div class="container divCenter">
            <div class="all-errors width90percent" style="margin-top:10px">
                <div id="errorEmpty" runat="server" class="alert alert-error" visible="false">
                    <a class="close" data-dismiss="alert">x</a>
                    <%= TextoLocalizado("lblErrorEmpty.Text")%>
                </div>
                <div id="errorFormat" runat="server" class="alert alert-warning" visible="false">
                    <a class="close" data-dismiss="alert">x</a>
                    <%= TextoLocalizado("lblErrorFormat.Text")%>
                </div>
                <div id="errorUsed" runat="server" class="alert alert-error" visible="false">
                    <a class="close" data-dismiss="alert">x</a>
                    <%= TextoLocalizado("lblErrorUsed.Text")%>
                </div>
                <div id="errorExist" runat="server" class="alert alert-error" visible="false">
                    <a class="close" data-dismiss="alert">x</a>
                    <%= TextoLocalizado("lblErrorExist.Text")%>
                </div>
                <div id="success" runat="server" class="alert alert-success" visible="false">
                    <a class="close" data-dismiss="alert">x</a>
                    <%= TextoLocalizado("lblSuccess.Text")%>
                </div>
            </div>                   
        </div>
    </section>
</div>