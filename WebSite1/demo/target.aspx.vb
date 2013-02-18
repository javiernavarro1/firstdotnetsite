
Partial Class demo_target
    Inherits titlebasepage

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        Label1.Text = Request.QueryString.ToString()
    End Sub


End Class
