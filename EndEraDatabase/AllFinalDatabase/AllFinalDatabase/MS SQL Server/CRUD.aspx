<%@ Page Title="" Language="C#" MasterPageFile="~/MS SQL Server/Final.Master" AutoEventWireup="true" CodeBehind="CRUD.aspx.cs" Inherits="AllFinalDatabase.MS_SQL_Server.CRUD" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style4
        {
            height: 40px;
        }
        .style5
        {
            height: 40px;
            font-weight: bold;
        }
        .style6
        {
            height: 50px;
        }
        table
        {
            border:1px solid black;
            border-collapse:collapse;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <table class="style1" border= 1px solid black>
        <tr>
            <td align="center" colspan="2">
                <br />
                <strong>CRUD Operation on StudentMst Table</strong><br />
                <br />
            </td>
        </tr>
        <tr>
            <td align="center" class="style5">
                <asp:Label ID="lblStudRollno" runat="server" Text="Student Roll no."></asp:Label>
            </td>
            <td align="center" class="style4">
                <asp:TextBox ID="txtStudRollNo" runat="server" Height="30px" Width="200px" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" class="style5">
                <asp:Label ID="lblStudName" runat="server" Text="Student Name"></asp:Label>
            </td>
            <td align="center" class="style4">
                <asp:TextBox ID="txtStudName" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" class="style5">
                <asp:Label ID="lblStudCity" runat="server" Text="Student City Name"></asp:Label>
            </td>
            <td align="center" class="style4">
                <asp:TextBox ID="txtStudCity" runat="server" Height="30px" Width="200px" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" class="style5">
                <asp:Label ID="lblStudMobileNo" runat="server" Text="Student Mobile no."></asp:Label>
            </td>
            <td align="center" class="style4">
                <asp:TextBox ID="txtStudMobileNo" runat="server" Height="30px" Width="200px" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" class="style6" colspan="2">
                <asp:Button ID="btnInsert" runat="server" Text="Insert" 
                    onclick="btnInsert_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnUpdate" runat="server" Text="Update" 
                    onclick="btnUpdate_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnDelete" runat="server" Text="Delete" 
                    onclick="btnDelete_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
        </tr>
        <tr>
            <td align="center" class="style4" colspan="2">
                <br />
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
                    GridLines="None" Height="194px" Width="398px">
                    <AlternatingRowStyle BackColor="White" />
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
                <br />
            </td>
        </tr>
    </table>
    
</asp:Content>
