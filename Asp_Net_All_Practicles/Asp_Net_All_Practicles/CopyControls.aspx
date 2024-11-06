<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CopyControls.aspx.cs" Inherits="Asp_Net_All_Practicles.CopyControls" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
         
        <strong>Data from one control to another control</strong><br />
        <br />
        Txt1 - 
        <asp:TextBox ID="txt1" runat="server"></asp:TextBox>
        <br />
        <br />
       Txt2 - <asp:TextBox ID="txt2" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnSend" runat="server" onclick="btnSend_Click" Text="Send" />
        <br />
         
    </div>
    </form>
</body>
</html>
