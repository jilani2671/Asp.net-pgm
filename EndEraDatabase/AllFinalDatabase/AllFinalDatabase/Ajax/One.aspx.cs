using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Microsoft.Reporting.WebForms;
using System.Configuration;


namespace AllFinalDatabase.Ajax
{
    public partial class One : System.Web.UI.Page
    {
        string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["DYP_ATUConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadDesignations();
                
            }
            if (IsPostBack)
            {
                ReportViewer1.Visible = true;
            }
        }
        private void LoadDesignations()
        {
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand("SELECT DISTINCT designation FROM employee", con);
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();

                ddlDesignation.DataSource = dr;
                ddlDesignation.DataTextField = "designation";
                ddlDesignation.DataValueField = "designation";
                ddlDesignation.DataBind();

                ddlDesignation.Items.Insert(0, new ListItem("Select Designation", "0"));
            }
        }

        protected void ddlDesignation_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlDesignation.SelectedValue != "0")
            {
                LoadReport(ddlDesignation.SelectedValue);
            }
        }
        private void LoadReport(string designation)
        {
            DataTable dt = GetEmployeeDataByDesignation(designation);

            ReportDataSource rds = new ReportDataSource("DataSet1", dt); 

            ReportViewer1.LocalReport.DataSources.Clear();
            ReportViewer1.LocalReport.DataSources.Add(rds);
            ReportViewer1.LocalReport.ReportPath = Server.MapPath("~/Ajax/Report1.rdlc"); 
            ReportViewer1.LocalReport.Refresh();
        }

        private DataTable GetEmployeeDataByDesignation(string designation)
        {
            DataTable dt = new DataTable();
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT empno,ename,city,mobileno,dob,designation,deptno,salary FROM employee WHERE designation = @designation", con))
                {
                    cmd.Parameters.AddWithValue("@designation", designation);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    da.Fill(dt);
                }
            }
            return dt;
        }
    }
}