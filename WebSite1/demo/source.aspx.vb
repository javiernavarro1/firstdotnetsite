
Partial Class demo_source
    Inherits titlebasepage

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load


        '        Response.Redirect("target.aspx?Test=I changed") redirect page to another page
        ' 
        'server side page redirect without changing the address bar address
        Server.Transfer("target.aspx?Test=ICHANGED")
    End Sub
End Class
