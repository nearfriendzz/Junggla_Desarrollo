'
' DotNetNuke® - http://www.dotnetnuke.com
' Copyright (c) 2002-2005
' by Perpetual Motion Interactive Systems Inc. ( http://www.perpetualmotion.ca )
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

Imports System
Imports System.Configuration
Imports System.Data
Imports System.XML
Imports System.Web
Imports System.Collections.Generic

Imports DotNetNuke
Imports DotNetNuke.Common
Imports DotNetNuke.Common.Utilities.XmlUtils
Imports DotNetNuke.Common.Utilities
Imports DotNetNuke.Services.Search

Namespace Junggla.Modules.Alta

    ''' -----------------------------------------------------------------------------
    ''' <summary>
    ''' The Controller class for Junggla.Alta
    ''' </summary>
    ''' <remarks>
    ''' </remarks>
    ''' <history>
    ''' </history>
    ''' -----------------------------------------------------------------------------
    Public Class AltaController

#Region "Public Methods"

#Region "Candidato Methods"
        Public Shared Function AddCandidato(ByVal objCandidato As CandidatoInfo) As Integer
            Return CType(DotNetNuke.Data.DataProvider.Instance().ExecuteScalar("Candidato_AddCandidato", objCandidato.UserDnnID, objCandidato.Nombre, objCandidato.Apellidos, objCandidato.Email, objCandidato.Contraseña, objCandidato.FechaAlta, objCandidato.FechaModif, objCandidato.FechaBaja), Integer)
        End Function

        Public Shared Sub UpdateCandidato(ByVal objCandidato As CandidatoInfo)
            DotNetNuke.Data.DataProvider.Instance().ExecuteNonQuery("Candidato_UpdateCandidato", objCandidato.CandidatoID, objCandidato.UserDnnID, objCandidato.Nombre, objCandidato.Apellidos, objCandidato.Email, objCandidato.Contraseña, objCandidato.FechaAlta, objCandidato.FechaModif, objCandidato.FechaBaja)
        End Sub

        Public Shared Sub DeleteCandidato(ByVal CandidatoID As Integer)
            DotNetNuke.Data.DataProvider.Instance().ExecuteNonQuery("Candidato_DeleteCandidato", CandidatoID)
        End Sub

        Public Shared Function GetCandidatoByCandidatoID(ByVal CandidatoID As Integer) As CandidatoInfo
            Return CType(CBO.FillObject(DotNetNuke.Data.DataProvider.Instance().ExecuteReader("Candidato_GetCandidatoByCandidatoID", CandidatoID), GetType(CandidatoInfo)), CandidatoInfo)
        End Function

        Public Shared Function GetListCandidato() As List(Of CandidatoInfo)
            Return CBO.FillCollection(Of CandidatoInfo)(DotNetNuke.Data.DataProvider.Instance().ExecuteReader("Candidato_GetListCandidato"))
        End Function

#End Region

#End Region

#Region "Optional Interfaces"


#End Region

    End Class
End Namespace
