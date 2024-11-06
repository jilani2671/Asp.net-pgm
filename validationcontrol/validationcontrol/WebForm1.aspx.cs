using System;
using System.Collections.Generic;
using System.Linq;
using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace validationcontrol
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            // Custom validation logic
            if (args.Value.Length > 5)
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }
    }
}
