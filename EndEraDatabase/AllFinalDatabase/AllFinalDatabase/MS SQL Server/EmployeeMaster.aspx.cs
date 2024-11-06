using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace AllFinalDatabase.MS_SQL_Server
{
    public partial class EmployeeMaster : System.Web.UI.Page
    {
        SqlConnection con;
       
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection();
            con.ConnectionString = "Data Source=DESKTOP-GFQT5FM\\SQLEXPRESS;Initial Catalog=DYP_ATU;Integrated Security=True";
            con.Open();

            if (!IsPostBack)
            {
                BindGrid();
            }

        }

        private void BindGrid()
        {

            SqlCommand command = new SqlCommand("SELECT * FROM EmployeeMaster");
            command.Connection = con;
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            string firstName = txtFirstName.Text;
            string lastName = txtLastName.Text;
            string email = txtEmail.Text;
            
                SqlCommand command = new SqlCommand("INSERT INTO EmployeeMaster (FirstName, LastName, Email) VALUES (@FirstName, @LastName, @Email)");
                command.Connection = con;
                command.Parameters.AddWithValue("@FirstName", firstName);
                command.Parameters.AddWithValue("@LastName", lastName);
                command.Parameters.AddWithValue("@Email", email);
                command.ExecuteNonQuery();
                BindGrid();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            int employeeID = Convert.ToInt32(txtEmployeeID.Text);
            string firstName = txtFirstName.Text;
            string lastName = txtLastName.Text;
            string email = txtEmail.Text;
            
                SqlCommand command = new SqlCommand("UPDATE EmployeeMaster SET FirstName = @FirstName, LastName = @LastName, Email = @Email WHERE EmployeeID = @EmployeeID");
                command.Connection = con;
                command.Parameters.AddWithValue("@FirstName", firstName);
                command.Parameters.AddWithValue("@LastName", lastName);
                command.Parameters.AddWithValue("@Email", email);
                command.Parameters.AddWithValue("@EmployeeID", employeeID);
                command.ExecuteNonQuery();
                BindGrid();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            int employeeID = Convert.ToInt32(txtEmployeeID.Text);
            
                SqlCommand command = new SqlCommand("DELETE FROM EmployeeMaster WHERE EmployeeID = @EmployeeID");
                command.Connection = con;
                command.Parameters.AddWithValue("@EmployeeID", employeeID);
                command.ExecuteNonQuery();
                BindGrid();
        }

    }
}
