<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="multiviewandpanel_control.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>MultiView and Panel Control Demo</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>MultiView Control</h2>
            <asp:MultiView ID="multiView" runat="server" ActiveViewIndex="0">
                <asp:View ID="view1" runat="server">
                    <h3>View 1</h3>
                    <p>This is the content of View 1.</p>
                </asp:View>
                <asp:View ID="view2" runat="server">
                    <h3>View 2</h3>
                    <p>This is the content of View 2.</p>
                </asp:View>
                <asp:View ID="view3" runat="server">
                    <h3>View 3</h3>
                    <p>This is the content of View 3.</p>
                </asp:View>
            </asp:MultiView>
            <asp:Button ID="btnView1" runat="server" Text="Show View 1" OnClick="btnView1_Click" />
            <asp:Button ID="btnView2" runat="server" Text="Show View 2" OnClick="btnView2_Click" />
            <asp:Button ID="btnView3" runat="server" Text="Show View 3" OnClick="btnView3_Click" />

            <h2>Panel Control</h2>
            <asp:Panel ID="panel1" runat="server" BackColor="LightGray" Width="300px" Height="200px">
                <h3>Panel Content</h3>
                <p>This is the content inside the panel.</p>
            </asp:Panel>
            <asp:Button ID="btnTogglePanel" runat="server" Text="Toggle Panel Visibility" OnClick="btnTogglePanel_Click" />
        </div>
    </form>
</body>
</html>
