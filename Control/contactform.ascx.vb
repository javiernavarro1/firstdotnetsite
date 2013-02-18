Imports System.IO
Imports System.Net.Mail
Partial Class Control_contactform
    Inherits System.Web.UI.UserControl

    Protected Sub CustomValidator1_ServerValidate(source As Object, args As System.Web.UI.WebControls.ServerValidateEventArgs) Handles CustomValidator1.ServerValidate


        'this checks the phone text boxt to see if it is empty or if business phone is populated
        If Not String.IsNullOrEmpty(phoe.Text) Or
            Not String.IsNullOrEmpty(busphone.Text) Then

            args.IsValid = True
        Else
            args.IsValid = False
        End If

    End Sub

    Protected Sub send_Click(sender As Object, e As System.EventArgs) Handles send.Click
        If Page.IsValid Then
            'get file and read
            Dim filename As String = Server.MapPath("~/App_Data/contactform.txt")
            Dim mailer As String = File.ReadAllText(filename)
            'declare and replace place holder
            mailer = mailer.Replace("##person##", name.Text)
            mailer = mailer.Replace("##Name##", name.Text)
            mailer = mailer.Replace("##Email##", emailadd.Text)
            mailer = mailer.Replace("##HomePhone##", phoe.Text)
            mailer = mailer.Replace("##BusinessPhone##", busphone.Text)
            mailer = mailer.Replace("##Comments##", comment.Text)
            'create mail message and compose email
            Dim messenger As MailMessage = New MailMessage()
            messenger.Subject = "web server response"
            messenger.Body = mailer
            messenger.From = New MailAddress(Me.emailadd.Text, "SenderName")
            messenger.To.Add(New MailAddress("bob@bob.com", "Reciver"))
            messenger.Bcc.Add(New MailAddress(Me.emailadd.Text, "BCC"))

            'create instance and send email
            Dim smtpEmailClient As SmtpClient = New SmtpClient()
            smtpEmailClient.Send(messenger)

            'display message on site / hide form
            Messagereply.Visible = True
            Messa.Visible = True
            FormTable.Visible = False
            'to emulate a long delay it adds time
            System.Threading.Thread.Sleep(5000)



        End If
    End Sub

   
End Class
