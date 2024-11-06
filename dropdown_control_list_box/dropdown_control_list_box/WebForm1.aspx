<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="dropdown_control_list_box.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Dropdown and ListBox Operations</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>DropDownList Control</h2>
            <asp:DropDownList ID="ddlItems" runat="server"></asp:DropDownList>
            <asp:TextBox ID="txtNewItem" runat="server"></asp:TextBox>
            <asp:Button ID="btnAddToDropdown" runat="server" Text="Add to DropDownList" OnClick="btnAddToDropdown_Click" />
            <asp:Button ID="btnRemoveFromDropdown" runat="server" Text="Remove from DropDownList" OnClick="btnRemoveFromDropdown_Click" />
            <asp:Button ID="btnEditDropdownItem" runat="server" Text="Edit DropDownList Item" OnClick="btnEditDropdownItem_Click" />

            <h2>ListBox Control</h2>
            <asp:ListBox ID="lstBoxItems" runat="server" SelectionMode="Multiple"></asp:ListBox>
            <asp:Button ID="btnTransferToListbox" runat="server" Text="Transfer to ListBox" OnClick="btnTransferToListbox_Click" />
            <asp:Button ID="btnRemoveFromListbox" runat="server" Text="Remove from ListBox" OnClick="btnRemoveFromListbox_Click" />

            <h2>Transfer Selected Items</h2>
            <asp:Button ID="btnTransferToDropdown" runat="server" Text="Transfer to DropDownList" OnClick="btnTransferToDropdown_Click" />
        </div>
    </form>
</body>
</html>
