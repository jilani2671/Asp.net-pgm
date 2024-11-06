<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GettingStudMarks.aspx.cs" Inherits="Asp_Net_All_Practicles.GettingStudMarks" %>

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
            height: 57px;
        }
        .style6
        {
            width: 369px;
            font-weight: bold;
            height: 40px;
        }
        .style7
        {
            height: 40px;
        }
        table,td
        {
            border:1px solid black;
            border-collapse:collapse;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center" style="background-color: #CCFFFF">
    
    &nbsp;<br />
        <strong>Student Marklist Information</strong><br />
&nbsp;<table class="style1">
            <tr>
                <td align="center" class="style6">
                    Student name :</td>
                <td align="center" class="style7">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center" class="style6">
                    Student prno :</td>
                <td align="center" class="style7">
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center" class="style6">
                    Student course :</td>
                <td align="center" class="style7">
                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center" class="style6">
                    Student year :</td>
                <td align="center" class="style7">
                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center" class="style6">
                    Web Technology :</td>
                <td align="center" class="style7">
                    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center" class="style6">
                    RDBMS :
                </td>
                <td align="center" class="style7">
                    <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center" class="style6">
                    Data Structure :
                </td>
                <td align="center" class="style7">
                    <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center" class="style6">
                    Cloud Computing :
                </td>
                <td align="center" class="style7">
                    <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center" class="style6">
                    Adv. Java Programming :</td>
                <td align="center" class="style7">
                    <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center" class="style6">
                    Marks :</td>
                <td align="center" class="style7">
                    <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center" class="style6">
                    Total :</td>
                <td align="center" class="style7">
                    <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center" class="style6">
                    Percentage :</td>
                <td align="center" class="style7">
                    <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2" colspan="2" align="center">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Back" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
