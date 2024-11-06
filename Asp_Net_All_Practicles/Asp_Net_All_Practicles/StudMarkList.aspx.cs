using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Asp_Net_All_Practicles
{
    public partial class StudMarkList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //int prno;
            //prno = Convert.ToInt32(txtSPrno.Text);

            //1.Student Name - 
            Session["studName"] = txtSName.Text;

            //2.Student Prn no.-
            Session["studPrnno"] = txtSPrno.Text;
           
            //3.Student Courses - 
            if (chkFstYr.Checked == true)
            {
                Session["mcaPlain"] = chkMCAPlain.Text;
            }
            if (chkSecYr.Checked == true)
            {
                Session["mcaSandwich"] = chkMCASand.Text;
            }
            
            //4.Student Years - 
            if (chkFstYr.Checked == true)
            {
                Session["firstYear"] = chkFstYr.Text;
            }
            if (chkSecYr.Checked == true)
            {
                Session["secondYear"] = chkSecYr.Text;
            }

            //5.Subject Marks - 

            int web, rdbms, ds, cloud, java;
            int marks = 0;
            float total = 500, percentage;

            //Converting string textbox into integer variable
            web = Convert.ToInt32(txtWeb.Text);
            rdbms = Convert.ToInt32(txtRDBMS.Text);
            ds = Convert.ToInt32(txtDS.Text);
            cloud = Convert.ToInt32(txtCloud.Text);
            java = Convert.ToInt32(txtJava.Text);

            //Defining session variable to allthe text values
            Session["web"] = Convert.ToInt32(txtWeb.Text);
            Session["rdbms"] = Convert.ToInt32(txtRDBMS.Text);
            Session["ds"] = Convert.ToInt32(txtDS.Text);
            Session["cloud"] = Convert.ToInt32(txtCloud.Text);
            Session["java"] = Convert.ToInt32(txtJava.Text);

            //Calculating all subject marks
            marks = marks + web + rdbms + ds + cloud + java;

            //Calculating percentage
            percentage = marks / 5;

            //Defining session variable to marks,total and percentage
            Session["marks"] = marks;
            Session["total"] = total;
            Session["percentage"] = percentage;

            Response.Redirect("GettingStudMarks.aspx");
        }

        //3.Student Courses when it checked - MCA Plain
        protected void chkMCAPlain_CheckedChanged(object sender, EventArgs e)
        {
            if (chkMCAPlain.Checked == true)
            {
                chkMCASand.Visible = false;
            }
            else
            {
                chkMCASand.Visible = true;
            }
        }

        //4.Student Courses when it checked - MCA Sandwich
        protected void chkMCASand_CheckedChanged(object sender, EventArgs e)
        {
            if (chkMCASand.Checked == true)
            {
                chkMCAPlain.Visible = false;
            }
            else
            {
                chkMCAPlain.Visible = true;
            }
        }
        
        //5.Student Year when it checked - First Year
        protected void chkFstYr_CheckedChanged(object sender, EventArgs e)
        {
            if (chkFstYr.Checked == true)
            {
                chkSecYr.Visible = false;
            }
            else
            {
                chkSecYr.Visible = true;
            }
        }

        //6.Student Year when it checked - Second Year
        protected void chkSecYr_CheckedChanged(object sender, EventArgs e)
        {
            if (chkSecYr.Checked == true)
            {
                chkFstYr.Visible = false;
            }
            else
            {
                chkFstYr.Visible = true;
            }
        }

        
      
       
    }
}