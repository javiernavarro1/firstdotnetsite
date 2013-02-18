
Partial Class about_aboutus
    Inherits titlebasepage

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        

        If Not Page.IsPostBack Then
            '  banner2.displayDirection = adDirection.vert
            banner2.navigatesUrl = "http://www.ups.com"


        End If
    End Sub
End Class
