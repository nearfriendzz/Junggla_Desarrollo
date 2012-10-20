Imports DotNetNuke.Entities.Users
Imports DotNetNuke.Security.Membership

Namespace Junggla.Modules.Login

    Partial Public Class ctlRecoverPassword
        Inherits Junggla.Modules.Login.ModuleBase

#Region "Event Handlers"
        Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
            errorEmail.Visible = False
            errorUsuario.Visible = False

            SendLogin.Visible = true
            EmailSend.Visible = False
        End Sub

        Protected Sub btnSend_Click(sender As Object, e As EventArgs) Handles btnSend.Click
            If Regex.IsMatch(txtUserName.Text, "^([\w-]+\.)*?[\w-]+@[\w-]+\.([\w-]+\.)*?[\w]+$") Then
                Dim email As String = FiltrarTexto(txtUserName.Text)  'Email indicado por el usuario
                Dim userList As ArrayList = UserController.GetUsersByEmail(PortalId, email, 0, 1, 1)  'Lista de usuarios que poseen el emal indicado
                Dim objUser As UserInfo  'El objeto del usuario
                Dim code As String = DateTime.Now.Ticks.ToString 'El codigo generado es la fecha y hora actual expresada en ticks de reloj.
                Dim URL As String = "http://www.junggla.com/newpassword.aspx?code=" & code  'La ruta que ira en el correo electronico enviado al usuario

                If userList.Count > 0 Then  'Comprobamos que al menos existe un usuario con el email indicado
                    objUser = UserController.GetUserByName(PortalId, CType(userList.Item(0), UserInfo).Username)

                    If objUser IsNot Nothing Then  'Si el usuario existe
                        Dim message As String = TextoLocalizado("message.Text")  'Cuerpo del correo que se le enviara al usuario
                        Dim objResetPassword As New ResetPasswordInfo

                        With objResetPassword
                            .Codigo = code
                            .UserID = objUser.UserID
                            .FechaAlta = DateTime.Now
                            .FechaUso = New DateTime(1900, 1, 1, 0, 0, 0)
                        End With

                        LoginController.AddResetPassword(objResetPassword)  'Guardamos un registro con el codigo generado

                        message = message.Replace("@URL@", URL)

                        DotNetNuke.Services.Mail.Mail.SendEmail("noreply@junggla.com", objUser.Email, TextoLocalizado("MessageSubject"), message)

                        SendLogin.Visible = False
                        EmailSend.Visible = True
                    Else
                        errorUsuario.Visible = True   'El usuario no existe
                    End If
                Else  'El usuario no existe
                    errorUsuario.Visible = True
                End If
            Else  'No es un correo electronico valido
                errorEmail.Visible = True
            End If
        End Sub
#End Region
    End Class
End Namespace