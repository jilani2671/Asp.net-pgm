using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace upload_iamge_display
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            if (fileUpload.HasFile)
            {
                try
                {
                    //string fileName = Path.GetFileName(fileUpload.PostedFile.FileName);
                    //string filePath = Server.MapPath("~/UploadedImages/") + fileName;
                    //fileUpload.SaveAs(filePath);
                    //imgUploaded.ImageUrl = "~/UploadedImages/" + fileName;
                    //imgUploaded.Visible = true;
                }
                catch (Exception ex)
                {
                    // Handle the error
                    // For simplicity, just display the error message in this example
                    Response.Write("Error: " + ex.Message);
                }
            }
        }
    }
}
