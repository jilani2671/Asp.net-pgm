using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;
using System.Web.Script.Services;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace AllFinalDatabase.Ajax

{
    public partial class CCPA : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        [WebMethod]
        [ScriptMethod]
        public static List<string> GetCities(string prefixText, int count)
        {
            List<string> cities = new List<string>();

            string connectionString = ConfigurationManager.ConnectionStrings["DYP_ATUConnectionString"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT DISTINCT City FROM Employee WHERE City LIKE @prefixText + '%'", conn))
                {
                    cmd.Parameters.AddWithValue("@prefixText", prefixText);
                    conn.Open();
                    using (SqlDataReader sdr = cmd.ExecuteReader())
                    {
                        while (sdr.Read())
                        {
                            cities.Add(sdr["City"].ToString());
                        }
                    }
                }
            }

            return cities;
        }
    }
}