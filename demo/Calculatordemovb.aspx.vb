
Partial Class demo_Calculatordemovb
    Inherits System.Web.UI.Page

    Protected Sub CalculateButton_Click(sender As Object, e As System.EventArgs) Handles CalculateButton.Click
        If Valuebox1.Text.Length > 0 AndAlso valueBox2.Text.Length Then
            Dim answer As Double = 0
            Dim value1 As Double = Convert.ToDouble(Valuebox1.Text)
            Dim value2 As Double = Convert.ToDouble(valueBox2.Text)


            'calls the calculator class
            Dim myCalculator As New Calculator()
            Select Case OperatorList.SelectedValue
                Case "+"
                    answer = myCalculator.Add(value1, value2)
                Case "-"
                    answer = myCalculator.Subtract(value1, value2)
                Case "*"
                    answer = myCalculator.Multiply(value1, value2)
                Case "/"
                    answer = myCalculator.Divide(value1, value2)
            End Select
            ResultLabel.Text = answer.ToString()
        Else
            ResultLabel.Text = String.Empty
        End If
    End Sub
End Class
