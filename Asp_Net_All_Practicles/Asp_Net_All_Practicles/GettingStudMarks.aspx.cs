using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Asp_Net_All_Practicles
{
    public partial class GettingStudMarks : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

            //1.Student Name - 
            if (Session["studName"] != null)
            {
                Label1.Text = Session["studName"].ToString();
            }

            //2.Student Prn no - 
            if (Session["studPrnno"] != null)
            {
                Label2.Text = Session["studPrnno"].ToString();
            }

            //3.Student Course - MCA Plain || MCA Sandwich
            if (Session["mcaPlain"] != null)
            {
                Label3.Text = Session["mcaPlain"].ToString();
            }
            if (Session["mcaSandwich"] != null)
            {
                Label3.Text = Session["mcaSandwich"].ToString();
            }

            //4.Student Year - Ist Year || IInd Year
            if (Session["firstYear"] != null)
            {
                Label4.Text = Session["firstYear"].ToString();
            }
            if (Session["secondYear"] != null)
            {
                Label4.Text = Session["secondYear"].ToString();
            }

            //5.Web - 
            if (Session["web"] != null)
            {
                Label5.Text = Convert.ToInt32(Session["web"]).ToString();
            }

            //6.RDBMS - 
            if (Session["rdbms"] != null)
            {
                Label6.Text = Convert.ToInt32(Session["rdbms"]).ToString();
            }

            //7.Data Structure - 
            if (Session["ds"] != null)
            {
                Label7.Text = Convert.ToInt32(Session["ds"]).ToString();
            }

            //8.Cloud Computing - 
            if (Session["cloud"] != null)
            {
                Label8.Text = Convert.ToInt32(Session["cloud"]).ToString();
            }

            //9.Adv. Java Programming - 
            if (Session["java"] != null)
            {
                Label9.Text = Convert.ToInt32(Session["java"]).ToString();
            }

            //10.Marks - 
            if (Session["marks"] != null)
            {
                Label10.Text = Convert.ToInt32(Session["marks"]).ToString();
            }

            //11.Total - 
            if (Session["total"] != null)
            {
                Label11.Text = Convert.ToInt32(Session["total"]).ToString();
            }

            //12.Percentage - 
            if (Session["percentage"] != null)
            {
                Label12.Text = Convert.ToInt32(Session["percentage"]).ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Back to first page
            Response.Redirect("StudMarkList.aspx");
        }
    }
}