Imports DotNetNuke.Entities.Users
Imports DotNetNuke.Security.Membership

Namespace Junggla.Modules.Login

    Public Class ctlNewPassword
        Inherits Junggla.Modules.Login.ModuleBase

#Region "Event Handlers"
        Dim objResetPassword As ResetPasswordInfo

        Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
            If Not Page.IsPostBack Then
                Dim code As String = Request.QueryString("code")  'Leemos el codigo del enlace del correo electronio
                Dim objResetPass As ResetPasswordInfo

                If Not String.IsNullOrEmpty(code) Then  'Si el parametro del correo no es vacio
                    code = FiltrarTexto(code)  'Filtramos el codigo para evitar SQL Injection

                    objResetPass = LoginController.GetResetPasswordByCodigo(code)

                    If objResetPass IsNot Nothing Then  'Si existe el codigo en la base de datos
                        If DateTime.Compare(objResetPass.FechaUso, DateTime.MinValue) = 0 Then  'Si el codigo no ha sido usado
                            objResetPassword = objResetPass
                            ViewState("ResetPassword") = objResetPassword
                        Else  'El codigo ya ha sido usado
                            errorCode.Visible = True
                        End If
                    Else  'No existe el codigo
                        errorCode.Visible = True
                    End If
                Else   'El parametro del codigo es vacio
                    errorCode.Visible = True
                End If
            Else
                objResetPassword = ViewState("ResetPassword")
            End If
        End Sub

        Protected Sub btnSend_Click(sender As Object, e As EventArgs) Handles btnSend.Click
            If objResetPassword IsNot Nothing Then  'Si existe el codigo del enlace del correo electronico
                If FiltrarTexto(txtNewPassword.Text) = FiltrarTexto(txtVerifyPassword.Text) Then  'Si los dos campos introducidos son iguales
                    Dim objUser As UserInfo = UserController.GetUserById(PortalId, FiltrarTexto(objResetPassword.UserID))

                    If objUser IsNot Nothing Then
                        UserController.ChangePassword(objUser, UserController.GetPassword(objUser, ""), FiltrarTexto(txtNewPassword.Text))

                        objResetPassword.FechaUso = DateTime.Now
                        LoginController.UpdateResetPassword(objResetPassword)

                        ChangePassword.Visible = False
                        ChangedPassword.Visible = True
                    End If
                Else
                    errorPassword.Visible = True
                End If
            End If
        End Sub
#End Region

    End Class
End Namespace