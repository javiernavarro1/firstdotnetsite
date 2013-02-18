
Partial Class demo_events
    Inherits titlebasepage

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        WriteMessage("Page_Load")
    End Sub
    'this is for the button 
    Protected Sub Button1_Click(sender As Object, e As System.EventArgs) Handles Button1.Click
        WriteMessage("Button1_Click")
    End Sub
    'these events are for the grid view

    Protected Sub GridView1_Sorted(sender As Object, e As System.EventArgs) Handles GridView1.Sorted
        WriteMessage("GridView1_Sorted")
    End Sub

    Protected Sub GridView1_Sorting(sender As Object, e As System.Web.UI.WebControls.GridViewSortEventArgs) Handles GridView1.Sorting
        WriteMessage("GridView1_Sorting")
    End Sub

    Protected Sub GridView1_RowCreated(sender As Object, e As System.Web.UI.WebControls.GridViewRowEventArgs) Handles GridView1.RowCreated
        WriteMessage("GridView1_RowCreated")
    End Sub

    Protected Sub GridView1_DataBinding(sender As Object, e As System.EventArgs) Handles GridView1.DataBinding
        WriteMessage("GridView1_DataBinding")
    End Sub

    Protected Sub GridView1_DataBound(sender As Object, e As System.EventArgs) Handles GridView1.DataBound
        WriteMessage("GridView1_DataBound")
    End Sub

    Protected Sub GridView1_RowDataBound(sender As Object, e As System.Web.UI.WebControls.GridViewRowEventArgs) Handles GridView1.RowDataBound
        WriteMessage("GridView1_RowDataBound")
    End Sub

    'these events are for the Ado entity data source

    Protected Sub EntityDataSource1_ContextCreating(sender As Object, e As System.Web.UI.WebControls.EntityDataSourceContextCreatingEventArgs) Handles EntityDataSource1.ContextCreating
        WriteMessage("EntityDataSource1_ContextCreating")

    End Sub

    Protected Sub EntityDataSource1_Selecting(sender As Object, e As System.Web.UI.WebControls.EntityDataSourceSelectingEventArgs) Handles EntityDataSource1.Selecting
        WriteMessage("EntityDataSource1_Selecting")

    End Sub

    Private Sub WriteMessage(ByVal handlerName As String)
        If Page.IsPostBack Then
            postback.Text &= handlerName & "<br />"
        Else
            nopostback.Text &= handlerName & "<br />"

        End If
    End Sub

    Protected Sub Page_PreRenderComplete(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.PreRenderComplete
        WriteMessage("Page_PreRenderComplete <br/>-------------------")

    End Sub
End Class
