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
    
    public partial class CRUD : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection();
            con.ConnectionString = "Data Source=DESKTOP-GFQT5FM\\SQLEXPRESS;Initial Catalog=DYP_ATU;Integrated Security=True";
            con.Open();

            if (!IsPostBack)
            {
                GridView1.DataBind();
            }

            
        }
        //private void BindGrid()
        //{
        //    SqlCommand cmd = new SqlCommand();
        //    cmd.Connection = con;
        //    cmd.CommandText = "select * from EmployeeMaster";

        //    da = new SqlDataAdapter(cmd);
        //    ds = new DataSet();
        //    da.Fill(ds, "s1");

        //    GridView1.DataSource = ds.Tables["s1"];
        //    GridView1.DataBind();
        //}

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "insert into EmployeeMaster(firstname,lastname,email) values('" + txtFirstName.Text + "','" + txtLastName.Text + "','" + txtEmail.Text + "')";
            cmd.ExecuteNonQuery();

            da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds, "s1");

            GridView1.DataSource = ds.Tables["s1"];
            GridView1.DataBind();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            int empid = Convert.ToInt32(txtEmpID.Text);
            cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "update EmployeeMaster set firstname = '" + txtFirstName.Text + "', lastname = '" + txtLastName.Text + "', email = '" + txtEmail.Text + "' where employeeid = " + txtEmpID.Text + "";
            cmd.ExecuteNonQuery();

            da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds, "s1");
        }
    }
}