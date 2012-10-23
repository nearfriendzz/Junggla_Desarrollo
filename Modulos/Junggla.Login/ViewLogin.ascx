<%@ Control language="vb" Inherits="Junggla.Modules.Login.ViewLogin" AutoEventWireup="false" Explicit="True" Codebehind="ViewLogin.ascx.vb" %>

<script type="text/javascript" language="javascript" src="/js/jquery.placeholder.js"></script>

<div id="LoginError">
    <div class="thumbnail">
        <h2><%= TextoLocalizado("lblTittle.Text")%></h2>
  
        <hr />
        <div class="all-errors">
            <div id="errorUsuario" runat="server" class="alert alert-error" visible="false">
                <a class="close" data-dismiss="alert">x</a>
                <%= TextoLocalizado("lblErrorUsuario.Text")%>
            </div>
            <div id="errorPassword" runat="server" class="alert alert-warning" visible="false">
                <a class="close" data-dismiss="alert">x</a>
                <%= TextoLocalizado("lblErrorPassword.Text")%>
            </div>
            <div id="errorEmail" runat="server" class="alert alert-warning" visible="false">
                <a class="close" data-dismiss="alert">x</a>
                <%= TextoLocalizado("lblErrorEmail.Text")%>
            </div>
            <div id="errorBloqueo" runat="server" class="alert alert-warning" visible="false">
                <a class="close" data-dismiss="alert">x</a>
                <%= TextoLocalizado("lblErrorBloqueo.Text")%>
            </div>
        </div>
        <div align="center">
            <div class="input">
                <asp:TextBox id="txtUserName" runat="server" CssClass="input" placeholder="Email"  ></asp:TextBox>
            </div>
            <div class="input">
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="input" placeholder="Password" ></asp:TextBox>
            </div>
            <div class="actions clearfix">
                <asp:Button ID="btnLogin" runat="server" resourcekey="btnLogin" CssClass="btn btn-green" 
                    style="margin-top:0px;margin-bottom:20px;width:160px!important;height:32px!important"/>
            </div>
        </div>
    </div> 
    <div align="center" class="paddingTop20">
            <p>
                <a href="/junggla/Reset.aspx"><%= TextoLocalizado("lblRequestPassword.Text")%></a>
                &nbsp;<%= TextoLocalizado("lblNeedAccount.Text")%>&nbsp;
                <a href="#"><%= TextoLocalizado("lblRegister.Text")%></a>
            </p>
        </div>   
</div>