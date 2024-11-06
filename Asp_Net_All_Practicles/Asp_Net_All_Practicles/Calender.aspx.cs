/*Calender -
1. Purpose - It is used where user required to enter date for particular fields eg, DOB, Join date, Leave Date etc.
2. Controls - i] Calender control
             ii] Textbox control
            iii] Panel control
             iv] Button control
3. Business Logic - When user click on button then, the calender control is going to visible to the user.
                    So that after select particular date, then that date is going to store in respective txtbox.
                    So, here are different purpose of txtbox that take different date accordinglly.
4. Business Logic Used - 
           
                                             
 */
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Asp_Net_All_Practicles
{
    public partial class Calender : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void empCalender_SelectionChanged(object sender, EventArgs e)
        {
            string b1 = ViewState["b1"].ToString();

            if (b1=="cal1")
            {
                txtDOB.Text = empCalender.SelectedDate.ToString();
            }

            if (b1=="cal2")
            {
                txtJoinDate.Text = empCalender.SelectedDate.ToString();
            }

            if (b1=="cal3")
            {
                txtContractDate.Text = empCalender.SelectedDate.ToString();
            }
        }

        protected void btnDOB_Click(object sender, EventArgs e)
        {
            ViewState["b1"] = "cal1";
            panelDOB.Controls.Add(empCalender);
            empCalender.Visible = true;
        }

        protected void btnJoinDate_Click(object sender, EventArgs e)
        {
            ViewState["b1"] = "cal2";
            panelJoinDate.Controls.Add(empCalender);
            empCalender.Visible = true;
        }

        protected void btnContractDate_Click(object sender, EventArgs e)
        {
            ViewState["b1"] = "cal3";
            panelJoinDate.Controls.Add(empCalender);
            empCalender.Visible = true;
        }
    }
}