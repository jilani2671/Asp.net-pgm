using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Asp_Net_All_Practicles
{
    public partial class CheckRadio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void chkEmail_CheckedChanged(object sender, EventArgs e)
        {
            if (chkEmail.Checked == true)
            {
                lblEmail.Visible = true;
                txtEmail.Visible = true;
                lblEmail.Text = "Enter your Email";
            }
            else if(chkEmail.Checked == false){
                lblEmail.Visible = false;
                txtEmail.Visible = false;
            }
        }

        protected void radDebit_CheckedChanged(object sender, EventArgs e)
        {
            if (radDebit.Checked == true)
            {
                lblRad.Visible = true;
                txtRad.Visible = true;
                lblRad.Text = "Enter your debit card number!";
            }
        }

        protected void radCredit_CheckedChanged(object sender, EventArgs e)
        {
             if (radCredit.Checked == true)
            {
                lblRad.Visible = true;
                txtRad.Visible = true;
                lblRad.Text = "Enter your credit card number!";
            }
        }

        protected void radOther_CheckedChanged(object sender, EventArgs e)
        {
             if (radOther.Checked == true)
            {
                lblRad.Visible = true;
                txtRad.Visible = true;
                lblRad.Text = "Enter your other card number!";
            }
        }

        protected void radNone_CheckedChanged(object sender, EventArgs e)
        {
            if (radNone.Checked == true)
            {
                lblRad.Visible = false;
                txtRad.Visible = false;
                //lblRad.Text = "Enter your other card number!";
            }
        }
    }
}