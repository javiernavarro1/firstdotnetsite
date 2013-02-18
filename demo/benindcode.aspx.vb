
Partial Class demo_benindcode
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        Label1.Text = "hello; current time is" & DateTime.Now.ToString()

    End Sub
End Class
