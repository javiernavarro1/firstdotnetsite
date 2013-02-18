
Partial Class demo_controlsdemo
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As System.EventArgs) Handles Button1.Click
        jn1.Text = "your name supposed to be" & txtbox1.Text

    End Sub

    Protected Sub CheckBoxList1_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles CheckBoxList1.SelectedIndexChanged

    End Sub
End Class
