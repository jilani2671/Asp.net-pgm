<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="server_control.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Server Controls Example</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>TextBox</h2>
            <asp:TextBox ID="txtInput" runat="server"></asp:TextBox>

            <h2>List Controls</h2>
            <asp:DropDownList ID="ddlOptions" runat="server">
                <asp:ListItem Text="Option 1" Value="1"></asp:ListItem>
                <asp:ListItem Text="Option 2" Value="2"></asp:ListItem>
                <asp:ListItem Text="Option 3" Value="3"></asp:ListItem>
            </asp:DropDownList>

            <asp:ListBox ID="lstBox" runat="server" SelectionMode="Multiple">
                <asp:ListItem Text="Item 1" Value="1"></asp:ListItem>
                <asp:ListItem Text="Item 2" Value="2"></asp:ListItem>
                <asp:ListItem Text="Item 3" Value="3"></asp:ListItem>
            </asp:ListBox>

            <h2>Calendar</h2>
            <asp:Calendar ID="calendar" runat="server"></asp:Calendar>

            <h2>ImageButton</h2>
            <asp:ImageButton ID="imgButton" runat="server" ImageUrl="~/images/example.jpg" OnClick="imgButton_Click" />

            <h2>LinkButton</h2>
            <asp:LinkButton ID="linkButton" runat="server" OnClick="linkButton_Click">Click Me</asp:LinkButton>

            <h2>Output</h2>
            <asp:Label ID="lblOutput" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>

