<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DBListView.aspx.cs" Inherits="Asp_Net_All_Practicles.DBListView" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
    
        <br />
        <strong>ListView Practical in Asp.net with Database Connectivity</strong><br />
        <br />
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [studDYP]"></asp:SqlDataSource>
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
