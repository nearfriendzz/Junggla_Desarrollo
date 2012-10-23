Imports System.Web.UI
Imports DotNetNuke
Imports DotNetNuke.Services.Exceptions
Imports DotNetNuke.Services.Localization
Imports DotNetNuke.Entities.Modules

Namespace Junggla.Modules.Alta

    ''' -----------------------------------------------------------------------------
    ''' <summary>
    ''' The Settings class manages Module Settings
    ''' </summary>
    ''' <remarks>
    ''' </remarks>
    ''' <history>
    ''' </history>
    ''' -----------------------------------------------------------------------------
    Partial Public Class SettingsAltaCandidato
        Inherits Entities.Modules.ModuleSettingsBase

#Region "Base Method Implementations"
        Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
            Try  'Carga por defecto valores en los ajustes, si estos no existian

            Catch exc As Exception           'Module failed to load
                ProcessModuleLoadException(Me, exc)
            End Try
        End Sub

        ''' -----------------------------------------------------------------------------
        ''' <summary>
        ''' LoadSettings loads the settings from the Database and displays them
        ''' </summary>
        ''' <remarks>
        ''' </remarks>
        ''' <history>
        ''' </history>
        ''' -----------------------------------------------------------------------------
        Public Overrides Sub LoadSettings()
            Try
                If (Page.IsPostBack = False) Then
                    rblMode.Items.Add(New ListItem(TextoLocalizado("ModeNormal.Text"), "0"))
                    rblMode.Items.Add(New ListItem(TextoLocalizado("ModeInvitation.Text"), "1"))

                    If CType(TabModuleSettings("RegisterMode"), String) <> "" Then
                        rblMode.SelectedValue = CType(TabModuleSettings("RegisterMode"), String)
                    End If
                End If
            Catch exc As Exception           'Module failed to load
                ProcessModuleLoadException(Me, exc)
            End Try
        End Sub

        ''' -----------------------------------------------------------------------------
        ''' <summary>
        ''' UpdateSettings saves the modified settings to the Database
        ''' </summary>
        ''' <remarks>
        ''' </remarks>
        ''' <history>
        ''' </history>
        ''' -----------------------------------------------------------------------------
        Public Overrides Sub UpdateSettings()
            Try
                Dim objModules As New Entities.Modules.ModuleController

                objModules.UpdateTabModuleSetting(TabModuleId, "RegisterMode", rblMode.SelectedValue)
                ModuleController.SynchronizeModule(ModuleId)
            Catch exc As Exception           'Module failed to load
                ProcessModuleLoadException(Me, exc)
            End Try
        End Sub

#End Region

#Region "Private Methods"
        Protected Function TextoLocalizado(ByVal nombreRecurso As String) As String
            Dim cultureInfo As Globalization.CultureInfo = Localization.GetPageLocale(PortalSettings)

            Dim portalCulture As String = [String].Format("{0}.{1}", LocalResourceFile, cultureInfo.TwoLetterISOLanguageName)
            Dim existeResourceFile As Boolean = Localization.GetString(nombreRecurso, portalCulture) IsNot Nothing

            If Not existeResourceFile Then
                portalCulture = LocalResourceFile
            End If
            Return Localization.GetString(nombreRecurso, portalCulture)
        End Function
#End Region
    End Class

End Namespace

