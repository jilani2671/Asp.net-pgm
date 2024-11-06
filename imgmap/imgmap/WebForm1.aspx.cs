using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace imgmap
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void imgMapKolhapur_Click(object sender, ImageMapEventArgs e)
        {
            switch (e.PostBackValue)
            {
                case "MahalaxmiTemple":
                    lblSelectedLocation.Text = "You clicked on Mahalaxmi Temple.";
                    break;
                case "RankalaLake":
                    lblSelectedLocation.Text = "You clicked on Rankala Lake.";
                    break;
                case "PanhalaFort":
                    lblSelectedLocation.Text = "You clicked on Panhala Fort.";
                    break;
                default:
                    lblSelectedLocation.Text = "Unknown location.";
                    break;
            }
        }
    }
}
