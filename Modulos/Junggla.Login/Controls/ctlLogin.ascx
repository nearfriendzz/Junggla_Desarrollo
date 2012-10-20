<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="ctlLogin.ascx.vb" Inherits="Junggla.Modules.Login.ctlLogin" %>

<script type="text/javascript" language="javascript" src="/junggla/js/jquery.placeholder.js"></script>

<script type="text/javascript" language="javascript">
    // Cookie handling
    var Cookie =
    {
        read: function (name) {
            var arrCookies = document.cookie.split('; ');
            for (var i = 0; i < arrCookies.length; i++) {
                var arrCookie = arrCookies[i].split('=');
                if (arrCookie[0] == name) {
                    return decodeURIComponent(arrCookie[1]);
                }
            }
            return false;
        },
        write: function (name, value, expires, path) {
            if (expires) {
                var date = new Date();
                date.setTime(date.getTime() + (((((expires * 24) * 60) * 60) * 1000)));
                expires = '; expires=' + date.toGMTString();
            }
            else expires = '';
            if (!path) path = '/';
            document.cookie = name + '=' + encodeURIComponent(value) + expires + '; path=' + path;
        },
        remove: function (name) {
            this.write(name, '', -1);
        }
    }

    // Detects if can set a cookie in the browser
    function browserSupportsCookies() {
        Cookie.write('cookiesEnabled', 1);
        var boolCookiesEnabled = Cookie.read('cookiesEnabled');
        Cookie.remove('cookiesEnabled');
        if (boolCookiesEnabled != 1) {
            return false;
        }
        return true;
    }

    $(document).ready(function () {
        if (!navigator.cookieEnabled) {
            $('input[id*="chkRecordar"]').attr('disabled', 'true');
        }

        $('input[id*="chkRecordar"]').attr('checked', 'checked');

        //        if (Cookie.read('userName') != false && Cookie.read('password') != false) {
        //            if ($('input[id*="hdnLoginCompletado"]').val() == '') {
        //                //__doPostBack('login', '{"userName":"' + Cookie.read('userName') + '", "password":"' + Cookie.read('password') + '"}');
        //            }
        //        }
    });

    function Recordar() {
        if (navigator.cookieEnabled) {
            if ($('input[id*="chkRecordar"]').attr('checked') == 'checked') {
                var userName = $('input[id*="txtUsuarioBucmi"]').val();
                var pass = $('input[id*="txtPassBucmi"]').val();

                Cookie.write('userName', userName, 1000);
                Cookie.write('password', pass, 1000);
            } else {
                Cookie.remove('userName');
                Cookie.remove('password');
            }
        }
        return true;
    }
</script>

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
                <a href="/junggla/Reset.aspx"><%= TextoLocalizado("lnkRememberPassword.Text")%></a>
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