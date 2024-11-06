<%@ Page Title="" Language="C#" MasterPageFile="~/MS SQL Server/Final.Master" AutoEventWireup="true" CodeBehind="SPCRUD.aspx.cs" Inherits="AllFinalDatabase.MS_SQL_Server.SPCRUD" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style4
        {
            height: 60px;
        }
        .style5
        {
            height: 60px;
            width: 192px;
        }
        .style6
        {}
        .style7
        {
            height: 60px;
            width: 389px;
        }
        table,td
        {
            border:1px solid black;
            border-collapse:collapse;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <table class="style1">
        <tr>
            <td align="center" colspan="3">
                <br />
                <strong>CRUD Data Fetching Using Stored Procedure</strong><br />
                <br />
            </td>
        </tr>
        <tr>
            <td align="center" class="style5">
                <asp:Label ID="lblRollNo" runat="server" Text="Enter Stud Roll no."></asp:Label>
            </td>
            <td align="center" class="style7">
                <asp:TextBox ID="txtRollNo" runat="server" Height="32px" Width="247px" 
                    TextMode="Number"></asp:TextBox>
                <asp:Button ID="btnShow" runat="server" Height="37px" Text="Show" 
                    Width="57px" onclick="btnShow_Click" />
            </td>
            <td align="center" class="style4">
                <asp:Label ID="lblNoRollNo" runat="server" ForeColor="Red" Text="Label" 
                    Visible="False"></asp:Label>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtRollNo" ErrorMessage="Enter Roll No." ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="center" class="style6" colspan="3">
                <br />
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
                    GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                <br />
            </td>
        </tr>
    </table>
    
</asp:Content>
