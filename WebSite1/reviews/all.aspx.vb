Imports plwoModel
Partial Class reviews_all
    Inherits titlebasepage

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load

        Using MyEntities As New edoPLwrEntities
            Dim allReviews = From review In MyEntities.reviews
                            Where review.authorized = True
                            Order By review.createDateTime Descending
                            Select review

            'this is blanked out because of chapter 15 last example
            '   GridView1.DataSource = allReviews
            '  GridView1.DataBind()
            Repeater1.DataSource = allReviews
            Repeater1.DataBind()

        End Using



    End Sub
End Class
