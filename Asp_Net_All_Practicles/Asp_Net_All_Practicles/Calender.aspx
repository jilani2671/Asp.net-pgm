<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calender.aspx.cs" Inherits="Asp_Net_All_Practicles.Calender" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        #div1
        {
            border:2px solid red;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center" id="div1">
        
        <br />
        <strong>Demonstrate Calender Control in Asp.Net</strong><br />
        <br />
        <asp:Calendar ID="empCalender" runat="server" BackColor="#FF9999" 
            BorderColor="Black" BorderWidth="3px" Caption="Employee Calender" 
            Visible="False" onselectionchanged="empCalender_SelectionChanged"></asp:Calendar>
        <br />
        <strong>Employee Information</strong><br />
        <br />
        Emp DOB -
        <asp:TextBox ID="txtDOB" runat="server"></asp:TextBox>
        <asp:Button ID="btnDOB" class="btns" runat="server" Text="...." 
            onclick="btnDOB_Click" />
        <br />
        <asp:Panel ID="panelDOB" runat="server">
        </asp:Panel>
        <br />
        <br />
        Emp Join Date -
        <asp:TextBox ID="txtJoinDate" runat="server" Width="128px"></asp:TextBox>
        <asp:Button ID="btnJoinDate" class="btns" runat="server" Text="...." 
            onclick="btnJoinDate_Click" />
        <br />
        <asp:Panel ID="panelJoinDate" runat="server">
        </asp:Panel>
        <br />
        <br />
        Emp Contract Date -<asp:TextBox ID="txtContractDate" runat="server"></asp:TextBox>
        <asp:Button ID="btnContractDate" class="btns" runat="server" Text="...." 
            onclick="btnContractDate_Click" />
        <br />
        <asp:Panel ID="panelContractDate" runat="server">
        </asp:Panel>
        <br />
        
        
    </div>
    </form>
</body>
</html>
