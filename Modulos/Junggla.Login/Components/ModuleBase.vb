#Region "License"
'
' DotNetNuke® - http://www.dotnetnuke.com
' Copyright (c) 2002-2008
' by DotNetNuke Corporation
'
' Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated 
' documentation files (the "Software"), to deal in the Software without restriction, including without limitation 
' the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and 
' to permit persons to whom the Software is furnished to do so, subject to the following conditions:
'
' The above copyright notice and this permission notice shall be included in all copies or substantial portions 
' of the Software.
'
' THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED 
' TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL 
' THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF 
' CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER 
' DEALINGS IN THE SOFTWARE.
'
#End Region

Imports DotNetNuke.Services.Localization.Localization
Imports DotNetNuke.Services.FileSystem
Imports DotNetNuke.Entities.Modules

Namespace Junggla.Modules.Login

    Public Class ModuleBase

        Inherits DotNetNuke.Entities.Modules.PortalModuleBase

#Region "Private Definitions"

#End Region

#Region "Public Properties"

#End Region

#Region "Private Methods"
        Protected Function FirstModuleIdByDefinition(ByVal PortalID As Integer, ByVal FriendlyName As String) As Integer
            Dim _ModuleController As New ModuleController
            Dim _ExistsModules As New ArrayList
            Dim _ModuleInfo As New ModuleInfo

            _ExistsModules = _ModuleController.GetModulesByDefinition(PortalID, FriendlyName)
            If _ExistsModules.Count > 0 Then
                _ModuleInfo = _ExistsModules.Item(0)
                Return CType(_ModuleInfo.ModuleID, Integer)
            Else
                Return Null.NullInteger
            End If

        End Function

        Protected Function ModuleTabIDByModuleID(ByVal ModuleID As Integer) As Integer
            Dim _ModuleController As New ModuleController
            Dim _ModuleInfo As New ModuleInfo

            _ModuleInfo = _ModuleController.GetModule(ModuleID)

            Return _ModuleInfo.TabID

        End Function

        ''' -----------------------------------------------------------------------------
        ''' <name>
        ''' FiltrarTexto
        ''' </name>
        ''' <summary>
        ''' Devuelve el texto eliminando posibles ataques
        ''' </summary>
        ''' <remarks>
        ''' </remarks>
        ''' <param name="Texto">Texto a filtrar</param>
        ''' <returns>
        ''' Devuelve el texto eliminando posibles ataques
        ''' </returns>
        ''' <history>
        ''' 01.00.00 - 06/05/2010 - Carlos López - Creación
        ''' </history>
        ''' -----------------------------------------------------------------------------
        Protected Function FiltrarTexto(ByVal Texto As String) As String

            Dim objSecurity As New PortalSecurity
            Dim myFilteredText As String = objSecurity.InputFilter(Texto, PortalSecurity.FilterFlag.NoSQL)
            myFilteredText = objSecurity.InputFilter(myFilteredText, PortalSecurity.FilterFlag.NoScripting)
            myFilteredText = objSecurity.InputFilter(myFilteredText, PortalSecurity.FilterFlag.NoMarkup)
            myFilteredText = objSecurity.InputFilter(myFilteredText, PortalSecurity.FilterFlag.NoAngleBrackets)
            Return myFilteredText

        End Function
#End Region

#Region "Public Methods"
        Public Function TextoLocalizado(ByVal nombreRecurso As String) As String
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