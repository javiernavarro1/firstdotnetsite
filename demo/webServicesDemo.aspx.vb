Imports System.Web.Services

Partial Class demo_webServicesDemo
    Inherits titlebasepage
    <WebMethod()>
    Public Shared Function HelloWorld(ByVal yourname As String) As String
        Return String.Format("hello {0}", yourname)

    End Function
End Class
