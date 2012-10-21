Imports DotNetNuke.Entities.Users

Namespace Junggla.Modules.Invitacion

    Public Class ctlRequestInvitation
        Inherits Junggla.Modules.Invitacion.ModuleBase

#Region "Events Handlers"
        Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
            errorEmpty.Visible = False
            errorExist.Visible = False
            errorFormat.Visible = False
            errorUsed.Visible = False
            success.Visible = False
        End Sub

        Protected Sub btnRequest_Click(sender As Object, e As EventArgs) Handles btnRequest.Click
            Dim email As String = FiltrarTexto(txtEmail.Text)  'Contiene el email introducido por el usuario

            If Not String.IsNullOrEmpty(email) Then  'Si el email no es vacio
                If Regex.IsMatch(email, "^([\w-]+\.)*?[\w-]+@[\w-]+\.([\w-]+\.)*?[\w]+$") Then  'Si el email tiene un formato valido
                    Dim objInvitacion As InvitacionInfo = InvitacionController.GetInvitacionByEmail(email)

                    If objInvitacion Is Nothing Then  'No existe una invitacion para el email
                        If UserController.GetUsersByEmail(PortalId, email, 0, 1, 1).Count = 0 Then  'Si no existe un usuario con el email indicado
                            objInvitacion = New InvitacionInfo

                            With objInvitacion
                                .Email = email
                                .Estado = InvitacionController.InvitationState.Request
                                .FechaAlta = DateTime.Now
                                .FechaUso = New DateTime(1900, 1, 1, 0, 0, 0)
                            End With

                            InvitacionController.AddInvitacion(objInvitacion)
                            DotNetNuke.Services.Mail.Mail.SendEmail("noreply@junggla.com", objInvitacion.Email, TextoLocalizado("MessageSubject.Text"), TextoLocalizado("Message.Text"))
                            success.Visible = True
                        Else  'Ya existe un usuario con el email indicado
                            errorExist.Visible = True
                        End If
                    Else  'Ya existe una invitacion para el email indicado
                        errorUsed.Visible = True
                    End If
                Else   'El email no tiene un formato valido
                    errorFormat.Visible = True
                End If
            Else   'El email es vacio
                errorEmpty.Visible = True
            End If
        End Sub
#End Region

    End Class
End Namespace