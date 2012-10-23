<%@ Control language="vb" Inherits="Junggla.Modules.Alta.ViewAltaCandidato" AutoEventWireup="true" Explicit="True" Codebehind="ViewAltaCandidato.ascx.vb" %>

<script type="text/javascript" language="javascript" src="/js/jquery.placeholder.js"></script>

<div id="LoginError">
    <div class="thumbnail">
        <h3><%= TextoLocalizado("lblTitle.Text")%></h3>
  
        <hr />
        <div class="all-errors">
            <div id="errorRequired" runat="server" class="alert alert-error" visible="false">
                <a class="close" data-dismiss="alert">x</a>
                <%= TextoLocalizado("lblErrorRequired.Text")%>
            </div>
            <div id="errorPassword" runat="server" class="alert alert-error" visible="false">
                <a class="close" data-dismiss="alert">x</a>
                <%= TextoLocalizado("lblErrorPassword.Text")%>
            </div>
            <div id="errorEmail" runat="server" class="alert alert-error" visible="false">
                <a class="close" data-dismiss="alert">x</a>
                <%= TextoLocalizado("lblErrorEmail.Text")%>
            </div>
            <div id="errorUser" runat="server" class="alert alert-error" visible="false">
                <a class="close" data-dismiss="alert">x</a>
                <%= TextoLocalizado("lblErrorUser.Text")%>
            </div>
            <div id="errorInvitation" runat="server" class="alert alert-error" visible="false">
                <a class="close" data-dismiss="alert">x</a>
                <%= TextoLocalizado("lblErrorInvitation.Text")%>
            </div>
            <div id="success" runat="server" class="alert alert-success" visible="false">
                <a class="close" data-dismiss="alert">x</a>
                <%= TextoLocalizado("success.Text")%>
            </div>
        </div>
        <div align="center">
            <div class="input">
                <asp:TextBox id="txtName" runat="server" CssClass="input" ></asp:TextBox>
            </div>
            <div class="input">
                <asp:TextBox ID="txtSurname" runat="server" CssClass="input" ></asp:TextBox>
            </div>
            <div class="input">
                <asp:TextBox id="txtEmail" runat="server" CssClass="input" ></asp:TextBox>
            </div>
            <div class="input">
                <asp:TextBox id="txtPassword" runat="server" CssClass="input" TextMode="Password" ></asp:TextBox>
            </div>
            <div class="input">
                <asp:TextBox id="txtRePassword" runat="server" CssClass="input" TextMode="Password" ></asp:TextBox>
            </div>
            <div class="actions clearfix">
                <asp:Button ID="btnRegister" runat="server" resourcekey="btnRegister" CssClass="btn btn-green" 
                    style="margin-top:0px;margin-bottom:20px;width:160px!important;height:32px!important"/>
            </div>
        </div>
    </div>   
</div>