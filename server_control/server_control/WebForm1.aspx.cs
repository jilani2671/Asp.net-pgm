using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace server_control
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void imgButton_Click(object sender, ImageClickEventArgs e)
        {
            lblOutput.Text = "Image Button Clicked!";
        }

        protected void linkButton_Click(object sender, EventArgs e)
        {
            lblOutput.Text = "Link Button Clicked!";
        }
    }
}
