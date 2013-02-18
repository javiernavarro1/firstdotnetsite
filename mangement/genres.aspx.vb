Imports System.Data
Imports System.Data.SqlClient 'this is used to verify a potential error when saving to the database look at code towards bottom

Partial Class mangement_Genres
    Inherits System.Web.UI.Page

    Protected Sub GridView1_RowDataBound(sender As Object, e As System.Web.UI.WebControls.GridViewRowEventArgs) Handles GridView1.RowDataBound
        Select Case e.Row.RowType
            Case DataControlRowType.DataRow
                Dim myRowview As DataRowView = CType(e.Row.DataItem, DataRowView)

                If Convert.ToInt32(myRowview("NumberOfReviews")) > 0 Then
                    Dim deleteLink As LinkButton = TryCast(e.Row.FindControl("deleteLink"), LinkButton)

                    If deleteLink IsNot Nothing Then
                        deleteLink.Enabled = False
                    End If
                End If

        End Select
    End Sub

    'page 551
    Protected Sub SqlDataSource1_Deleted(sender As Object, e As System.Web.UI.WebControls.SqlDataSourceStatusEventArgs) Handles SqlDataSource1.Deleted
        If e.Exception IsNot Nothing AndAlso
            TypeOf (e.Exception) Is SqlException Then
            Dim myexception As SqlException = CType(e.Exception, SqlException)

            If myexception.Number = 547 Then
                ErrorM.Text = "sorry, you cante delete because it has a associated review that you need to delete first"

                e.ExceptionHandled = True

            End If


        End If
    End Sub
End Class
