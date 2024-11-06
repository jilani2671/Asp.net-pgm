using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace view_state
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (ViewState["ViewStateValue"] != null)
                {
                    txtViewState.Text = ViewState["ViewStateValue"].ToString();
                }

                if (Session["SessionStateValue"] != null)
                {
                    txtSessionState.Text = Session["SessionStateValue"].ToString();
                }

                if (Application["ApplicationStateValue"] != null)
                {
                    txtApplicationState.Text = Application["ApplicationStateValue"].ToString();
                }
            }
        }

        protected void btnViewState_Click(object sender, EventArgs e)
        {
            ViewState["ViewStateValue"] = txtViewState.Text;
            lblRetrievedValues.Text = "View State saved: " + txtViewState.Text;
        }

        protected void btnSessionState_Click(object sender, EventArgs e)
        {
            Session["SessionStateValue"] = txtSessionState.Text;
            lblRetrievedValues.Text = "Session State saved: " + txtSessionState.Text;
        }

        protected void btnApplicationState_Click(object sender, EventArgs e)
        {
            Application["ApplicationStateValue"] = txtApplicationState.Text;
            lblRetrievedValues.Text = "Application State saved: " + txtApplicationState.Text;
        }
    }
}
