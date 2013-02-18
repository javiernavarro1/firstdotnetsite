Imports plwoModel
Partial Class reviews_Default
    Inherits titlebasepage

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load

        Using myEntities As edoPLwrEntities = New edoPLwrEntities()
            If Profile.FavoriteGenres.Count > 0 Then
                Dim favGenres = From genre In myEntities.genres
                                Order By genre.name
                                Where Profile.FavoriteGenres.Contains(genre.Id)
                                Select New With {genre.name, genre.reviews}


                genreRepeater.DataSource = favGenres
                genreRepeater.DataBind()
            End If

            genreRepeater.Visible = genreRepeater.Items.Count > 0
            NoRecords.Visible = genreRepeater.Items.Count = 0

        End Using
    End Sub
End Class
