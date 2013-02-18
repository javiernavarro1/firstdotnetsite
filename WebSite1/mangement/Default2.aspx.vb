Imports plwoModel
Partial Class mangement_addEditReviewHandCode
    Inherits System.Web.UI.Page
    Dim _id As Integer = -1

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        If Not String.IsNullOrEmpty(Request.QueryString.Get("Id")) Then
            _id = Convert.ToInt32(Request.QueryString.Get("Id"))

        End If
        ' this uses some linq but is part of the ADO Framework
        If Not Page.IsPostBack And _id > -1 Then
            Using myEntity As New edoPLwrEntities()
                Dim reviews = (From r In myEntity.reviews
                            Where r.Id = _id
                            Select r).SingleOrDefault()
                'here it specified if review or item are empty

                If reviews IsNot Nothing Then
                    TitleText.text = reviews.title
                    SummaryText.Text = reviews.summary
                    BodyText.Text = reviews.body
                    GenreList.DataBind()

                    Dim myItem As ListItem = GenreList.Items.FindByValue(reviews.genreId.ToString())
                    If myItem IsNot Nothing Then
                        myItem.Selected = True
                    End If

                    Authorized.Checked = reviews.authorized
                End If



            End Using
        End If
    End Sub

    Protected Sub SaveButton_Click(sender As Object, e As System.EventArgs) Handles SaveButton.Click
        Using myEntites As New edoPLwrEntities()
            Dim Areview As review
            If _id = -1 Then 'insert a new item
                Areview = New review()
                Areview.createDateTime = DateTime.Now
                Areview.updateDateTime = Areview.createDateTime
                myEntites.AddToreviews(Areview)
            Else 'now it updates an existing item
                Areview = (From M In myEntites.reviews
                          Where M.Id = _id
                          Select M).Single()

                Areview.updateDateTime = DateTime.Now

            End If
            'now it sets the tile to reflect the text

            Areview.title = TitleText.Text
            Areview.summary = SummaryText.Text
            Areview.body = BodyText.Text
            Areview.genreId = Convert.ToInt32(GenreList.SelectedValue)
            Areview.authorized = Authorized.Checked



            myEntites.SaveChanges()
            Response.Redirect("Reviews.aspx")
        End Using

    End Sub
End Class
