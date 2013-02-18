
Partial Class demo_updatepanel
    Inherits titlebasepage

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        Label1.Text = System.DateTime.Now.ToString()
    End Sub
End Class
