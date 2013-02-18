Imports plwoModel
Imports System.Web.Security

Partial Class reviews_ManagePhotoAlbum
    Inherits titlebasepage

    Protected Sub EntityDataSource1_Inserting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.EntityDataSourceChangingEventArgs) Handles EntityDataSource1.Inserting
        Dim photoAlbumId As Integer = Convert.ToInt32(Request.QueryString.Get("PhotoAlbumId"))

        Dim myPicture As Picture = CType(e.Entity, Picture)
        myPicture.PhotoAlbumId = photoAlbumId
        'this is for the picture upload

        Dim FileUpload1 As FileUpload = CType(ListView1.InsertItem.FindControl("FileUPload1"), FileUpload)

        Dim virtualFolder As String = "~/picsupload/"
        Dim physicalFolder As String = Server.MapPath(virtualFolder)
        Dim fileName As String = Guid.NewGuid().ToString()
        Dim extension As String = System.IO.Path.GetExtension(FileUpload1.FileName)

        FileUpload1.SaveAs(System.IO.Path.Combine(physicalFolder, fileName + extension))

        myPicture.ImageUrl = virtualFolder + fileName + extension



    End Sub

    Protected Sub ListView1_ItemInserting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.ListViewInsertEventArgs) Handles ListView1.ItemInserting
        'this does some vaildation of the type of file that can be uploaded
        'we only allow in this case .jpg and .png files

           
            Dim FileUpload1 As FileUpload = CType(ListView1.InsertItem.FindControl("FileUpload1"), FileUpload)

            'validates to see if this is a jpg or png


        If Not FileUpload1.HasFile OrElse Not FileUpload1.FileName.ToLower().EndsWith(".jpg") Or FileUpload1.FileName.ToLower().EndsWith(".png") Then
            Dim cusValImage As CustomValidator = CType(ListView1.InsertItem.FindControl("cusValImage"), CustomValidator)
            cusValImage.IsValid = False
            e.Cancel = True

        End If


    End Sub


    Protected Sub ListView1_ItemCreated(sender As Object, e As System.Web.UI.WebControls.ListViewItemEventArgs) Handles ListView1.ItemCreated
        Select Case e.Item.ItemType
            Case ListViewItemType.DataItem
                Dim deletebutton As Button =
                    CType(e.Item.FindControl("DeleteButton"), Button)
                deletebutton.Visible = Roles.IsUserInRole("Managers")

        End Select
    End Sub
End Class
