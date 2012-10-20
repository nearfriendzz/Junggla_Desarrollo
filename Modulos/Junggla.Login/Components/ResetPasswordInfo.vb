
Namespace Junggla.Modules.Login
    <Serializable()>
    Public Class ResetPasswordInfo

#Region "Private propeties"
        Private _ResetPasswordID As Integer
        Private _UserID As Integer
        Private _Codigo As String
        Private _FechaAlta As DateTime
        Private _FechaUso As DateTime
#End Region

#Region "Public Methods"
        Public Sub New()
        End Sub
#End Region

#Region "Propiedades"
        Public Property ResetPasswordID() As Integer
            Get
                Return _ResetPasswordID
            End Get
            Set(ByVal value As Integer)
                _ResetPasswordID = value
            End Set
        End Property
        Public Property UserID() As Integer
            Get
                Return _UserID
            End Get
            Set(ByVal value As Integer)
                _UserID = value
            End Set
        End Property
        Public Property Codigo() As String
            Get
                Return _Codigo
            End Get
            Set(ByVal value As String)
                _Codigo = value
            End Set
        End Property
        Public Property FechaAlta() As DateTime
            Get
                Return _FechaAlta
            End Get
            Set(ByVal value As DateTime)
                _FechaAlta = value
            End Set
        End Property
        Public Property FechaUso() As DateTime
            Get
                Return _FechaUso
            End Get
            Set(ByVal value As DateTime)
                _FechaUso = value
            End Set
        End Property
#End Region

    End Class
End Namespace