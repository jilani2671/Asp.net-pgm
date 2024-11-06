<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ajaxscriptmanager.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>AJAX Arithmetic Operations</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <div>
                    <h2>Arithmetic Operations</h2>
                    <asp:Label ID="Label1" runat="server" Text="Number 1: "></asp:Label>
                    <asp:TextBox ID="txtNumber1" runat="server"></asp:TextBox>
                    <br /><br />

                    <asp:Label ID="Label2" runat="server" Text="Number 2: "></asp:Label>
                    <asp:TextBox ID="txtNumber2" runat="server"></asp:TextBox>
                    <br /><br />

                    <asp:DropDownList ID="ddlOperation" runat="server">
                        <asp:ListItem Text="Addition" Value="Add"></asp:ListItem>
                        <asp:ListItem Text="Subtraction" Value="Subtract"></asp:ListItem>
                        <asp:ListItem Text="Multiplication" Value="Multiply"></asp:ListItem>
                        <asp:ListItem Text="Division" Value="Divide"></asp:ListItem>
                    </asp:DropDownList>
                    <br /><br />

                    <asp:Button ID="btnCalculate" runat="server" Text="Calculate" OnClick="btnCalculate_Click" />
                    <br /><br />

                    <asp:Label ID="lblResult" runat="server" Text="Result: " Font-Bold="True"></asp:Label>
                </div>
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="btnCalculate" EventName="Click" />
            </Triggers>
        </asp:UpdatePanel>

        <asp:Timer ID="Timer1" runat="server" Interval="10000" OnTick="Timer1_Tick">
        </asp:Timer>
    </form>
</body>
</html>
