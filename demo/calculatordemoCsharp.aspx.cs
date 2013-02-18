using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class demo_calculatordemoCsharp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Calculatebutton_Click(object sender, EventArgs e)
    {
        if (Valuebox1.Text.Length > 0 && valuebox2.Text.Length > 0)
        {
            double answer = 0;
            double value1 = Convert.ToDouble(Valuebox1.Text);
            double value2 = Convert.ToDouble(valuebox2.Text);

            switch (OperatorList.SelectedValue)
            {
                case "+":
                    answer = value1 + value2;
                    break;
                case "-":
                    answer = value1 - value2;
                    break;
                case "/":
                    answer = value1 / value2;
                    break;
                case "*":
                    answer = value1 * value2;
                    break;

            }
            ResultLabel.Text = answer.ToString();
        }
        else
        { 
            ResultLabel.Text = string.Empty;
        }
    }
}