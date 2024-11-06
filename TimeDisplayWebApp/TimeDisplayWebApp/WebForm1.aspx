<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TimeDisplayWebApp.Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Time Display</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Logged Time: 
            <asp:TextBox ID="txtLoggedTime" runat="server" ReadOnly="true"></asp:TextBox>
            <br />
            Current Time: 
            <asp:TextBox ID="txtCurrentTime" runat="server" ReadOnly="true"></asp:TextBox>
            <br />
            <asp:Button ID="btnRefresh" runat="server" Text="Refresh Current Time" OnClick="btnRefresh_Click" />
        </div>
    </form>
</body>
</html>

