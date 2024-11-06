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
    public partial class Q11_ESE : System.Web.UI.Page
    {
        private string connectionString1 = System.Configuration.ConfigurationManager.ConnectionStrings["DYP_ATUConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnShow_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(connectionString1))
            {
                SqlCommand cmd = new SqlCommand("select * from StudentMst",con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                GridView1.DataSource = dt;
                GridView1.DataBind();

            }
        }
    }
}