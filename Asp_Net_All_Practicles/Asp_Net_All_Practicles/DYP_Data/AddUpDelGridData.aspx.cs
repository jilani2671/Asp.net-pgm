using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Asp_Net_All_Practicles.DYP_Data
{
    public partial class AddUpDelGridData : System.Web.UI.Page
    {
        private string conString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();
            }
        }
        private void BindGrid()
        {
            using (SqlConnection con = new SqlConnection(conString))
            {
                SqlCommand cmd = new SqlCommand("select * from EmployeeMaster",con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();

            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            int employeeid = Convert.ToInt32(txtEmpID.Text);
            string firstname = txtfname.Text;
            string lastname = txtlname.Text;
            string email = txtemail.Text;

            using (SqlConnection con = new SqlConnection(conString))
            {
                SqlCommand cmd = new SqlCommand("insert into EmployeeMaster (firstname,lastname,email) values (firstname=@firstname, lastname=@lastname, email=@email)");
                cmd.Parameters.AddWithValue("@firstname",firstname);
                cmd.Parameters.AddWithValue("@lastname",lastname);
                cmd.Parameters.AddWithValue("@email",email);
                con.Open();
                cmd.ExecuteNonQuery();
            }
            BindGrid();

        }
    }
}