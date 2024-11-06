<%@ Page Title="" Language="C#" MasterPageFile="~/DYP_Data/DYP-ATU_STUDMARKLIST.Master" AutoEventWireup="true" CodeBehind="StudentML1.aspx.cs" Inherits="Asp_Net_All_Practicles.StudentML1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        table,td
        {
            border:1px solid White;
            border-collapse:collapse;
        }
        .style4
        {
            height: 50px;
        }
        .style5
        {
            height: 46px;
        }
        .style6
        {
            height: 45px;
        }
        #bgdiv
        {
            background-image:url('/DYP_Data/img/DYP1.jpeg');
            background-size: 100% 100%;
            background-repeat:no-repeat;
            background-position:center;
            /*opacity:0.5;*/
            
        }
        #btnShow:hover
        {
            background-color:
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <html>
    <head>
        <title>Student Mark List</title>
    </head>
    <style>        .style7
        {
            height: 40px;
        }
        .style10
        {
            height: 40px;
            width: 158px;
        }
        .style11
        {
            height: 40px;
            width: 339px;
        }
        </style>
    <body>
    <div id="bgdiv">
        <table class="style1">
            <tr>
                <td align="center" class="style4" colspan="3" background="img/DYP1%20(1).jpeg" 
                    style="color: #FFFFFF">
                    DYP-ATU Student Mark List</td>
            </tr>
            <tr>
                <td align="center" class="style5" background="img/DYP1%20(1).jpeg" 
                    style="color: #FFFFFF">
                    <asp:Label ID="lblStudName" runat="server" Text="Stud Name"></asp:Label>
                </td>
                <td align="center" class="style5" background="img/DYP1%20(1).jpeg">
                    <asp:TextBox ID="txtStudName" runat="server" Width="230px"></asp:TextBox>
                </td>
                <td align="center" class="style5" background="img/DYP1%20(1).jpeg">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtStudName" ErrorMessage="Enter your name" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="center" class="style6" background="img/DYP1%20(1).jpeg" 
                    style="color: #FFFFFF">
                    <asp:Label ID="lblPrnno" runat="server" Text="Stud Prn no"></asp:Label>
                    .</td>
                <td align="center" class="style6" background="img/DYP1%20(1).jpeg">
                    <asp:TextBox ID="txtStudPrnno" runat="server" Width="230px" TextMode="Number"></asp:TextBox>
                </td>
                <td align="center" class="style6" background="img/DYP1%20(1).jpeg">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtStudPrnno" ErrorMessage="Enter your prn no." 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td align="center" class="style6" background="img/DYP1%20(1).jpeg" 
                    style="color: #FFFFFF">
                    <asp:Label ID="lblCourse" runat="server" Text="Stud Course"></asp:Label>
                </td>
                <td align="center" class="style6" background="img/DYP1%20(1).jpeg" 
                    style="color: #FFFFFF">
                    <asp:CheckBox ID="chkMCAPlain" runat="server" AutoPostBack="True" 
                        Text="MCA Plain" oncheckedchanged="chkMCAPlain_CheckedChanged" />
                    <asp:CheckBox ID="chkMcaSandwich" runat="server" AutoPostBack="True" 
                        Text="MCA Sandwich" oncheckedchanged="chkMcaSandwich_CheckedChanged" />
                </td>
                <td align="center" class="style6" background="img/DYP1%20(1).jpeg">
                </td>
            </tr>
            <tr>
                <td align="center" class="style6" background="img/DYP1%20(1).jpeg" 
                    style="color: #FFFFFF">
                    <asp:Label ID="lblYear" runat="server" Text="Year"></asp:Label>
                </td>
                <td align="center" class="style6" background="img/DYP1%20(1).jpeg" 
                    style="color: #FFFFFF">
                    <asp:CheckBox ID="chkFirstYear" runat="server" AutoPostBack="True" 
                        Text="First Year" oncheckedchanged="chkFirstYear_CheckedChanged" />
                    <asp:CheckBox ID="chkSecondYear" runat="server" AutoPostBack="True" 
                        Text="Second Year" oncheckedchanged="chkSecondYear_CheckedChanged" />
                </td>
                <td align="center" class="style6" background="img/DYP1%20(1).jpeg">
                </td>
            </tr>
            <tr>
                <td align="center" class="style6" background="img/DYP1%20(1).jpeg" 
                    style="color: #FFFFFF" colspan="3">
                    Subject Marks - </td>
            </tr>
        </table>
        <%--------------------------------------------------This is Panel1-----------------------------------------------------%>
        <asp:Panel ID="Panel1" runat="server" Visible="False">
            <table class="style1">
                <tr>
                    <td align="center" class="style7" style="color: #FFFFFF">
                        <asp:Label ID="lblWeb" runat="server" Text="Web Technology"></asp:Label>
                    </td>
                    <td align="center" class="style10">
                        <asp:TextBox ID="txtWeb" runat="server" TextMode="Number" Width="75px" 
                            MaxLength="100"></asp:TextBox>
                    </td>
                    <td align="center" class="style7" style="color: #FFFFFF">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="txtWeb" ErrorMessage="Enter your marks" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                        <br />
                        <asp:RangeValidator ID="RangeValidator1" runat="server" 
                            ControlToValidate="txtWeb" ErrorMessage="Enter marks between 0 to 100" 
                            ForeColor="Red" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td align="center" class="style7" style="color: #FFFFFF">
                        <asp:Label ID="lblRDBMS" runat="server" Text="RDBMS"></asp:Label>
                    </td>
                    <td align="center" class="style10">
                        <asp:TextBox ID="txtRDBMS" runat="server" Width="75px" TextMode="Number" 
                            MaxLength="100"></asp:TextBox>
                    </td>
                    <td align="center" class="style7" style="color: #FFFFFF">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                            ControlToValidate="txtRDBMS" ErrorMessage="Enter your marks" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RangeValidator ID="RangeValidator2" runat="server" 
                            ControlToValidate="txtRDBMS" ErrorMessage="Enter marks between 0 to 100" 
                            ForeColor="Red" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td align="center" class="style7" style="color: #FFFFFF">
                        <asp:Label ID="lblDataStructure" runat="server" Text="Data Structure"></asp:Label>
                    </td>
                    <td align="center" class="style10">
                        <asp:TextBox ID="txtDataStructure" runat="server" Width="75px" 
                            TextMode="Number" MaxLength="100"></asp:TextBox>
                    </td>
                    <td align="center" class="style7" style="color: #FFFFFF">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                            ControlToValidate="txtDataStructure" ErrorMessage="Enter your marks" 
                            ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RangeValidator ID="RangeValidator3" runat="server" 
                            ControlToValidate="txtDataStructure" 
                            ErrorMessage="Enter marks between 0 to 100" ForeColor="Red" MaximumValue="100" 
                            MinimumValue="0" Type="Integer"></asp:RangeValidator>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td align="center" class="style7" style="color: #FFFFFF">
                        <asp:Label ID="lblCloud" runat="server" Text="Cloud Computing"></asp:Label>
                    </td>
                    <td align="center" class="style10">
                        <asp:TextBox ID="txtCloud" runat="server" Width="75px" TextMode="Number" 
                            MaxLength="100"></asp:TextBox>
                    </td>
                    <td align="center" class="style7" style="color: #FFFFFF">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                            ControlToValidate="txtCloud" ErrorMessage="Enter your marks" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RangeValidator ID="RangeValidator4" runat="server" 
                            ControlToValidate="txtCloud" ErrorMessage="Enter marks between 0 to 100" 
                            ForeColor="Red" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td align="center" class="style7" style="color: #FFFFFF">
                        <asp:Label ID="lblJava" runat="server" Text="Adv. Java Programming"></asp:Label>
                    </td>
                    <td align="center" class="style10">
                        <asp:TextBox ID="txtJava" runat="server" Width="75px" TextMode="Number" 
                            MaxLength="100"></asp:TextBox>
                    </td>
                    <td align="center" class="style7" style="color: #FFFFFF">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                            ControlToValidate="txtJava" ErrorMessage="Enter your marks" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RangeValidator ID="RangeValidator5" runat="server" 
                            ControlToValidate="txtJava" ErrorMessage="Enter marks between 0 to 100" 
                            ForeColor="Red" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                        <br />
                    </td>
                </tr>
            </table>
            
        </asp:Panel>
        <%--------------------------------------------------This is Panel2-----------------------------------------------------%>
        <asp:Panel ID="Panel2" runat="server" Visible="False">
            <table class="style1">
                <tr>
                    <td align="center" class="style11" style="color: #FFFFFF">
                        <asp:Label ID="lblMAD" runat="server" Text="MAD"></asp:Label>
                    </td>
                    <td align="center" class="style10">
                        <asp:TextBox ID="txtMAD" runat="server" Width="75px" TextMode="Number" 
                            MaxLength="100"></asp:TextBox>
                    </td>
                    <td align="center" class="style7" style="color: #FFFFFF">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="txtMAD" ErrorMessage="Enter your marks" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RangeValidator ID="RangeValidator6" runat="server" 
                            ControlToValidate="txtMAD" ErrorMessage="Enter marks between 0 to 100" 
                            ForeColor="Red" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td align="center" class="style11" style="color: #FFFFFF">
                        <asp:Label ID="lblDWDM" runat="server" Text="DWDM"></asp:Label>
                    </td>
                    <td align="center" class="style10">
                        <asp:TextBox ID="txtDWDM" runat="server" Width="75px" TextMode="Number" 
                            MaxLength="100"></asp:TextBox>
                    </td>
                    <td align="center" class="style7" style="color: #FFFFFF">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ControlToValidate="txtDWDM" ErrorMessage="Enter your marks" 
                            ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RangeValidator ID="RangeValidator7" runat="server" 
                            ControlToValidate="txtDWDM" ErrorMessage="Enter marks between 0 to 100" 
                            ForeColor="Red" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td align="center" class="style11" style="color: #FFFFFF">
                        <asp:Label ID="lblPython" runat="server" Text="Python"></asp:Label>
                    </td>
                    <td align="center" class="style10">
                        <asp:TextBox ID="txtPython" runat="server" Width="75px" TextMode="Number" 
                            MaxLength="100"></asp:TextBox>
                    </td>
                    <td align="center" class="style7" style="color: #FFFFFF">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                            ControlToValidate="txtPython" ErrorMessage="Enter your marks" 
                            ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RangeValidator ID="RangeValidator8" runat="server" 
                            ControlToValidate="txtPython" ErrorMessage="Enter marks between 0 to 100" 
                            ForeColor="Red" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td align="center" class="style11" style="color: #FFFFFF">
                        <asp:Label ID="lblCSharp" runat="server" Text="Advance C#"></asp:Label>
                    </td>
                    <td align="center" class="style10">
                        <asp:TextBox ID="txtCSharp" runat="server" Width="75px" TextMode="Number" 
                            MaxLength="100"></asp:TextBox>
                    </td>
                    <td align="center" class="style7" style="color: #FFFFFF">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                            ControlToValidate="txtCSharp" ErrorMessage="Enter your marks" 
                            ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RangeValidator ID="RangeValidator9" runat="server" 
                            ControlToValidate="txtCSharp" ErrorMessage="Enter marks between 0 to 100" 
                            ForeColor="Red" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td align="center" class="style11" style="color: #FFFFFF">
                        <asp:Label ID="lblIOT" runat="server" Text="IOT"></asp:Label>
                    </td>
                    <td align="center" class="style10">
                        <asp:TextBox ID="txtIOT" runat="server" Width="75px" TextMode="Number" 
                            MaxLength="100"></asp:TextBox>
                    </td>
                    <td align="center" class="style7" style="color: #FFFFFF">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                            ControlToValidate="txtIOT" ErrorMessage="Enter your marks" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RangeValidator ID="RangeValidator10" runat="server" 
                            ControlToValidate="txtIOT" ErrorMessage="Enter marks between 0 to 100" 
                            ForeColor="Red" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                        <br />
                    </td>
                </tr>
            </table>
            
        </asp:Panel>
       <table class="style1">
            <tr>
                <td align="center" class="style4">
                        <asp:Button ID="btnShow" runat="server" Height="29px" onclick="btnShow_Click" 
                            Text="Show" Width="64px" />
                    </td>
            </tr>
        </table>
        </div>
    </body>
</html>
</asp:Content>
