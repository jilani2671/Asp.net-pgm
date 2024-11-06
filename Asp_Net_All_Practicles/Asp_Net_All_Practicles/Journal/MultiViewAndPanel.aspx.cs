using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Asp_Net_All_Practicles.Journal
{
    public partial class MultiViewAndPanel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void btnView1_Click(object sender, EventArgs e)
        {
            MultiView1.SetActiveView(View1);
        }

        protected void btnView2_Click(object sender, EventArgs e)
        {
            MultiView2.SetActiveView(View2);
        }

        protected void btnView3_Click(object sender, EventArgs e)
        {
            MultiView3.SetActiveView(View3);
        }
    }
}