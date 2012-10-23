<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="ctlRecoverPassword.ascx.vb" Inherits="Junggla.Modules.Login.ctlRecoverPassword" %>

<script tye="text/javascript" language="javascript" src="/js/jquery.placeholder.js"></script>

<div id="SendLogin" runat="server" class="SendLogin">
    <div class="thumbnail">
        <h3 style="text-align:center;"><%= TextoLocalizado("lblTittle.Text")%></h3>  
        <hr />
        <div class="all-errors" style="text-align:center;">
            <div id="errorUsuario" runat="server" class="alert alert-error" visible="false">
                <a class="close" data-dismiss="alert">x</a>
                <%= TextoLocalizado("lblErrorUsuario.Text")%>
            </div>
            <div id="errorEmail" runat="server" class="alert alert-warning" visible="false">
                <a class="close" data-dismiss="alert">x</a>
                <%= TextoLocalizado("lblErrorEmail.Text")%>
            </div>
        </div>
        <div align="center">
            <div class="input">
                <asp:TextBox id="txtUserName" runat="server" CssClass="input" placeholder="Email"  ></asp:TextBox>
            </div>
            <div class="actions clearfix">
                <asp:Button ID="btnSend" runat="server" resourcekey="btnSend" CssClass="btn btn-green" 
                    style="margin-top:0px;margin-bottom:20px;width:160px!important;height:32px!important"/>
            </div>
        </div>
    </div> 
</div>
<div id="EmailSend" runat="server" visible="false" class="EmailSend" >
    <div class="thumbnail">
        <h3 style="text-align:center;"><%= TextoLocalizado("lblTittleSend.Text")%></h3>
        <hr class="divider" />
        <div align="center">
            <table>
                <tr>
                    <td align="center"><asp:Label ID="lblInfo" runat="server" resourcekey="lblInfo" ForeColor="Green"></asp:Label></td>
                </tr>
                <tr>
                    <td><br /></td>
                </tr>
                <tr>
                    <td align="center">
                        <asp:Label ID="lblInfo2" runat="server" resourcekey="lblInfo2"></asp:Label>
                        <a href="http://www.junggla.com/Reset.aspx" ><%= TextoLocalizado("lblReSendEmail.Text")%></a>
                    
                    </td>
                </tr>
            </table>
        </div>
    </div>
</div>