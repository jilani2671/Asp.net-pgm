using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace AllFinalDatabase.MS_SQL_Server
{
    public partial class SPCRUD : System.Web.UI.Page
    {
        private string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["DYP_ATUConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnShow_Click(object sender, EventArgs e)
        {
            int rollno = Convert.ToInt32(txtRollNo.Text);

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from StudentMst where rollno = @rollno",con);
                cmd.Parameters.AddWithValue("@rollno", rollno);
                cmd.ExecuteNonQuery();

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                
                if (dt.Rows.Count == 0) // No rows returned, invalid roll number
                {
                    lblNoRollNo.Visible = true;
                    lblNoRollNo.Text = "Invalid Roll no. Enter valid roll no.";
                    //MessageBox.Show("Enter valid rollno");
                }
                else
                {
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    lblNoRollNo.Visible = false; // Hide the error message if roll number is valid
                }

                
                
            }
        }

    }
}

/*
Extra Fetching - 
1.if(dt.Rows.Count == 0){
    lblNoRollNo.Visible = true;
    lblNoRollNo.Text = "Invalid rollno. Enter valid rollno!"
 }
 else{
    lblNoRollNo.Visible = false;
    GridView1.DataSource = dt;
    GridView1.DataBind();
 }
 
 If data inside DataTable with zero or empty rows by the count then give message like invalid and enter valid rollno.
 No BindGrid();
*/