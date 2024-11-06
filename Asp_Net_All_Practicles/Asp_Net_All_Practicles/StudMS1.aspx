<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudMS1.aspx.cs" Inherits="Asp_Net_All_Practicles.TestStudMarks" %>

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
            height: 55px;
            margin-left: 40px;
        }
        .style3
        {
            height: 55px;
        }
        table,td
        {
            border:1px solid black;
            border-collapse:collapse;
        }
        #Reset1
        {
            height: 26px;
            width: 61px;
        }
        .tablePanel
        {
            border-collapse:collapse;
        }
    </style>
</head>
<body bgcolor="#ffcccc">
    <form id="form1" runat="server">
    <div align="center">
        
        <table class="style1">
            <tr>
                <td align="center" colspan="3">
                    <br />
                    <strong>DYP-ATU Student Marklist<br />
                    </strong><br />
                </td>
            </tr>
            <tr>
                <td align="center" class="style3">
                    <strong>Stud name - </strong>
                </td>
                <td align="center" class="style3">
                    <asp:TextBox ID="txtSName" runat="server" Width="230px"></asp:TextBox>
                </td>
              <td align="center" class="style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" class="style3">
                    <strong>Stud prno - </strong>
                </td>
                <td align="center" class="style3">
                    <asp:TextBox ID="txtSPrno" runat="server" TextMode="Number" Width="230px"></asp:TextBox>
                </td>
                <td align="center" class="style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" class="style2">
                    <strong>Stud course - </strong>
                </td>
                <td align="center" class="style2">
                    <asp:CheckBox ID="chkMCAPlain" runat="server" AutoPostBack="True" 
                        Text="MCA Plain" oncheckedchanged="chkMCAPlain_CheckedChanged" />
&nbsp;&nbsp;&nbsp;
                    <asp:CheckBox ID="chkMCASand" runat="server" AutoPostBack="True" 
                        Text="MCA Sandwich" oncheckedchanged="chkMCASand_CheckedChanged" />
&nbsp;&nbsp;&nbsp;
                    </td>
                <td align="center" class="style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" class="style3">
                    <strong>Year - </strong>
                </td>
                <td align="center" class="style3">
                    <asp:CheckBox ID="chkFstYr" runat="server" AutoPostBack="True" 
                        Text="Ist Year" oncheckedchanged="chkFstYr_CheckedChanged" />
&nbsp;&nbsp;&nbsp;
                    <asp:CheckBox ID="chkSecYr" runat="server" AutoPostBack="True" 
                        Text="IInd Year" oncheckedchanged="chkSecYr_CheckedChanged" />
&nbsp;&nbsp;&nbsp;
                    </td>
                <td align="center" class="style3">
                    &nbsp;</td>
            </tr>
            </table>
        </div>
    </form>
</body>
</html>
