Imports System.Web.UI
Imports System.Collections.Generic
Imports System.Reflection

Imports DotNetNuke
Imports DotNetNuke.Services.Exceptions
Imports DotNetNuke.Services.Localization
Imports DotNetNuke.Entities.Users
Imports DotNetNuke.Security.Membership

Imports Junggla.Modules.Invitacion
Imports DotNetNuke.Entities.Host

Namespace Junggla.Modules.Alta

    ''' -----------------------------------------------------------------------------
    ''' <summary>
    ''' The ViewJunggla.Invitacion class displays the content
    ''' </summary>
    ''' <remarks>
    ''' </remarks>
    ''' <history>
    ''' </history>
    ''' -----------------------------------------------------------------------------
    Partial Public Class ViewAltaCandidato
        Inherits Junggla.Modules.Alta.ModuleBase

#Region "Event Handlers"
        Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Me.Init
            txtName.Attributes.Add("placeholder", TextoLocalizado("placeholderName.Text"))
            txtSurname.Attributes.Add("placeholder", TextoLocalizado("placeholderSurname.Text"))
            txtEmail.Attributes.Add("placeholder", TextoLocalizado("placeholderEmail.Text"))
            txtPassword.Attributes.Add("placeholder", TextoLocalizado("placeholderPassword.Text"))
            txtRePassword.Attributes.Add("placeholder", TextoLocalizado("placeholderRePassword.Text"))
        End Sub

        Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
            Try
                errorEmail.Visible = False
                errorUser.Visible = False
                errorInvitation.Visible = False
                errorPassword.Visible = False
                errorRequired.Visible = False
                success.Visible = False
            Catch exc As Exception        'Module failed to load
                ProcessModuleLoadException(Me, exc)
            End Try
        End Sub

        Protected Sub btnRegister_Click(sender As Object, e As EventArgs) Handles btnRegister.Click
            Dim Name As String = FiltrarTexto(txtName.Text)             'Contiene el nombre del candidato
            Dim Surname As String = FiltrarTexto(txtSurname.Text)       'Contiene los apellidos del candidato
            Dim Email As String = FiltrarTexto(txtEmail.Text)           'Contiene el email del candidato
            Dim Password As String = FiltrarTexto(txtPassword.Text)     'Contiene la contraseña del candidato
            Dim RePassword As String = FiltrarTexto(txtRePassword.Text) 'Contiene la verificacion de la contraseña
            Dim userList As ArrayList  'Lista de usuarios que poseen el email indicado
            Dim objInvitation As InvitacionInfo
            Dim objCandidato As New CandidatoInfo
            Dim objUser As UserInfo

            'Si ninguno de los campos es vacio
            If Not (String.IsNullOrEmpty(Name) _
                Or String.IsNullOrEmpty(Surname) _
                Or String.IsNullOrEmpty(Email) _
                Or String.IsNullOrEmpty(Password) _
                Or String.IsNullOrEmpty(RePassword)) Then
                If Password = RePassword Then               'Si las contraseñas introducidas son iguales
                    If Regex.IsMatch(Email, "^([\w-]+\.)*?[\w-]+@[\w-]+\.([\w-]+\.)*?[\w]+$") Then   'Si el formato del email es correcto
                        userList = UserController.GetUsersByEmail(PortalId, Email, 0, 1, 1)  'Cargamos los usuarios posible con el email indicado

                        If userList.Count = 0 Then   'Si no existe un usuario con el email indicado
                            objInvitation = InvitacionController.GetInvitacionByEmail(Email)

                            'Si el email tiene una invitacion aceptada o el modulo esta configurado en modo normal
                            If Not CType(Settings("RegisterMode"), Boolean) _
                                Or (objInvitation IsNot Nothing _
                                AndAlso objInvitation.Estado = InvitacionController.InvitationState.Sent) Then
                                objUser = CreateUserDotNetNuke(Name, Surname, Email, Password)

                                If objUser IsNot Nothing Then
                                    With objCandidato
                                        .Nombre = Name
                                        .Apellidos = Surname
                                        .Email = Email
                                        .Contraseña = Password
                                        .FechaAlta = DateTime.Now
                                        .FechaModif = DateTime.Now
                                        .FechaBaja = New DateTime(1900, 1, 1, 0, 0, 0)
                                        .UserDnnID = objUser.UserID
                                    End With

                                    AltaController.AddCandidato(objCandidato)  'Introducimos los datos en la tabla de candidato
                                    success.Visible = True

                                    If objInvitation IsNot Nothing Then    'Si existia una invitacion, la actualizamos
                                        objInvitation.FechaUso = DateTime.Now
                                        objInvitation.Estado = InvitacionController.InvitationState.Used

                                        InvitacionController.UpdateInvitacion(objInvitation)
                                    End If
                                Else    'Ha ocurrido algun error para crear el usuario
                                    errorUser.Visible = True
                                End If
                            Else  'El email no tiene una invitacion aceptada
                                errorInvitation.Visible = True
                            End If
                        Else   'Ya existe un usuario con el email indicado
                            errorUser.Visible = True
                        End If
                    Else   'El formato del email no es correcto
                        errorEmail.Visible = True
                    End If
                Else    'Las contraseñas introducidas no coinciden
                    errorPassword.Visible = True
                End If
            Else  'Algunos de los campos es vacio
                errorRequired.Visible = True
            End If
        End Sub
#End Region

#Region "Private Methods"
        Private Function CreateUserDotNetNuke(ByVal Name As String, ByVal Surname As String, ByVal Email As String, ByVal Password As String) As UserInfo
            Dim objUser As New UserInfo
            Dim objMembership As New DotNetNuke.Entities.Users.UserMembership
            Dim State As DotNetNuke.Security.Membership.UserCreateStatus = UserCreateStatus.UnexpectedError
            Dim key As String = Convert.ToString(Host.GetHostSettingsDictionary("EncryptionKey"))
            Dim portalSecurity As Security.PortalSecurity = New Security.PortalSecurity()

            With objMembership    'Creamos la membresia del usuario
                .Password = portalSecurity.Encrypt(key, Password)
                .PasswordAnswer = ""
                .Password = portalSecurity.Encrypt(key, Password)
                .PasswordQuestion = ""
                .Approved = True
                .CreatedDate = System.DateTime.Now
                .IsOnLine = False
            End With

            With objUser    'Rellenamos los datos del usuario
                .FirstName = Name
                .LastName = Surname
                .Email = Email
                .Username = Email
                .DisplayName = Name & " " & Surname
                .Membership = objMembership
                .PortalID = PortalId
                .Profile.InitialiseProfile(PortalId)
                .IsSuperUser = False
            End With

            State = UserController.CreateUser(objUser)  'Creamos el usuario

            Select Case State    'Retornamos segun el reusltado del la creacion del usuario
                Case UserCreateStatus.Success
                    Return objUser
                Case Else
                    Return Nothing
            End Select

            Return Nothing
        End Function
#End Region


    End Class

End Namespace

