using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Asp_Net_All_Practicles
{
    public partial class Set_Image_Upload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(Server.MapPath("/img") + FileUpload1.FileName);
                Image1.ImageUrl = "/img" + FileUpload1.FileName;
                Label1.Text = "Image Uploaded Successfully!";
            }
            else
            {
                Label1.Text = "Select image first!";
            }
        }
    }
}