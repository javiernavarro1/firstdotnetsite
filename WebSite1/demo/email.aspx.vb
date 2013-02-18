Imports System.Net.Mail
Partial Class demo_email
    Inherits titlebasepage

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        Dim theMessage As MailMessage = New MailMessage()
        theMessage.Subject = "test message"
        theMessage.Body = "hello nigga"
        theMessage.From = New MailAddress("bob@bob.com", "Sender name")
        theMessage.To.Add(New MailAddress("bob@bob.com", "Receiver name"))
        'this specifies where to send it to using smtp

        Dim mySmtpClient As SmtpClient = New SmtpClient
        mySmtpClient.Send(theMessage)



    End Sub
End Class
