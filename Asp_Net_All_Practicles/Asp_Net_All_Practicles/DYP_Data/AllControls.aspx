<%@ Page Title="" Language="C#" MasterPageFile="~/DYP_Data/DYP-ATU_STUDMARKLIST.Master" AutoEventWireup="true" CodeBehind="AllControls.aspx.cs" Inherits="Asp_Net_All_Practicles.DYP_Data.AllControls" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Server Controls Demo</title>
</head>
<body>
    <form id="form1">
        <div align=center>
            <div>
            <h2>Textbox Control</h2>
            <asp:Label ID="lblName" runat="server" Text="Enter your name:"></asp:Label>
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            <br />
        </div>
        <hr />
        <div>
            <h2>List Controls</h2>
            <asp:Label ID="lblCountry" runat="server" Text="Select your country:"></asp:Label>
            <asp:DropDownList ID="ddlCountry" runat="server">
                <asp:ListItem>USA</asp:ListItem>
                <asp:ListItem>Canada</asp:ListItem>
                <asp:ListItem>UK</asp:ListItem>
                <asp:ListItem>Australia</asp:ListItem>
            </asp:DropDownList>
            <br />
        </div>
        <hr />
        <div>
            <h2>Calendar Control</h2>
            <asp:Label ID="lblDate" runat="server" Text="Select a date:"></asp:Label>
            <asp:Calendar ID="calendar" runat="server"></asp:Calendar>
        </div>
        <hr />
        <div>
            <h2>ImageButton Control</h2>
            <asp:ImageButton ID="imgButton" runat="server" 
                ImageUrl="~/DYP_Data/img/Laptop.jpg"  Height="141px" 
                Width="155px" />
            <br />
        </div>
        <hr />
        <div>
            <h2>LinkButton Control</h2>
            <asp:LinkButton ID="linkButton" runat="server" >Click Me</asp:LinkButton>
            <br />
        </div>
        </div>
    </form>
</body>
</html>
</asp:Content>
