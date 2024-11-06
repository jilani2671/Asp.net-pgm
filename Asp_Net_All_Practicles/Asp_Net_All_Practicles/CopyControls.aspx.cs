using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Asp_Net_All_Practicles
{
    public partial class CopyControls : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            ViewState["txt1"] = txt1.Text;
            if (ViewState["txt1"] != null)
            {
                txt1.Text = string.Empty;
                txt2.Text = ViewState["txt1"].ToString();
            }
        }
    }
}