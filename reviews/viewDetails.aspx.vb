Imports plwoModel
Partial Class reviews_viewDetails
    Inherits titlebasepage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim reviewId As Integer = Convert.ToInt32(Request.QueryString.Get("ReviewId"))
        Dim myReview As review = TryCast(Cache("reviews") + reviewId.ToString(), review)
        Label1.Text = "In the cache"
        If myReview Is Nothing Then
            Label1.Text = " not In the cache"
            Using myEntities As New edoPLwrEntities()
                myReview = (From EDO In myEntities.reviews
                            Where EDO.Id = reviewId
                            Select EDO).SingleOrDefault()
                If myReview IsNot Nothing Then
                    Cache.Insert("reviews" + reviewId.ToString(), myReview, Nothing, DateTime.Now.AddMinutes(20),
                                System.Web.Caching.Cache.NoSlidingExpiration)

                End If

                ' sets the properties

                If myReview IsNot Nothing Then
                    Tlabel.Text = myReview.title
                    Slabel.Text = myReview.summary
                    Blabel.Text = myReview.body
                    ''this is the way to set the title dynamically. it is a better alternative
                    'samething with the meta tags
                    Title = myReview.title

                    MetaDescription = myReview.summary
                End If
            End Using
        End If

    End Sub
End Class
