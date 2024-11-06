<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Trying.aspx.cs" Inherits="Asp_Net_All_Practicles.Trying" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
        
        <br />
        Fetching data from HomeDB<br />
        <br />
        Todays Date:
        <asp:Label ID="lblDate" runat="server" Text="Label"></asp:Label>
&nbsp;
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Date" />
        <br />
        <br />
        Enter your rollno -
        <asp:TextBox ID="TextBox1" runat="server" Height="33px" Width="153px"></asp:TextBox>
        <br />
        <br />
        Enter Names -
        <asp:TextBox ID="txtName" runat="server" Height="37px" Width="200px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnName" runat="server" onclick="btnName_Click" Text="EName" />
        <br />
        <br />
        <asp:Button ID="btnshow" runat="server" onclick="btnshow_Click" Text="Show" />
        <br />
        <br />
        <asp:Label ID="lblValid" runat="server" Text="Label" Visible="False"></asp:Label>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" Height="113px" Width="271px">
        </asp:GridView>
        <br />
        Names -
        <asp:DropDownList ID="DropDownList1" runat="server" 
            DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [studDYP]"></asp:SqlDataSource>
        <br />
        <br />
        
    </div>
    </form>
</body>
</html>
