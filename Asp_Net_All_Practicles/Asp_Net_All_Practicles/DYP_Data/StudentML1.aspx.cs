using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace Asp_Net_All_Practicles
{
    public partial class StudentML1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //3.Student Courses - 
            if (chkMCAPlain.Checked == true)
            {
                Session["mcaPlain"] = chkMCAPlain.Text;
            }
            if (chkMcaSandwich.Checked == true)
            {
                Session["mcaSandwich"] = chkMcaSandwich.Text;
            }

            //4.Student Years - 
            if (chkFirstYear.Checked == true)
            {
                Session["firstYear"] = chkFirstYear.Text;
            }
            if (chkSecondYear.Checked == true)
            {
                Session["secondYear"] = chkSecondYear.Text;
            }

//----------------------------------MCAPlain & MCASandwich 2nd year Result---------------------------------------------
                //1.MCA-Plain--------------------------------------------------------------
                if (chkMCAPlain.Checked == true)
                {
                    if (chkSecondYear.Checked == true)
                    {
                        string msgPlain = "MCA-Plain 2nd year result is not yet declared!";
                        MessageBox.Show(msgPlain);
                        txtStudName.Text = txtStudPrnno.Text = string.Empty;
                        chkMCAPlain.Checked = false;
                        chkSecondYear.Checked = false;
                        Response.Redirect("/DYP_Data/StudentML1.aspx");

                    }
                }
                //End-----------------------------------------------------------------------

            //2.MCA-Sandwich------------------------------------------------------------
                if(chkMcaSandwich.Checked == true)
                {
                    if(chkSecondYear.Checked == true)
                    {
                        string msgSandwich = "MCA-Sandwich 2nd year result is not yet declared!";
                        MessageBox.Show(msgSandwich);
                        txtStudName.Text = txtStudPrnno.Text = string.Empty;
                        chkMcaSandwich.Checked = false;
                        chkSecondYear.Checked = false;
                        Response.Redirect("/DYP_Data/StudentML1.aspx");
                    }
                }
                //End------------------------------------------------------------------------


               

//-------------------------------5.Panel1 - MCASandwich panel is going to display-----------------------------
            if (chkMcaSandwich.Checked == true)
            {
                if (chkFirstYear.Checked == true)
                {
                    Panel1.Visible = chkFirstYear.Checked;
                    Panel2.Visible = false;

                    //MCA Sandwich panel allow MCA Sandwich Subject is going to display
                    int web, rdbms, ds, cloud, java;
                    int marks = 0;
                    float total = 500, percentage;

                    //Converting string textbox into integer variable

                    //External Conversion - 
                    //1.txtWeb Conversion ----------------------------------- 
                    if (int.TryParse(txtWeb.Text, out web))
                    {
                        web = Convert.ToInt32(txtWeb.Text);
                        Session["iweb"] = lblWeb.Text;
                        Session["web"] = Convert.ToInt32(txtWeb.Text);
                    }
                    else
                    {
                        Label1.Visible = false;
                        Label1.Text = "Please contact your administration!";
                    }
                    //End---------------------------------------------------

                    //2.txtrdbms Conversion -------------------------------- 
                    if (int.TryParse(txtRDBMS.Text, out rdbms))
                    {
                        rdbms = Convert.ToInt32(txtRDBMS.Text);
                        Session["irdbms"] = lblRDBMS.Text;
                        Session["rdbms"] = Convert.ToInt32(txtRDBMS.Text);
                    }
                    else
                    {
                        Label1.Visible = false;
                        Label1.Text = "Please contact your administration!";
                    }
                    //End---------------------------------------------------

                    //3.txtdatastructure -----------------------------------
                    if(int.TryParse(txtDataStructure.Text, out ds))
                    {
                        ds = Convert.ToInt32(txtRDBMS.Text);
                        Session["ids"] = lblDataStructure.Text;
                        Session["ds"] = Convert.ToInt32(txtDataStructure.Text);
                    }
                    else
                    {
                        Label1.Visible = false;
                        Label1.Text = "Please contact your administration!";
                    }
                    //End------------------------------------------------------

                    //4.txtcloud ----------------------------------------------
                    if(int.TryParse(txtCloud.Text, out cloud))
                    {
                        cloud = Convert.ToInt32(txtCloud.Text);
                        Session["icloud"] = lblCloud.Text; 
                        Session["cloud"] = Convert.ToInt32(txtCloud.Text);
                    }
                    else
                    {
                        Label1.Visible = false;
                        Label1.Text = "Please contact your administration!";
                    }
                    //End-----------------------------------------------------

                    //5.txtjava ----------------------------------------------
                    if(int.TryParse(txtJava.Text, out java))
                    {
                        java = Convert.ToInt32(txtJava.Text);
                        Session["ijava"] = lblJava.Text;
                        Session["java"] = Convert.ToInt32(txtJava.Text);
                    }
                    else
                    {
                        Label1.Visible = false;
                        Label1.Text = "Please contact your administration!";
                    }
                    //End---------------------------------------------------

                    //Calculating all subject marks
                    marks = marks + web + rdbms + ds + cloud + java;

                    //Calculating percentage
                    percentage = marks / 5;

                    //Defining session variable to marks,total and percentage
                    Session["marks"] = marks;
                    Session["total"] = total;
                    Session["percentage"] = percentage;
                }

            }

//-----------------------------6.Panel2 - MCAPlain panel is going to display----------------------------------
            if (chkMCAPlain.Checked == true){

                if(chkFirstYear.Checked == true){

                    Panel1.Visible = false;
                    Panel2.Visible = chkFirstYear.Checked;

                    //MCA Sandwich panel allow MCA Plain Subject is going to display
                    int mad,dwdm,python,csharp,iot;
                    int marks = 0;
                    float total = 500, percentage;

                    //Converting string textbox into integer variable

                    //External Conversion - 
                    //1.txtmad Conversion ----------------------------------- 
                    if (int.TryParse(txtMAD.Text, out mad))
                    {
                        mad = Convert.ToInt32(txtMAD.Text);
                        Session["imad"] = lblMAD.Text; 
                        Session["mad"] = Convert.ToInt32(txtMAD.Text);
                    }
                    else
                    {
                        Label1.Visible = false;
                        Label1.Text = "Please contact your administration!";
                    }
                    //End---------------------------------------------------

                    //2.txtrdwdm Conversion -------------------------------- 
                    if (int.TryParse(txtDWDM.Text, out dwdm))
                    {
                        dwdm = Convert.ToInt32(txtDWDM.Text);
                        Session["idwdm"] = lblDWDM.Text; 
                        Session["dwdm"] = Convert.ToInt32(txtDWDM.Text);
                    }
                    else
                    {
                        Label1.Visible = false;
                        Label1.Text = "Please contact your administration!";
                    }
                    //End---------------------------------------------------

                    //3.txtpython -----------------------------------
                    if (int.TryParse(txtPython.Text, out python))
                    {
                        python = Convert.ToInt32(txtPython.Text);
                        Session["ipython"] = lblPython.Text; 
                        Session["python"] = Convert.ToInt32(txtPython.Text);
                    }
                    else
                    {
                        Label1.Visible = false;
                        Label1.Text = "Please contact your administration!";
                    }
                    //End------------------------------------------------------

                    //4.txtcsharp ----------------------------------------------
                    if (int.TryParse(txtCSharp.Text, out csharp))
                    {
                        csharp = Convert.ToInt32(txtCSharp.Text);
                        Session["icsharp"] = lblCSharp.Text; 
                        Session["csharp"] = Convert.ToInt32(txtCSharp.Text);
                    }
                    else
                    {
                        Label1.Visible = false;
                        Label1.Text = "Please contact your administration!";
                    }
                    //End-----------------------------------------------------

                    //5.txtiot ----------------------------------------------
                    if (int.TryParse(txtIOT.Text, out iot))
                    {
                        iot = Convert.ToInt32(txtIOT.Text);
                        Session["iiot"] = lblIOT.Text; 
                        Session["iot"] = Convert.ToInt32(txtIOT.Text);
                    }
                    else
                    {
                        Label1.Visible = false;
                        Label1.Text = "Please contact your administration!";
                    }
                    //End---------------------------------------------------

                    //Calculating all subject marks
                    marks = marks + mad + dwdm + python + csharp + iot;

                    //Calculating percentage
                    percentage = marks / 5;

                    //Defining session variable to marks,total and percentage
                    Session["marks"] = marks;
                    Session["total"] = total;
                    Session["percentage"] = percentage;
                }
            }

        }
    

        protected void btnShow_Click(object sender, EventArgs e)
        {
            //1.Student Name - 

            string studName = Convert.ToString(txtStudName.Text);
            string studPrnno = Convert.ToString(txtStudPrnno.Text);

            Session["studentName"] = studName;
            
            //2.Student Prn no.-
            
            Session["studentPrnno"] = studPrnno;
           
            Response.Redirect("ViewStudML1.aspx");
        }

        //8.Student Courses when it checked - MCA Sandwich
        protected void chkMcaSandwich_CheckedChanged(object sender, EventArgs e)
        {
            if (chkMcaSandwich.Checked == true)
            {
                chkMCAPlain.Visible = false;
            }
            else
            {
                chkMCAPlain.Visible = true;
            }
        }

        //7.Student Courses when it checked - MCA Plain
        protected void chkMCAPlain_CheckedChanged(object sender, EventArgs e)
        {
            if (chkMCAPlain.Checked == true)
            {
                chkMcaSandwich.Visible = false;
            }
            else
            {
                chkMcaSandwich.Visible = true;
            }
        }

        //9.Student Year when it checked - First Year
        protected void chkFirstYear_CheckedChanged(object sender, EventArgs e)
        {
            if (chkFirstYear.Checked == true)
            {
                chkSecondYear.Visible = false;
            }
            else
            {
                chkSecondYear.Visible = true;
            }
        }

        //10.Student Year when it checked - Second Year
        protected void chkSecondYear_CheckedChanged(object sender, EventArgs e)
        {
            if (chkSecondYear.Checked == true)
            {
                chkFirstYear.Visible = false;
            }
            else
            {
                chkFirstYear.Visible = true;
            }
        }
    }
}
//Program enter