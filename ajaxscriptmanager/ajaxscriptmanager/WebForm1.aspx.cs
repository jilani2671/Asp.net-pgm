using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



namespace ajaxscriptmanager
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            double number1, number2, result = 0;
            bool isNumber1Valid = double.TryParse(txtNumber1.Text, out number1);
            bool isNumber2Valid = double.TryParse(txtNumber2.Text, out number2);

            if (isNumber1Valid && isNumber2Valid)
            {
                switch (ddlOperation.SelectedValue)
                {
                    case "Add":
                        result = number1 + number2;
                        break;
                    case "Subtract":
                        result = number1 - number2;
                        break;
                    case "Multiply":
                        result = number1 * number2;
                        break;
                    case "Divide":
                        if (number2 != 0)
                        {
                            result = number1 / number2;
                        }
                        else
                        {
                            lblResult.Text = "Result: Cannot divide by zero.";
                            return;
                        }
                        break;
                }
                lblResult.Text = "Result: " + result.ToString();
            }
            else
            {
                lblResult.Text = "Result: Invalid input.";
            }
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            // Optional: Add any code that should run periodically
        }
    }
}
