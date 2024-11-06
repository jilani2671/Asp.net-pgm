<%@ Page Title="" Language="C#" MasterPageFile="~/DYP_Data/DYP-ATU_STUDMARKLIST.Master" AutoEventWireup="true" CodeBehind="ViewStudML1.aspx.cs" Inherits="Asp_Net_All_Practicles.ViewStudML1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style type="text/css">
        table,td
        {
            border:1px solid White;
            border-collapse:collapse;
        }
        #bgdiv
        {
            background-image:url('/DYP_Data/img/DYP1.jpeg');
            background-size: 100% 100%;
            background-repeat:no-repeat;
            background-position:center;
            /*opacity:0.5;*/
        }
    .style4
    {
        height: 40px;
    }
    .style7
    {
        height: 50px;
    }
    .style9
    {
        height: 40px;
        width: 471px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Panel ID="Panel1" runat="server">
    <div align="center" id="bgdiv">
    
    &nbsp;<br />
        <strong style="color: #FFFFFF">Student Marklist Information</strong><br />
&nbsp;<table class="style1">
            <tr>
                <td align="center" class="style9" style="color: #FFFFFF">
                    Student name :</td>
                <td align="center" class="style4" style="color: #FFFFFF">
                    <asp:Label ID="lblName" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center" class="style9" style="color: #FFFFFF">
                    Student prn no :</td>
                <td align="center" class="style4" style="color: #FFFFFF">
                    <asp:Label ID="lblPrnno" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center" class="style9" style="color: #FFFFFF">
                    Student course :</td>
                <td align="center" class="style4" style="color: #FFFFFF">
                    <asp:Label ID="lblCourse" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center" class="style9" style="color: #FFFFFF">
                    Student year :</td>
                <td align="center" class="style4" style="color: #FFFFFF">
                    <asp:Label ID="lblYear" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center" class="style9" style="color: #FFFFFF">
                    <asp:Label ID="lblSub1" runat="server" Text="Label"></asp:Label>
                    &nbsp;:</td>
                <td align="center" class="style4" style="color: #FFFFFF">
                    <asp:Label ID="lblWeb" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center" class="style9" style="color: #FFFFFF">
                    <asp:Label ID="lblSub2" runat="server" Text="Label"></asp:Label>
                    &nbsp;:
                </td>
                <td align="center" class="style4" style="color: #FFFFFF">
                    <asp:Label ID="lblRDBMS" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center" class="style9" style="color: #FFFFFF">
                    <asp:Label ID="lblSub3" runat="server" Text="Label"></asp:Label>
                    &nbsp;:
                </td>
                <td align="center" class="style4" style="color: #FFFFFF">
                    <asp:Label ID="lblDataStructure" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center" class="style9" style="color: #FFFFFF">
                    <asp:Label ID="lblSub4" runat="server" Text="Label"></asp:Label>
                    &nbsp;:
                </td>
                <td align="center" class="style4" style="color: #FFFFFF">
                    <asp:Label ID="lblCloud" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center" class="style9" style="color: #FFFFFF">
                    &nbsp;<asp:Label ID="lblSub5" runat="server" Text="Label"></asp:Label>
                    &nbsp;:</td>
                <td align="center" class="style4" style="color: #FFFFFF">
                    <asp:Label ID="lblJava" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center" class="style9" style="color: #FFFFFF">
                    Marks :</td>
                <td align="center" class="style4" style="color: #FFFFFF">
                    <asp:Label ID="lblMarks" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center" class="style9" style="color: #FFFFFF">
                    Total :</td>
                <td align="center" class="style4" style="color: #FFFFFF">
                    <asp:Label ID="lblTotal" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center" class="style9" style="color: #FFFFFF">
                    Percentage :</td>
                <td align="center" class="style4" style="color: #FFFFFF">
                    <asp:Label ID="lblPercentage" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center" class="style9" style="color: #FFFFFF">
                    <asp:Label ID="lblResult" runat="server" Text="Result"></asp:Label>
                    &nbsp;:</td>
                <td align="center" class="style4" style="color: #FFFFFF">
                    <asp:Label ID="lblPassFail" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center" class="style7" style="color: #FFFFFF" colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnBack0" runat="server" onclick="btnBack_Click" Text="Back" 
                        Height="31px" Width="57px" />
                    </td>
            </tr>
           
        </table>
        
    </div>
    </asp:Panel>

</asp:Content>
