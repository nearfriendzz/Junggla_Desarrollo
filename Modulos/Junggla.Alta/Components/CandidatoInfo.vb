
Namespace Junggla.Modules.Alta
    <Serializable()>
    Public Class CandidatoInfo

#Region "Private propeties"
        Private _CandidatoID As Integer
        Private _UserDnnID As Integer
        Private _Nombre As String
        Private _Apellidos As String
        Private _Email As String
        Private _Contraseña As String
        Private _FechaAlta As DateTime
        Private _FechaModif As DateTime
        Private _FechaBaja As DateTime
#End Region

#Region "Public Methods"
        Public Sub New()
        End Sub
#End Region

#Region "Propiedades"
        Public Property CandidatoID() As Integer
            Get
                Return _CandidatoID
            End Get
            Set(ByVal value As Integer)
                _CandidatoID = value
            End Set
        End Property
        Public Property UserDnnID() As Integer
            Get
                Return _UserDnnID
            End Get
            Set(ByVal value As Integer)
                _UserDnnID = value
            End Set
        End Property
        Public Property Nombre() As String
            Get
                Return _Nombre
            End Get
            Set(ByVal value As String)
                _Nombre = value
            End Set
        End Property
        Public Property Apellidos() As String
            Get
                Return _Apellidos
            End Get
            Set(ByVal value As String)
                _Apellidos = value
            End Set
        End Property
        Public Property Email() As String
            Get
                Return _Email
            End Get
            Set(ByVal value As String)
                _Email = value
            End Set
        End Property
        Public Property Contraseña() As String
            Get
                Return _Contraseña
            End Get
            Set(ByVal value As String)
                _Contraseña = value
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
        Public Property FechaModif() As DateTime
            Get
                Return _FechaModif
            End Get
            Set(ByVal value As DateTime)
                _FechaModif = value
            End Set
        End Property
        Public Property FechaBaja() As DateTime
            Get
                Return _FechaBaja
            End Get
            Set(ByVal value As DateTime)
                _FechaBaja = value
            End Set
        End Property
#End Region

    End Class


End Namespace