<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudMarkList.aspx.cs" Inherits="Asp_Net_All_Practicles.StudMarkList" %>

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
        .style4
        {
            height: 40px;
        }
        .style5
        {
            height: 50px;
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
                    <asp:TextBox ID="txtSName" runat="server" Width="230px" 
                        ></asp:TextBox>
                </td>
              <td align="center" class="style3">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtSName" ErrorMessage="Must Enter Name" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="center" class="style3">
                    <strong>Stud prno - </strong>
                </td>
                <td align="center" class="style3">
                    <asp:TextBox ID="txtSPrno" runat="server" Width="230px"  
                        MaxLength="13"  TextMode="Number" 
                       ></asp:TextBox>
                </td>
                <td align="center" class="style3">
                    <br />
                    <br />
                    <br />
                </td>
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
                </td>
            </tr>
            <tr>
                <td align="center" class="style3" colspan="3">
                    <strong>Subjects Marks - </strong>
                </td>
            </tr>
            <tr>
                <td align="center" class="style4">
                    <strong>Web Technology</strong></td>
                <td align="center" class="style4">
                    <asp:TextBox ID="txtWeb" runat="server" TextMode="Number" Width="75px"></asp:TextBox>
                </td>
                <td align="center" class="style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtWeb" ErrorMessage="Must Enter Marks" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RangeValidator ID="RangeValidator1" runat="server" 
                        ControlToValidate="txtWeb" ErrorMessage="Enter between 0 to 100" 
                        ForeColor="Red" MaximumValue="101" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td align="center" class="style4">
                    <strong>RDBMS</strong></td>
                <td align="center" class="style4">
                    <asp:TextBox ID="txtRDBMS" runat="server" TextMode="Number" Width="75px"></asp:TextBox>
                </td>
                <td align="center" class="style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txtRDBMS" ErrorMessage="Must Enter Marks" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RangeValidator ID="RangeValidator2" runat="server" 
                        ControlToValidate="txtRDBMS" ErrorMessage="Enter between 0 to 100" 
                        ForeColor="Red" MaximumValue="101" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td align="center" class="style4">
                    <strong>Data Structure</strong></td>
                <td align="center" class="style4">
                    <asp:TextBox ID="txtDS" runat="server" TextMode="Number" Width="75px"></asp:TextBox>
                </td>
                <td align="center" class="style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="txtDS" ErrorMessage="Must Enter Marks" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RangeValidator ID="RangeValidator3" runat="server" 
                        ControlToValidate="txtDS" ErrorMessage="Enter between 0 to 100" ForeColor="Red" 
                        MaximumValue="101" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td align="center" class="style4">
                    <strong>Cloud Computing</strong></td>
                <td align="center" class="style4">
                    <asp:TextBox ID="txtCloud" runat="server" TextMode="Number" Width="75px"></asp:TextBox>
                </td>
                <td align="center" class="style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="txtCloud" ErrorMessage="Must Enter Marks" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RangeValidator ID="RangeValidator4" runat="server" 
                        ControlToValidate="txtCloud" ErrorMessage="Enter between 0 to 100" 
                        ForeColor="Red" MaximumValue="101" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td align="center" class="style4">
                    <strong>Adv. Java Programing</strong></td>
                <td align="center" class="style4">
                    <asp:TextBox ID="txtJava" runat="server" TextMode="Number" Width="75px"></asp:TextBox>
                </td>
                <td align="center" class="style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="txtJava" ErrorMessage="Must Enter Marks" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RangeValidator ID="RangeValidator5" runat="server" 
                        ControlToValidate="txtJava" ErrorMessage="Enter between 0 to 100" 
                        ForeColor="Red" MaximumValue="101" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td align="center" class="style5" colspan="3" id="btnReset">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" 
                        Height="30px" Width="67px" />
                &nbsp;&nbsp;&nbsp;
                    <input id="Reset1" type="reset" value="reset" /></td>
            </tr>
        </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
    </div>
    </form>
</body>
</html>
