using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace AllFinalDatabase.X_Tech_Final_Solutions
{
    public partial class CustomQueryPractice : System.Web.UI.Page
    {
        private string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["DYP_ATUConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindDropDownList();
            }
        }

        private void BindDropDownList()
        {
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT DISTINCT D.dname FROM employee E INNER JOIN departments D ON E.deptno = D.deptno", con))
                {
                    con.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    

                    DropDownList1.DataSource = reader;
                    DropDownList1.DataTextField = "dname";
                    DropDownList1.DataValueField = "dname";
                    DropDownList1.DataBind();
                }
            }
            DropDownList1.Items.Insert(0, new ListItem("Select Department", "0"));
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedValue != "0")
            {
                BindGridView(DropDownList1.SelectedValue);
            }
            else
            {
                GridView12.DataSource = null;
                GridView12.DataBind();
            }
        }

        private void BindGridView(string departmentName)
        {
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT E.empno, E.ename, E.city, D.dname, E.deptno, E.salary FROM employee E INNER JOIN departments D ON E.deptno = D.deptno WHERE D.dname = @dname", con))
                {
                    cmd.Parameters.AddWithValue("@dname", departmentName);
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        GridView12.DataSource = dt;
                        GridView12.DataBind();
                    }
                }
            }
        }
    }
}
/*
Explanation
Connection String:

The connectionString is fetched from the configuration file.
Page Load:

On the initial page load (!IsPostBack), the BindDropDownList method is called to populate the DropDownList with distinct department names.
BindDropDownList Method:

This method executes a SQL query to fetch distinct department names and binds the result to the DropDownList.
An initial "Select Department" item is added to prompt the user to make a selection.
DropDownList SelectedIndexChanged Event:

This event is triggered when the user selects a department.
If a valid department is selected (value is not "0"), the BindGridView method is called to fetch and display employee details for the selected department.
If the "Select Department" option is chosen, the GridView is cleared.
BindGridView Method:

This method executes a SQL query to fetch employee details based on the selected department name and binds the result to the GridView.
By handling the data binding in code-behind, you gain more control over the database operations and the flexibility to customize the logic as needed.

ScriptManager:

The ScriptManager control is essential for enabling AJAX on the page. It manages the client-side script for ASP.NET AJAX.
UpdatePanel:

The UpdatePanel control contains the DropDownList and GridView. It ensures that only the contents within the UpdatePanel are refreshed during an asynchronous postback.
AsyncPostBackTrigger:

The AsyncPostBackTrigger specifies that the DropDownList1 control triggers an asynchronous postback when the SelectedIndexChanged event occurs.
Summary
This setup allows you to use AJAX to update the GridView based on the DropDownList selection without reloading the entire page. The UpdatePanel ensures a smooth and partial update, providing a better user experience.




 
*/