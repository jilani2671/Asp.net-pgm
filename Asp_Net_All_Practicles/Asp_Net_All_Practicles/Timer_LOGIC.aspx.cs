using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Asp_Net_All_Practicles
{
    public partial class Timer_LOGIC : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                TextBox1.Text = System.DateTime.Now.ToString();
            }
         }
        protected void Button1_Click(object sender, EventArgs e)
        {
            TextBox2.Text = System.DateTime.Now.ToString();
        }
    }
}