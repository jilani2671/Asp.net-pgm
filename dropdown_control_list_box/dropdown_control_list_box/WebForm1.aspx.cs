using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



namespace dropdown_control_list_box
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Initial data for demonstration
                ddlItems.Items.Add(new ListItem("Item 1", "1"));
                ddlItems.Items.Add(new ListItem("Item 2", "2"));
                ddlItems.Items.Add(new ListItem("Item 3", "3"));
            }
        }

        protected void btnAddToDropdown_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(txtNewItem.Text))
            {
                ddlItems.Items.Add(new ListItem(txtNewItem.Text));
                txtNewItem.Text = string.Empty;
            }
        }

        protected void btnRemoveFromDropdown_Click(object sender, EventArgs e)
        {
            if (ddlItems.SelectedIndex != -1)
            {
                ddlItems.Items.RemoveAt(ddlItems.SelectedIndex);
            }
        }

        protected void btnEditDropdownItem_Click(object sender, EventArgs e)
        {
            if (ddlItems.SelectedIndex != -1 && !string.IsNullOrEmpty(txtNewItem.Text))
            {
                ddlItems.SelectedItem.Text = txtNewItem.Text;
                txtNewItem.Text = string.Empty;
            }
        }

        protected void btnTransferToListbox_Click(object sender, EventArgs e)
        {
            if (ddlItems.SelectedIndex != -1)
            {
                lstBoxItems.Items.Add(new ListItem(ddlItems.SelectedItem.Text, ddlItems.SelectedItem.Value));
                ddlItems.Items.RemoveAt(ddlItems.SelectedIndex);
            }
        }

        protected void btnRemoveFromListbox_Click(object sender, EventArgs e)
        {
            foreach (ListItem item in lstBoxItems.Items.Cast<ListItem>().Where(i => i.Selected).ToList())
            {
                lstBoxItems.Items.Remove(item);
            }
        }

        protected void btnTransferToDropdown_Click(object sender, EventArgs e)
        {
            foreach (ListItem item in lstBoxItems.Items.Cast<ListItem>().Where(i => i.Selected).ToList())
            {
                ddlItems.Items.Add(new ListItem(item.Text, item.Value));
                lstBoxItems.Items.Remove(item);
            }
        }
    }
}
