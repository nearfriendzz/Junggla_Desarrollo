<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="ctlLogin.ascx.vb" Inherits="Junggla.Modules.Login.ctlLogin" %>

<script type="text/javascript" language="javascript" src="/js/jquery.placeholder.js"></script>

<div id="pnlData" runat="server" class="nav form-inline" style="padding-left:30px;margin-bottom: 0px;">
    <table width="327px">
        <tr>
            <td><asp:TextBox id="txtUserName" runat="server" CssClass="input-small" placeholder="Email" ></asp:TextBox></td>
            <td><asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="input-small" placeholder="Password" ></asp:TextBox></td>
            <td><asp:Button ID="btnLogin" runat="server" resourcekey="btnLogin" CssClass="btn btn-inline" /></td>
        </tr>
    </table>
    <table width="327px">
        <tr>
            <td style="padding-top:10px" valign="top">
                <asp:CheckBox ID="chkRememberSession" runat="server" Checked="true" resourcekey="chkRememberSession" CssClass="checkbox" />
            </td>
            <td style="padding-top:10px" valign="top">
                <a href="/Reset.aspx"><%= TextoLocalizado("lnkRememberPassword.Text")%></a>
            </td>
        </tr>
    </table>
</div>

<div id="pnlUserData" runat="server" class="nav form-inline" style="padding-left:30px;margin-bottom: 0px;">
    <table width="327px">
        <tr>
            <td>
                <asp:Label ID="lblUserNameInfo" runat="server" resourcekey="lblUserNameInfo" style="font-size:13px"></asp:Label>
                <label id="lblUserName" runat="server" ></label>
            </td>
            <td>
                <asp:Button ID="btnLogOff" runat="server" resourcekey="btnLogOff" CssClass="btn btn-inline" style="margin-top:0px;margin-bottom:4px;"
                     Font-Bold="True" />
            </td>
        </tr>
    </table>
</div>