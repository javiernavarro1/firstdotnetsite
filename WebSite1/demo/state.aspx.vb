
Partial Class demo_state
    Inherits System.Web.UI.Page

    Protected Sub setdate_Click(sender As Object, e As System.EventArgs) Handles setdate.Click
        Label1.Text = Date.Now.TimeOfDay.ToString()
        Label2.Text = Date.Now.TimeOfDay.ToString()


    End Sub

    Protected Sub Calendar1_SelectionChanged(sender As Object, e As System.EventArgs) Handles Calendar1.SelectionChanged

    End Sub
End Class
