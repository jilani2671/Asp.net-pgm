<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FetchingData.aspx.cs" Inherits="Asp_Net_All_Practicles.DYP_Data.FetchingData" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 23px;
        }
        .style3
        {
            height: 40px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
        <table class="style1">
            <tr>
                <td align="center" bordercolor="Black" class="style2" colspan="2">
                    DataBase Practical</td>
            </tr>
            <tr>
                <td align="center" bordercolor="Black" class="style3">
                    Roll no</td>
                <td align="center" bordercolor="Black" class="style3">
                    <asp:TextBox ID="txtRollNo" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" bordercolor="Black" class="style3">
                    Name</td>
                <td align="center" bordercolor="Black" class="style3">
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" bordercolor="Black" class="style3">
                    Course</td>
                <td align="center" bordercolor="Black" class="style3">
                    <asp:TextBox ID="txtCourse" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" bordercolor="Black" class="style3">
                    Fees</td>
                <td align="center" bordercolor="Black" class="style3">
                    <asp:TextBox ID="txtFees" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" bordercolor="Black" class="style3" colspan="2">
                    <br />
                    <asp:Button ID="btnFetch" runat="server" onclick="btnFetch_Click" Text="Show" />
                    <br />
                    <br />
                    <asp:GridView ID="GridView1" runat="server" CellPadding="5">
                    </asp:GridView>
                    <br />
                </td>
            </tr>
        </table>
        
    </div>
    </form>
</body>
</html>
