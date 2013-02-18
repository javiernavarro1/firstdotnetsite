
Partial Class demo_container
    Inherits System.Web.UI.Page

    Protected Sub CheckBox1_CheckedChanged(sender As Object, e As System.EventArgs) Handles CheckBox1.CheckedChanged
        Panel1.Visible = CheckBox1.Checked
    End Sub

    Protected Sub Wizard1_FinishButtonClick(sender As Object, e As System.Web.UI.WebControls.WizardNavigationEventArgs) Handles Wizard1.FinishButtonClick
        result.Text = "name is" & TextBoxname.Text
        result.Text &= "<br/> your programming language is" & DropDownList1.SelectedValue

    End Sub

    Protected Sub TextBox1_TextChanged(sender As Object, e As System.EventArgs) Handles TextBoxname.TextChanged

    End Sub
End Class
