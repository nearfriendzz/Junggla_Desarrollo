Imports System.Web.UI
Imports System.Collections.Generic
Imports System.Reflection

Imports DotNetNuke
Imports DotNetNuke.Services.Exceptions
Imports DotNetNuke.Services.Localization
Imports DotNetNuke.Entities.Users
Imports DotNetNuke.Security.Membership

Namespace Junggla.Modules.Invitacion

    ''' -----------------------------------------------------------------------------
    ''' <summary>
    ''' The ViewJunggla.Invitacion class displays the content
    ''' </summary>
    ''' <remarks>
    ''' </remarks>
    ''' <history>
    ''' </history>
    ''' -----------------------------------------------------------------------------
    Partial Public Class ViewInvitacion
        Inherits Junggla.Modules.Invitacion.ModuleBase

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
                If Request.Form("__EVENTTARGET") IsNot Nothing Then  'Si hemos pinchado en un boton, el postback viene con parametros
                    Select Case Request.Form("__EVENTTARGET")
                        Case "accept"
                            AcceptInvitation(CType(Request.Form("__EVENTARGUMENT"), Integer))
                        Case "reject"
                            RejectInvitation(CType(Request.Form("__EVENTARGUMENT"), Integer))
                    End Select
                End If

                Dim listInvitations As List(Of InvitacionInfo) = InvitacionController.GetListInvitacion()

                rptInvitations.DataSource = listInvitations
                rptInvitations.DataBind()
            Catch exc As Exception        'Module failed to load
                ProcessModuleLoadException(Me, exc)
            End Try
        End Sub

#End Region

#Region "Private Methods"
        Protected Function GetNameState(ByVal State As InvitacionController.InvitationState) As String
            Dim toReturn As String = ""

            Select Case State
                Case 1
                    toReturn = "Request"
                Case 2
                    toReturn = "Sent"
                Case 3
                    toReturn = "Rejected"
                Case 4
                    toReturn = "Used"
            End Select

            Return toReturn
        End Function

        Protected Sub AcceptInvitation(ByVal id As Integer)
            Dim objInvitacion As InvitacionInfo = InvitacionController.GetInvitacionByInvitacionID(id)

            If objInvitacion IsNot Nothing Then
                Dim message As String = TextoLocalizado("Message.Text")  'Cuerpo del correo que se le enviara al usuario
                Dim ExistError As Boolean = False

                Try
                    DotNetNuke.Services.Mail.Mail.SendEmail("noreply@junggla.com", objInvitacion.Email, TextoLocalizado("MessageSubject.Text"), message)
                Catch ex As Exception
                    ExistError = True
                Finally
                    If Not ExistError Then
                        objInvitacion.Estado = InvitacionController.InvitationState.Sent
                        InvitacionController.UpdateInvitacion(objInvitacion)
                    End If
                End Try

            End If
        End Sub

        Protected Sub RejectInvitation(ByVal id As Integer)
            Dim objInvitacion As InvitacionInfo = InvitacionController.GetInvitacionByInvitacionID(id)

            If objInvitacion IsNot Nothing Then
                objInvitacion.Estado = InvitacionController.InvitationState.Rejected

                InvitacionController.UpdateInvitacion(objInvitacion)
            End If
        End Sub
#End Region

    End Class

End Namespace

