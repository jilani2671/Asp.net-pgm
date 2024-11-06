using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace AllFinalDatabase.X_Tech_Final_Solutions
{
    public partial class Custom2 : System.Web.UI.Page
    {
        private string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["DYP_ATUConnectionString"].ConnectionString;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadEmployeeNames();
            }
        }
        private void LoadEmployeeNames()
        {
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("select empno,ename from Employee",con))
                {
                    con.Open();
                    SqlDataReader reader = cmd.ExecuteReader();

                    ddlEmployees.DataSource = reader;
                    ddlEmployees.DataTextField = "ename";
                    ddlEmployees.DataValueField = "empno";
                    ddlEmployees.DataBind();

                    ddlEmployees.Items.Insert(0, new ListItem("Select employee", "0"));
                    con.Close();
                }
            }
        }
    }
}
/*
Here requirements - 
    1.DropDownList
    2.Database
*/