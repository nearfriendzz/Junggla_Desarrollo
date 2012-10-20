Imports DotNetNuke.Entities.Users
Imports DotNetNuke.Security.Membership

Namespace Junggla.Modules.Login

    Partial Public Class ctlLogin
        Inherits Junggla.Modules.Login.ModuleBase

#Region "Event Handlers"
        Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
            lblUserName.InnerHtml = "<b>" & UserInfo.Username & "</b>"
            pnlData.Visible = Not Request.IsAuthenticated
            pnlUserData.Visible = Request.IsAuthenticated
        End Sub

        Protected Sub btnLogin_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnLogin.Click
            Dim userName As String = FiltrarTexto(txtUserName.Text)
            Dim password As String = FiltrarTexto(txtPassword.Text)
            Dim objUser As UserInfo
            Dim status As UserLoginStatus

            If Not String.IsNullOrEmpty(userName) And Not String.IsNullOrEmpty(password) Then
                objUser = UserController.GetUserByName(PortalId, userName)

                If objUser IsNot Nothing Then
                    UserController.UserLogin(PortalId, userName, password, "", PortalSettings.PortalName, "", status, chkRememberSession.Checked)

                    Session("LoginStatus") = status
                    Session("UserName") = userName
                    Session("password") = password
                    Select Case status
                        Case UserLoginStatus.LOGIN_FAILURE
                            Response.Redirect(NavigateURL(ModuleTabIDByModuleID(FirstModuleIdByDefinition(PortalId, "Junggla.Login"))))

                        Case UserLoginStatus.LOGIN_SUCCESS
                            SaveCookies(userName, password)
                            Response.Redirect(NavigateURL())

                        Case UserLoginStatus.LOGIN_SUPERUSER
                            SaveCookies(userName, password)
                            Response.Redirect(NavigateURL())

                        Case UserLoginStatus.LOGIN_USERLOCKEDOUT
                            Response.Redirect(NavigateURL(ModuleTabIDByModuleID(FirstModuleIdByDefinition(PortalId, "Junggla.Login"))))

                        Case Else
                            Response.Redirect(NavigateURL())
                    End Select
                Else
                    Session("LoginStatus") = UserLoginStatus.LOGIN_FAILURE
                    Response.Redirect(NavigateURL(ModuleTabIDByModuleID(FirstModuleIdByDefinition(PortalId, "Junggla.Login"))))
                End If
            End If
        End Sub

        Protected Sub btnLogOff_Click(sender As Object, e As EventArgs) Handles btnLogOff.Click
            Dim objPortalSecurity As PortalSecurity = New PortalSecurity()

            objPortalSecurity.SignOut()
            SaveCookies("", "", True)

            Response.Redirect(NavigateURL())
        End Sub
#End Region

#Region "Private Methods"
        Private Sub SaveCookies(ByVal userName As String, ByVal password As String, Optional ByVal Delete As Boolean = False)
            Dim cookieUsuario As New HttpCookie("userName")
            Dim cookiePassword As New HttpCookie("password")
            Dim dias As Integer = IIf(Delete, -1, 1000)

            cookieUsuario.Value = userName
            cookiePassword.Value = password

            cookieUsuario.Expires = DateTime.Now.AddDays(dias)
            cookiePassword.Expires = DateTime.Now.AddDays(dias)

            Response.Cookies.Add(cookieUsuario)
            Response.Cookies.Add(cookiePassword)
        End Sub
#End Region
    End Class
End Namespace