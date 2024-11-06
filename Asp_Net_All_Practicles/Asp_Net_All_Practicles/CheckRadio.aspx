<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CheckRadio.aspx.cs" Inherits="Asp_Net_All_Practicles.CheckRadio" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
    
        <strong>Checkbox Practical</strong><br />
        <br />
        <asp:CheckBox ID="chkEmail" runat="server" AutoPostBack="True" 
            oncheckedchanged="chkEmail_CheckedChanged" Text="Email" />
        <br />
        <asp:Label ID="lblEmail" runat="server" Text="Label" Visible="False"></asp:Label>
        <asp:TextBox ID="txtEmail" runat="server" Height="22px" Visible="False" 
            Width="189px"></asp:TextBox>
        <br />
        <br />
        <strong>Radiobox Practical</strong><br />
        <br />
        <strong>Select your payment card mode - </strong>
        <br />
        <br />
        <asp:RadioButton ID="radDebit" runat="server" AutoPostBack="True" GroupName="X" 
            oncheckedchanged="radDebit_CheckedChanged" Text="Debit card" />
        <asp:RadioButton ID="radCredit" runat="server" AutoPostBack="True" 
            GroupName="X" oncheckedchanged="radCredit_CheckedChanged" Text="Credit card" />
        <asp:RadioButton ID="radOther" runat="server" AutoPostBack="True" GroupName="X" 
            oncheckedchanged="radOther_CheckedChanged" Text=" Other card" />
        <asp:RadioButton ID="radNone" runat="server" AutoPostBack="True" GroupName="X" 
            oncheckedchanged="radNone_CheckedChanged" Text="None" />
        <br />
        <br />
        <asp:Label ID="lblRad" runat="server" Text="Label" Visible="False"></asp:Label>
        <asp:TextBox ID="txtRad" runat="server" Visible="False"></asp:TextBox>
        <br />
        <br />
        <asp:LinkButton ID="LinkButton1" runat="server" 
            PostBackUrl="~/Timer_LOGIC.aspx">Next</asp:LinkButton>
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
