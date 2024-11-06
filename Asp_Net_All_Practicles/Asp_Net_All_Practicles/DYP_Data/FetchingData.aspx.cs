using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Asp_Net_All_Practicles.DYP_Data
{
    public partial class FetchingData : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection();
            con.ConnectionString = "Data Source=.\\SQLEXPRESS;AttachDbFilename=E:\\DYP MCA\\II SEM\\C#.NET\\Practicals\\Asp_Net_All_Practicles\\Asp_Net_All_Practicles\\App_Data\\HomeDB.mdf;Integrated Security=True;User Instance=True";
            con.Open();
        }

        protected void btnFetch_Click(object sender, EventArgs e)
        {
            cmd = new SqlCommand();
            cmd.Connection = con;
            //cmd.CommandText = "select name = '" + txtName.Text + "',course = '" + txtCourse.Text + "',fees = " + txtFees.Text + " from studDYP where rollno = " + txtRollNo.Text + "";
            cmd.CommandText = "select * from studDYP";

            da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds, "s1");

            GridView1.DataSource = ds.Tables["s1"];
            GridView1.DataBind();
        }
    }
}