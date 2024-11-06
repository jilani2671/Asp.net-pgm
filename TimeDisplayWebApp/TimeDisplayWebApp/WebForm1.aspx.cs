using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TimeDisplayWebApp
{
    public partial class Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
              
                txtLoggedTime.Text = DateTime.Now.ToString("HH:mm:ss");
            }
        }

        protected void btnRefresh_Click(object sender, EventArgs e)
        {
           
            txtCurrentTime.Text = DateTime.Now.ToString("HH:mm:ss");
        }
    }
}
