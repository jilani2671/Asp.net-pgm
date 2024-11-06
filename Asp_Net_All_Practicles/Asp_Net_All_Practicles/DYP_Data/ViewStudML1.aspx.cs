using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Asp_Net_All_Practicles
{
    public partial class ViewStudML1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //This is from MCASandwich by checking first year checkbox - 

            if (Session["mcaSandwich"] != null)
            {
                if (Session["firstYear"] != null)
                {
                    //1.Student Name - 
                    if (Session["studentName"] != null)
                    {
                        lblName.Text = Session["studentName"].ToString();
                    }

                    //2.Student Prn no - 
                    if (Session["studentPrnno"] != null)
                    {
                        lblPrnno.Text = Session["studentPrnno"].ToString();
                    }

                    //3.Student Course - MCA Plain || MCA Sandwich
                    if (Session["mcaPlain"] != null)
                    {
                        lblCourse.Text = Session["mcaPlain"].ToString();
                    }
                    if (Session["mcaSandwich"] != null)
                    {
                        lblCourse.Text = Session["mcaSandwich"].ToString();
                    }

                    //4.Student Year - Ist Year || IInd Year
                    if (Session["firstYear"] != null)
                    {
                        lblYear.Text = Session["firstYear"].ToString();
                    }
                    if (Session["secondYear"] != null)
                    {
                        lblYear.Text = Session["secondYear"].ToString();
                    }

                    //5.Web - 
                    if (Session["web"] != null && Session["iweb"]  != null)
                    {
                        lblSub1.Text = Convert.ToString(Session["iweb"]);
                        lblWeb.Text = Convert.ToInt32(Session["web"]).ToString();
                    }

                    //6.RDBMS - 
                    if (Session["rdbms"] != null && Session["irdbms"] != null)
                    {
                        lblSub2.Text = Convert.ToString(Session["irdbms"]);
                        lblRDBMS.Text = Convert.ToInt32(Session["rdbms"]).ToString();
                    }

                    //7.Data Structure - 
                    if (Session["ds"] != null && Session["ids"] != null)
                    {
                        lblSub3.Text = Convert.ToString(Session["ids"]);
                        lblDataStructure.Text = Convert.ToInt32(Session["ds"]).ToString();
                    }

                    //8.Cloud Computing - 
                    if (Session["cloud"] != null && Session["icloud"] != null)
                    {
                        lblSub4.Text = Convert.ToString(Session["icloud"]);
                        lblCloud.Text = Convert.ToInt32(Session["cloud"]).ToString();
                    }

                    //9.Adv. Java Programming - 
                    if (Session["java"] != null && Session["ijava"] != null)
                    {
                        lblSub5.Text = Convert.ToString(Session["ijava"]);
                        lblJava.Text = Convert.ToInt32(Session["java"]).ToString();
                    }

                    //10.Marks - 
                    if (Session["marks"] != null)
                    {
                        lblMarks.Text = Convert.ToInt32(Session["marks"]).ToString();
                    }

                    //11.Total - 
                    if (Session["total"] != null)
                    {
                        lblTotal.Text = Convert.ToInt32(Session["total"]).ToString();
                    }

                    //12.Percentage - 
                    if (Session["percentage"] != null)
                    {
                        lblPercentage.Text = Convert.ToInt32(Session["percentage"]).ToString();
                    }
                }
            }

            //This is from MCAPlain by checking first year checkbox - 

            if (Session["mcaPlain"] != null)
            {
                if (Session["firstYear"] != null)
                {
                    //1.Student Name - 
                    if (Session["studentName"] != null)
                    {
                        lblName.Text = Session["studentName"].ToString();
                    }

                    //2.Student Prn no - 
                    if (Session["studentPrnno"] != null)
                    {
                        lblPrnno.Text = Session["studentPrnno"].ToString();
                    }

                    //3.Student Course - MCA Plain || MCA Sandwich
                    if (Session["mcaPlain"] != null)
                    {
                        lblCourse.Text = Session["mcaPlain"].ToString();
                    }
                    if (Session["mcaSandwich"] != null)
                    {
                        lblCourse.Text = Session["mcaSandwich"].ToString();
                    }

                    //4.Student Year - Ist Year || IInd Year
                    if (Session["firstYear"] != null)
                    {
                        lblYear.Text = Session["firstYear"].ToString();
                    }
                    if (Session["secondYear"] != null)
                    {
                        lblYear.Text = Session["secondYear"].ToString();
                    }

                    //5.Web - 
                    if (Session["mad"] != null && Session["imad"] != null)
                    {
                        lblSub1.Text = Convert.ToString(Session["imad"]);
                        lblWeb.Text = Convert.ToInt32(Session["mad"]).ToString();
                    }

                    //6.RDBMS - 
                    if (Session["dwdm"] != null && Session["idwdm"] != null)
                    {
                        lblSub2.Text = Convert.ToString(Session["idwdm"]);
                        lblRDBMS.Text = Convert.ToInt32(Session["dwdm"]).ToString();
                    }

                    //7.Data Structure - 
                    if (Session["python"] != null && Session["ipython"] != null)
                    {
                        lblSub3.Text = Convert.ToString(Session["ipython"]);
                        lblDataStructure.Text = Convert.ToInt32(Session["python"]).ToString();
                    }

                    //8.Cloud Computing - 
                    if (Session["csharp"] != null && Session["icsharp"] != null)
                    {
                        lblSub4.Text = Convert.ToString(Session["icsharp"]);
                        lblCloud.Text = Convert.ToInt32(Session["csharp"]).ToString();
                    }

                    //9.Adv. Java Programming - 
                    if (Session["iot"] != null && Session["iiot"] != null)
                    {
                        lblSub5.Text = Convert.ToString(Session["iiot"]);
                        lblJava.Text = Convert.ToInt32(Session["iot"]).ToString();
                    }

                    //10.Marks - 
                    if (Session["marks"] != null)
                    {
                        lblMarks.Text = Convert.ToInt32(Session["marks"]).ToString();
                    }

                    //11.Total - 
                    if (Session["total"] != null)
                    {
                        lblTotal.Text = Convert.ToInt32(Session["total"]).ToString();
                    }

                    //12.Percentage - 
                    if (Session["percentage"] != null)
                    {
                        
                        lblPercentage.Text = Convert.ToInt32(Session["percentage"]).ToString();

                    }
                }
            }

            //13.Checking result Pass or Fail.

            int result;

            result = Convert.ToInt32(lblPercentage.Text);
            if (result <= 40)
            {
                lblPassFail.Text = "Fail";
            }
            else
            {
                lblPassFail.Text = "Pass";
            }
            
        }
    

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("StudentML1.aspx");
        }
    }
}