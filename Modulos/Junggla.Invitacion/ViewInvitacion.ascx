<%@ Control language="vb" Inherits="Junggla.Modules.Invitacion.ViewInvitacion" AutoEventWireup="true" Explicit="True" Codebehind="ViewInvitacion.ascx.vb" %>

<script type="text/javascript" language="javascript" src="/junggla/js/jquery.placeholder.js"></script>

<script type="text/javascript" language="javascript">
    function Accept(id) {
        console.log(id);
        __doPostBack('accept', id);
    }

    function Reject(id) {
        console.log(id);
        __doPostBack('reject', id);
    }

</script>
<div>
    <asp:Repeater ID="rptInvitations" runat="server" >
        <HeaderTemplate>
            <table style="width:100%;">
                <tr>
        </HeaderTemplate>
        <ItemTemplate>
                    <td style="width:60%;" class="GrayBorder"><asp:Label ID="lblEmail" runat="server" Text='<%# Eval("Email") %>'></asp:Label></td>
                    <td style="width:20%;" class="GrayBorder"><asp:Label ID="lblState" runat="server" Text='<%# GetNameState(Eval("Estado")) %>' ></asp:Label></td>
                    <td valign="middle" style="width:10%;" class="GrayBorder">
                        <input type="button" value='<%= TextoLocalizado("btnAccept") %>' class="btn-success" style="margin-bottom:0px" 
                            onclick='<%# "Accept(" & Eval("InvitacionID") & ")" %>' />
                    </td>
                    <td valign="middle" style="width:10%;" class="GrayBorder">
                        <input type="button" value='<%= TextoLocalizado("btnReject") %>' class="btn-danger" style="margin-bottom:0px" 
                            onclick='<%# "Reject(" & Eval("InvitacionID") & ")" %>' />
                    </td>
        </ItemTemplate>
        <SeparatorTemplate>
                </tr>
                <tr>
        </SeparatorTemplate>
        <FooterTemplate>
                </tr>
            </table>
        </FooterTemplate>
    </asp:Repeater>
</div>