using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace AllFinalDatabase.MS_SQL_Server
{
    public partial class Employee : System.Web.UI.Page
    {
        private string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["DYP_ATUConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid1();
                BindGrid2();
                
            }
        }

        private void BindGrid1()
        {
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("sp_getEmployee", con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                GridView10.DataSource = dt;
                GridView10.DataBind();
                con.Close();

            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            // Validate if both fields are not empty
            if (string.IsNullOrEmpty(txtEmpNo.Text) || string.IsNullOrEmpty(txtEmpMobileNo.Text))
            {
                Response.Write("<script>alert('Please fill in both fields')</script>");
                return; // Exit the method if validation fails
            }

            // Convert txtEmpNo.Text to an integer
            int empno;
            if (!int.TryParse(txtEmpNo.Text, out empno))
            {
                Response.Write("<script>alert('Please enter a valid Employee Number')</script>");
                return; // Exit the method if conversion fails
            }
            using(SqlConnection con = new SqlConnection(connectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("updateEmployee",con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@mobileno",txtEmpMobileNo.Text);
                cmd.Parameters.AddWithValue("@empno",txtEmpNo.Text);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Record Successfully Updated')</script>");
                con.Close();

            }
            BindGrid1();
            
        }

        private void BindGrid2()
        {
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select empno, ename, city, mobileno, dob,designation, deptno, salary from Employee", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                GridView11.DataSource = dt;
                GridView11.DataBind();
                con.Close();
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("deleteEmployee", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@empno", txtEmpNoDelete.Text);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Record Successfully Deleted')</script>");
                con.Close();
            }
            BindGrid2();
        }
    }
}