<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Timer_LOGIC.aspx.cs" Inherits="Asp_Net_All_Practicles.Timer_LOGIC" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
        
        <br />
        
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
            <br />
            <strong>Web page to display logged in time and current time.</strong><br />
                <br />
                Logged in -
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
<br />
<br />
                Current time -
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Show time" />
                <br />
<br />
                <br />
                <br />
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/CheckRadio.aspx">Back</asp:HyperLink>
                <br />
                <br />
            </ContentTemplate>
        </asp:UpdatePanel>
        <br />
        
    </div>
    </form>
</body>
</html>
