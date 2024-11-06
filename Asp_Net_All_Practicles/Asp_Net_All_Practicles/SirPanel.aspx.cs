using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Asp_Net_All_Practicles
{
    public partial class SirPanel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel3.Visible = false;
            Panel4.Visible = false;  

            //Making the panel visible
            fPanel.Visible = panelChk.Checked;

            //generating the label control
            int n = Int32.Parse(ddlLbl.SelectedItem.Value);
            for (int i = 1; i <= n; i++)
            {
                Label lbl = new Label();
                lbl.Text = "Label" + (i).ToString();
                fPanel.Controls.Add(lbl);
                fPanel.Controls.Add(new LiteralControl("<br /><br />"));
            }

            int m = Int32.Parse(ddltxt.SelectedItem.Value);
            for (int i = 1; i <= m; i++)
            {
                TextBox txt = new TextBox();
                txt.Text = "TextBox" + (i).ToString();
                fPanel.Controls.Add(txt);
                fPanel.Controls.Add(new LiteralControl("<br /><br />"));
            }
        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (RadioButtonList1.SelectedIndex == 0)
            {
                Panel1.Visible = true;
            }
            if (RadioButtonList1.SelectedIndex == 1)
            {
                Panel2.Visible = true;
            }
            if (RadioButtonList1.SelectedIndex == 2)
            {
                Panel3.Visible = true;
            }
            if (RadioButtonList1.SelectedIndex == 3)
            {
                Panel4.Visible = true;
            }
            if (RadioButtonList1.SelectedIndex == 4)
            {

            }
        }
    }
}