Imports plwoModel
Partial Class reviews_allbygenre
    Inherits titlebasepage

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        Using myObjectEnteties As New edoPLwrEntities()
            Dim allGenress = From genre In myObjectEnteties.genres
                             Order By genre.name
                             Select New With {genre.name, genre.reviews}

            Repeater1.DataSource = allGenress
            Repeater1.DataBind()

        End Using

    End Sub
End Class
