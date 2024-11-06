<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="view_state.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>State Management Example</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>View State</h2>
            <asp:Label ID="lblViewState" runat="server" Text="View State: "></asp:Label>
            <asp:TextBox ID="txtViewState" runat="server"></asp:TextBox>
            <asp:Button ID="btnViewState" runat="server" Text="Save View State" OnClick="btnViewState_Click" />

            <h2>Session State</h2>
            <asp:Label ID="lblSessionState" runat="server" Text="Session State: "></asp:Label>
            <asp:TextBox ID="txtSessionState" runat="server"></asp:TextBox>
            <asp:Button ID="btnSessionState" runat="server" Text="Save Session State" OnClick="btnSessionState_Click" />

            <h2>Application State</h2>
            <asp:Label ID="lblApplicationState" runat="server" Text="Application State: "></asp:Label>
            <asp:TextBox ID="txtApplicationState" runat="server"></asp:TextBox>
            <asp:Button ID="btnApplicationState" runat="server" Text="Save Application State" OnClick="btnApplicationState_Click" />

            <h2>Retrieved Values</h2>
            <asp:Label ID="lblRetrievedValues" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
