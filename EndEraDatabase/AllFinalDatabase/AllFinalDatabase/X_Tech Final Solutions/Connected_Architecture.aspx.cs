using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System;
using System.Data.SqlClient;

namespace AllFinalDatabase.X_Tech_Final_Solutions
{
    public partial class Connected_Architecture : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindData();
            }
        }

        private void BindData()
        {
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["DYP_ATUConnectionString"].ConnectionString;
            string query = "SELECT * FROM Employee";  

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand(query, connection);

                try
                {
                    connection.Open();
                    SqlDataReader reader = cmd.ExecuteReader();

                    GridView1.DataSource = reader;
                    GridView1.DataBind();

                    reader.Close();
                }
                catch (Exception ex)
                {
                    // Handle exception
                    Response.Write(ex.Message);
                }
                finally
                {
                    connection.Close();
                }
            }
        }
    }
}



