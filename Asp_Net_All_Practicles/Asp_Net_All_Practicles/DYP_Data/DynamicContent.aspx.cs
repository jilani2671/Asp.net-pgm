using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Asp_Net_All_Practicles.DYP_Data
{
    public partial class DynamicContent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLoopText_Click(object sender, EventArgs e)
        {

            Label1.Text = "Gafar Desai";
            
            
            for (int i = 1; i <=10 ; i++)
            {
                
                TextBox2.Text = Label1.Text;
            }
        }

    }
}