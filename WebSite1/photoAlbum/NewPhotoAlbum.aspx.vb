Imports plwoModel
Partial Class reviews_NewPhotoAlbum
    Inherits titlebasepage

    Protected Sub EntityDataSource1_Inserted(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.EntityDataSourceChangedEventArgs) Handles EntityDataSource1.Inserted
        Dim myPhotoAl As PhotoAlbum = CType(e.Entity, PhotoAlbum)
        Response.Redirect(String.Format("/photoAlbum/ManagePhotoAlbum.aspx?PhotoAlbumId={0}", myPhotoAl.Id.ToString()))
    End Sub
End Class