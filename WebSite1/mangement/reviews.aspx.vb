
Partial Class mangement_reviews
    Inherits System.Web.UI.Page

    Protected Function GetBooleanText(ByVal booleanValue As Object) As String
        Dim author As Boolean = CType(booleanValue, Boolean)
        If author Then
            Return "yes"
        Else
            Return "no"
        End If
    End Function

End Class
