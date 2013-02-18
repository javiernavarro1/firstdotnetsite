
Partial Class demo_list_controls
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As System.EventArgs) Handles Button1.Click
        Label1.Text = "in the ddl you selected" & DropDownList1.SelectedValue & "<br/>"

        For Each item As ListItem In CheckBoxList1.Items
            If item.Selected Then
                Label1.Text &= "in the CRL you selected  " & item.Value & "<br/>"
            End If
        Next
    End Sub
End Class
