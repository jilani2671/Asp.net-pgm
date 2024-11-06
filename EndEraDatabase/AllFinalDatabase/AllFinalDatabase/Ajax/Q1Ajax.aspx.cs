using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AllFinalDatabase.Ajax
{
    public partial class Q1Ajax : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Label5.Text = System.DateTime.Now.ToString("hh:mm:ss tt");
            }
        }
        protected void getTimer(object sender, EventArgs e)
        {
            Label6.Text = DateTime.Now.ToString("hh:mm:ss tt");
        }

        protected void btnAO_Click(object sender, EventArgs e)
        {
            System.Threading.Thread.Sleep(2000);

            
                int num1 = Convert.ToInt32(TextBox1.Text);
                int num2 = Convert.ToInt32(TextBox2.Text);

                Label1.Text = "Addition is:" + (num1 + num2);
                Label2.Text = "Substraction is:" + (num1 - num2);
                Label3.Text = "Multiplication is:" + (num1 * num2);
                Label4.Text = "Division is:" + (num1 / num2);
            

        }
    }
}