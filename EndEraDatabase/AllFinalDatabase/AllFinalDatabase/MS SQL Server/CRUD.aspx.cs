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
    public partial class CRUD : System.Web.UI.Page
    {
        private string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["DYP_ATUConnectionString"].ConnectionString;

        //Declaring variables for storing textbox values
        int rollno;
        string sname;
        string city;
        string mobile;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();
            }
        }

        private void BindGrid()
        {
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                con.Open();
                string allStudents = "getStudentMst";
                SqlCommand cmd = new SqlCommand(allStudents, con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
                
                

            }
        }

        //Defining a function of variables to store the textboxes values.
        private void setDataVariables()
        {
            rollno = Convert.ToInt32(txtStudRollNo.Text);
            sname = txtStudName.Text.ToUpper();
            city = txtStudCity.Text.ToUpper();
            mobile = txtStudMobileNo.Text;
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            
            if (string.IsNullOrEmpty(txtStudRollNo.Text) || string.IsNullOrEmpty(txtStudName.Text) || string.IsNullOrEmpty(txtStudCity.Text) || string.IsNullOrEmpty(txtStudMobileNo.Text))
            {
                Response.Write("<script>alert('Enter valid information')</script>");
                return; // Exit the method if validation fails
            }
            setDataVariables();//Set the data variables.
            int rollno;
            if (!int.TryParse(txtStudRollNo.Text, out rollno))
            {
                Response.Write("<script>alert('Please enter a valid Employee Number')</script>");
                return; // Exit the method if conversion fails
            }
            

            using (SqlConnection con = new SqlConnection(connectionString))
                {
                    
                    con.Open();// Open the connection
                    SqlCommand cmd = new SqlCommand("INSERT INTO StudentMst(rollno, sname, city, mobile) VALUES (@rollno, @sname, @city, @mobile)", con);
                    cmd.Parameters.AddWithValue("@rollno", rollno);
                    cmd.Parameters.AddWithValue("@sname", sname);
                    cmd.Parameters.AddWithValue("@city", city);
                    cmd.Parameters.AddWithValue("@mobile", mobile);
                    cmd.ExecuteNonQuery();
                    Response.Write("<script>alert('Record Inserted Successfully!')</script>");
                }
                BindGrid();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                setDataVariables();//Set the data variables.
                con.Open();// Open the connection
                SqlCommand cmd = new SqlCommand("Update StudentMst Set sname = @sname,city = @city,mobile = @mobile where rollno = @rollno",con);
                cmd.Parameters.AddWithValue("@rollno", rollno);
                cmd.Parameters.AddWithValue("@sname", sname);
                cmd.Parameters.AddWithValue("@city", city);
                cmd.Parameters.AddWithValue("@mobile", mobile);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Recored Updated Successfully')</script>");
            }
            BindGrid();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            int rollno = Convert.ToInt32(txtStudRollNo.Text);

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                con.Open();// Open the connection
                SqlCommand cmd = new SqlCommand("Delete from StudentMst where rollno = @rollno",con);
                cmd.Parameters.AddWithValue("@rollno", rollno);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Record Deleted Successfully')</script>");
            }
            BindGrid();
        }
    }
}
/*
Points To Remembers - 
1. Connection is not initialized - con.Open(),cmd("",con)
2. Must use '@' to declared the variables.
3. Add connectionString, when SqlConnection object is created in using().
4. Requirement according variables only declared after connectionString;
5. Then, created a function called setDataVariables() where we defined the declared variables with respective variables.
6. And then called in every button method, i.e setDataVarables();
7. Use ToUpper() and ToLower() for case depending data
*/
