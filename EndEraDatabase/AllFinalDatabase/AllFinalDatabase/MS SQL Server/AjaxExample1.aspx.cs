using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AllFinalDatabase.MS_SQL_Server
{
    public partial class AjaxExample : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Timer1_Tick(object sender, EventArgs e)
        {
            PerformCalculation();
        }
        private void PerformCalculation()
        {
            double number1, number2, result = 0;

            try
            {
                number1 = Convert.ToDouble(txtNumber1.Text);
                number2 = Convert.ToDouble(txtNumber2.Text);
            }
            catch (FormatException)
            {
                lblResult.Text = "Please enter valid numbers.";
                return;
            }
            

            string operation = ddlOperation.SelectedValue;

            switch (operation)
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
                        result = number1 / number2;
                    else
                    {
                        lblResult.Text = "Division by zero is not allowed.";
                        return;
                    }
                    break;
            }

            lblResult.Text = "Result: " + result.ToString();
        }
    }
}