Imports System.Web.UI
Imports System.Collections.Generic
Imports System.Reflection

Imports DotNetNuke
Imports DotNetNuke.Services.Exceptions
Imports DotNetNuke.Services.Localization
Imports DotNetNuke.Entities.Users
Imports DotNetNuke.Security.Membership

Namespace Junggla.Modules.Login

    ''' -----------------------------------------------------------------------------
    ''' <summary>
    ''' The ViewJunggla.Login class displays the content
    ''' </summary>
    ''' <remarks>
    ''' </remarks>
    ''' <history>
    ''' </history>
    ''' -----------------------------------------------------------------------------
    Partial Class ViewLogin
        Inherits Junggla.Modules.Login.ModuleBase

#Region "Event Handlers"

        ''' -----------------------------------------------------------------------------
        ''' <summary>
        ''' Page_Load runs when the control is loaded
        ''' </summary>
        ''' <remarks>
        ''' </remarks>
        ''' <history>
        ''' </history>
        ''' -----------------------------------------------------------------------------
        Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
            Try
                'If Not Page.IsPostBack Then
                If Not String.IsNullOrEmpty(Session("LoginStatus")) Then
                    Dim status As UserLoginStatus = Session("LoginStatus")

                    Select Case status
                        Case UserLoginStatus.LOGIN_USERLOCKEDOUT
                            errorBloqueo.Visible = True
                        Case UserLoginStatus.LOGIN_FAILURE
                            If Not String.IsNullOrEmpty(Session("userName")) Then
                                Dim objUser As UserInfo = UserController.GetUserByName(PortalId, Session("userName"))

                                If objUser Is Nothing Then
                                    errorUsuario.Visible = True
                                Else
                                    errorUsuario.Visible = True
                                End If
                            Else
                                errorUsuario.Visible = True
                            End If
                            If String.IsNullOrEmpty(Session("password")) Then
                                errorPassword.Visible = True
                            End If
                        Case Else
                            errorUsuario.Visible = True
                    End Select
                End If
                'End If
            Catch exc As Exception        'Module failed to load
                ProcessModuleLoadException(Me, exc)
            End Try
        End Sub

        Protected Sub btnLogin_Click(sender As Object, e As EventArgs) Handles btnLogin.Click
            Dim userName As String = FiltrarTexto(txtUserName.Text)
            Dim password As String = FiltrarTexto(txtPassword.Text)
            Dim objUser As UserInfo
            Dim status As UserLoginStatus

            If Not String.IsNullOrEmpty(userName) And Not String.IsNullOrEmpty(password) Then
                objUser = UserController.GetUserByName(PortalId, userName)

                If objUser IsNot Nothing Then
                    UserController.UserLogin(PortalId, userName, password, "", PortalSettings.PortalName, "", status, False)

                    Session("LoginStatus") = status
                    Session("userName") = userName
                    Session("password") = password
                    Select Case status
                        Case UserLoginStatus.LOGIN_FAILURE
                            Response.Redirect(NavigateURL())

                        Case UserLoginStatus.LOGIN_SUCCESS
                            Response.Redirect(NavigateURL())

                        Case UserLoginStatus.LOGIN_SUPERUSER
                            Response.Redirect(NavigateURL())

                        Case UserLoginStatus.LOGIN_USERLOCKEDOUT
                            Response.Redirect(NavigateURL())

                        Case Else
                            Response.Redirect(NavigateURL())
                    End Select

                Else
                    Session("LoginStatus") = UserLoginStatus.LOGIN_FAILURE
                    Response.Redirect(NavigateURL())
                End If
            End If
        End Sub
#End Region

#Region "Optional Interfaces"

#End Region
    End Class

End Namespace

