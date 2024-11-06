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
    public partial class Disconnected_Architecture : System.Web.UI.Page
    {
        private DataSet dataSet;
        private SqlDataAdapter dataAdapter;
        private string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["DYP_ATUConnectionString"].ConnectionString;
        private string selectQuery = "SELECT * FROM Employee"; // Replace with your actual table name

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindData();
            }
            else
            {
                dataSet = (DataSet)ViewState["DataSet"];
                dataAdapter = (SqlDataAdapter)ViewState["DataAdapter"];
            }
        }

        private void BindData()
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                dataAdapter = new SqlDataAdapter(selectQuery, connection);

                // Define commands for insert, update, and delete
                SqlCommandBuilder commandBuilder = new SqlCommandBuilder(dataAdapter);

                dataSet = new DataSet();
                dataAdapter.Fill(dataSet, "Employee");

                GridView1.DataSource = dataSet.Tables["Employee"];
                GridView1.DataBind();

                ViewState["DataSet"] = dataSet;
                ViewState["DataAdapter"] = dataAdapter;
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                // Update the database with changes made to the DataSet
                dataAdapter.Update(dataSet, "Employee");

                connection.Close();
            }
        }
    }
}