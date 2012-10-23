<%@ Control Language="vb" AutoEventWireup="false" Inherits="Junggla.Modules.Alta.SettingsAltaCandidato" Codebehind="SettingsAltaCandidato.ascx.vb" %>

<table>
    <tr>
        <td><asp:Label ID="lblMode" runat="server" resourcekey="lblMode" ></asp:Label></td>
        <td>
            <asp:RadioButtonList ID="rblMode" runat="server" RepeatDirection="Horizontal">
            </asp:RadioButtonList>
        </td>
    </tr>
</table>