
Partial Class photoAlbum_default
    Inherits titlebasepage

    Protected Sub ListView1_DataBound(ByVal sender As Object, ByVal e As System.EventArgs) Handles ListView1.DataBound


        If Not String.IsNullOrEmpty(DropDownList1.SelectedValue) Then
            'edit link refers to the asp id editlink
            EditLink.NavigateUrl = String.Format("~/photoAlbum/ManagePhotoAlbum.aspx?PhotoAlbumId={0}", DropDownList1.SelectedValue)
            EditLink.Visible = True
        Else
            EditLink.Visible = False
        End If
    End Sub
End Class
