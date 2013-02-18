
Partial Class _myprofiles
    Inherits titlebasepage

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            'this is used to repopulate the fields after loading
            FirstName.Text = Profile.FirstName
            LastName.Text = Profile.LastName
            DateOfBirth.Text = Profile.DateOfBirth.ToShortDateString()
            Biography.Text = Profile.Bio

        End If

    End Sub

    Protected Sub SaveButton_Click(sender As Object, e As System.EventArgs) Handles SaveButton.Click
        If Page.IsValid Then
            'refers to the special web.config file
            Profile.FirstName = FirstName.Text
            Profile.LastName = LastName.Text
            Profile.DateOfBirth = DateTime.Parse(DateOfBirth.Text)
            Profile.Bio = Biography.Text

            'adding the checkbox
            'clearing the current list
            Profile.FavoriteGenres.Clear()
            'adding selected genres
            For Each myItem As ListItem In PreferenceList.Items
                If myItem.Selected Then
                    Profile.FavoriteGenres.Add(Convert.ToInt32(myItem.Value))
                End If
            Next

        End If
    End Sub
    'for the check box
    Protected Sub PreferenceList_DataBound(sender As Object, e As System.EventArgs) Handles PreferenceList.DataBound
        For Each myitem As ListItem In PreferenceList.Items
            Dim cvalue As Integer = Convert.ToInt32(myitem.Value)

            If Profile.FavoriteGenres.Contains(cvalue) Then
                myitem.Selected = True

            End If
        Next
    End Sub
End Class
