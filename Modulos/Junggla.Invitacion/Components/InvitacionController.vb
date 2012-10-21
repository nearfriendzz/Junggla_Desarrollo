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

Namespace Junggla.Modules.Invitacion

    ''' -----------------------------------------------------------------------------
    ''' <summary>
    ''' The Controller class for Junggla.Login
    ''' </summary>
    ''' <remarks>
    ''' </remarks>
    ''' <history>
    ''' </history>
    ''' -----------------------------------------------------------------------------
    Public Class InvitacionController

#Region "Public Enums"
        Public Enum InvitationState
            Request = 1
            Sent = 2
            Rejected = 3
            Used = 4
        End Enum
#End Region

#Region "Public Methods"

#Region "Invitacion Methods"

        Public Shared Function AddInvitacion(ByVal objInvitacion As InvitacionInfo) As Integer
            Return CType(DotNetNuke.Data.DataProvider.Instance().ExecuteScalar("Invitacion_AddInvitacion", objInvitacion.Email, objInvitacion.Estado, objInvitacion.FechaAlta, objInvitacion.FechaUso), Integer)
        End Function

        Public Shared Sub UpdateInvitacion(ByVal objInvitacion As InvitacionInfo)
            DotNetNuke.Data.DataProvider.Instance().ExecuteNonQuery("Invitacion_UpdateInvitacion", objInvitacion.InvitacionID, objInvitacion.Email, objInvitacion.Estado, objInvitacion.FechaAlta, objInvitacion.FechaUso)
        End Sub

        Public Shared Sub DeleteInvitacion(ByVal InvitacionID As Integer)
            DotNetNuke.Data.DataProvider.Instance().ExecuteNonQuery("Invitacion_DeleteInvitacion", InvitacionID)
        End Sub

        Public Shared Function GetInvitacionByInvitacionID(ByVal InvitacionID As Integer) As InvitacionInfo
            Return CType(CBO.FillObject(DotNetNuke.Data.DataProvider.Instance().ExecuteReader("Invitacion_GetInvitacionByInvitacionID", InvitacionID), GetType(InvitacionInfo)), InvitacionInfo)
        End Function

        Public Shared Function GetInvitacionByEmail(ByVal Email As String) As InvitacionInfo
            Return CType(CBO.FillObject(DotNetNuke.Data.DataProvider.Instance().ExecuteReader("Invitacion_GetInvitacionByEmail", Email), GetType(InvitacionInfo)), InvitacionInfo)
        End Function

        Public Shared Function GetListInvitacion() As List(Of InvitacionInfo)
            Return CBO.FillCollection(Of InvitacionInfo)(DotNetNuke.Data.DataProvider.Instance().ExecuteReader("Invitacion_GetListInvitacion"))
        End Function

#End Region


#End Region

#Region "Optional Interfaces"


#End Region

    End Class
End Namespace
