
Namespace Junggla.Modules.Invitacion
    <Serializable()>
    Public Class InvitacionInfo

#Region "Private propeties"
        Private _InvitacionID As Integer
        Private _Email As String
        Private _Estado As InvitacionController.InvitationState
        Private _FechaAlta As DateTime
        Private _FechaUso As DateTime
#End Region

#Region "Public Methods"
        Public Sub New()
        End Sub
#End Region

#Region "Propiedades"
        Public Property InvitacionID() As Integer
            Get
                Return _InvitacionID
            End Get
            Set(ByVal value As Integer)
                _InvitacionID = value
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
        Public Property Estado() As InvitacionController.InvitationState
            Get
                Return _Estado
            End Get
            Set(ByVal value As InvitacionController.InvitationState)
                _Estado = value
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