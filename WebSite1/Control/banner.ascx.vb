
Partial Class Control_banner
    Inherits System.Web.UI.UserControl

    Public Property displayDirection As adDirection


  
    Public Property NavigatesURL() As String
        Get
            Dim _navigateURL As Object = ViewState("NavigatesURL")
            If _navigateURL IsNot Nothing Then
                Return CType(_navigateURL, String)
            Else
                Return "http://www.javiernavarro.us" ' return default value
            End If

        End Get
        Set(ByVal value As String)
            ViewState("NavigatesURL") = value
        End Set
    End Property



    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        horpan.Visible = False
        vertpan.Visible = False

        Select Case displayDirection
            Case adDirection.hori
                horpan.Visible = True
                horilink.HRef = NavigatesURL
            Case adDirection.vert
                vertpan.Visible = True
                vertlink.HRef = NavigatesURL

        End Select
    End Sub
End Class
