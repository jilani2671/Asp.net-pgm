using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Asp_Net_All_Practicles.Journal
{
    public partial class DropAndList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnPerformOperation_Click(object sender, EventArgs e)
        {
            int firstNumber, secondNumber;

            if (string.IsNullOrEmpty(TextBox1.Text) || string.IsNullOrEmpty(TextBox2.Text))
            {
                ListBox2.Items.Clear();
                ListBox2.Items.Add("Please enter numbers in both textboxes");
                return;
            }

            firstNumber = Convert.ToInt32(TextBox1.Text);
            secondNumber = Convert.ToInt32(TextBox2.Text);

            if (ListBox1.SelectedItem == null)
            {
                ListBox2.Items.Clear();
                ListBox2.Items.Add("Please select an operation from ListBox1");
                return;
            }

            switch (ListBox1.SelectedItem.Value)
            {
                case "Add":
                    int additionResult = firstNumber + secondNumber;
                    ListBox2.Items.Add("Addition: " + additionResult.ToString());
                    break;

                case "Remove":
                    if (ListBox2.SelectedItem != null)
                    {
                        ListBox2.Items.Remove(ListBox2.SelectedItem);
                    }
                    else
                    {
                        ListBox2.Items.Clear();
                        ListBox2.Items.Add("No item selected in ListBox2 to remove");
                    }
                    break;

                case "Transfer":
                    ListBox2.Items.Clear();
                    ListBox2.Items.Add(TextBox1.Text);
                    ListBox2.Items.Add(TextBox2.Text);
                    break;

                case "Edit":
                    if (ListBox2.SelectedItem != null)
                    {
                        int selectedIndex = ListBox2.SelectedIndex;
                        ListBox2.Items.RemoveAt(selectedIndex);

                        if (!string.IsNullOrEmpty(TextBox1.Text) && !string.IsNullOrEmpty(TextBox2.Text))
                        {
                            string editedItem = TextBox1.Text + " " + TextBox2.Text;
                            ListBox2.Items.Insert(selectedIndex, editedItem);
                        }
                    }
                    else
                    {
                        ListBox2.Items.Clear();
                        ListBox2.Items.Add("Please select an item in ListBox2 to edit");
                    }
                    break;

                default:
                    ListBox2.Items.Clear();
                    ListBox2.Items.Add("Invalid operation selected");
                    break;
            }
        }

        protected void ddlbtn_Click(object sender, EventArgs e)
        {
            int firstNumber, secondNumber;

            if (string.IsNullOrEmpty(TextBox1.Text) || string.IsNullOrEmpty(TextBox2.Text))
            {
                DropDownList2.Items.Clear();
                DropDownList2.Items.Add(new ListItem("Please enter numbers in both textboxes"));
                return;
            }

            firstNumber = Convert.ToInt32(TextBox1.Text);
            secondNumber = Convert.ToInt32(TextBox2.Text);

            if (DropDownList1.SelectedItem == null)
            {
                DropDownList2.Items.Clear();
                DropDownList2.Items.Add(new ListItem("Please select an operation from DropDownList1"));
                return;
            }

            switch (DropDownList1.SelectedItem.Value)
            {
                case "Add":
                    int additionResult = firstNumber + secondNumber;
                    DropDownList2.Items.Add(new ListItem("Addition: " + additionResult.ToString()));
                    break;

                case "Remove":
                    if (DropDownList2.SelectedItem != null)
                    {
                        DropDownList2.Items.Remove(DropDownList2.SelectedItem);
                    }
                    else
                    {
                        DropDownList2.Items.Clear();
                        DropDownList2.Items.Add(new ListItem("No item selected in DropDownList2 to remove"));
                    }
                    break;

                case "Transfer":
                    DropDownList2.Items.Clear();
                    DropDownList2.Items.Add(new ListItem(TextBox1.Text));
                    DropDownList2.Items.Add(new ListItem(TextBox2.Text));
                    break;

                case "Edit":
                    if (DropDownList2.SelectedItem != null)
                    {
                        int selectedIndex = DropDownList2.SelectedIndex;
                        DropDownList2.Items.RemoveAt(selectedIndex);

                        if (!string.IsNullOrEmpty(TextBox1.Text) && !string.IsNullOrEmpty(TextBox2.Text))
                        {
                            string editedItem = TextBox1.Text + " " + TextBox2.Text;
                            DropDownList2.Items.Insert(selectedIndex, new ListItem(editedItem));
                        }
                    }
                    else
                    {
                        DropDownList2.Items.Clear();
                        DropDownList2.Items.Add(new ListItem("Please select an item in DropDownList2 to edit"));
                    }
                    break;

                default:
                    DropDownList2.Items.Clear();
                    DropDownList2.Items.Add(new ListItem("Invalid operation selected"));
                    break;
            }
        }
    }
}