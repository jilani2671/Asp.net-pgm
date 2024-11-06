using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Windows.Forms;

namespace Asp_Net_All_Practicles
{
    public partial class Trying : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader dr;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection();
            con.ConnectionString = "Data Source=.\\SQLEXPRESS;AttachDbFilename=E:\\DYP MCA\\II SEM\\C#.NET\\Practicals\\Asp_Net_All_Practicles\\Asp_Net_All_Practicles\\App_Data\\HomeDB.mdf;Integrated Security=True;User Instance=True";
            con.Open();
        }

        protected void btnshow_Click(object sender, EventArgs e)
        {
            string rollNo = TextBox1.Text.Trim();
            

            if (string.IsNullOrEmpty(rollNo))
            {
                lblValid.Visible = true;
                lblValid.Text = "Please enter a roll number.";
                lblValid.ForeColor = System.Drawing.Color.Orange;
                return;
            }

            cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "select name,course,fees from studDYP where rollno = " + TextBox1.Text + "";
            cmd.ExecuteNonQuery();

            dr = cmd.ExecuteReader();
            GridView1.DataSource = dr;
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            lblDate.Text = DateTime.Now.ToString();
        }

        protected void btnName_Click(object sender, EventArgs e)
        {
            cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "insert into studDYP(name) values ('"+txtName.Text+"')";
            cmd.ExecuteNonQuery();
            MessageBox.Show("Successfully record inserted!");
        }
    }
}