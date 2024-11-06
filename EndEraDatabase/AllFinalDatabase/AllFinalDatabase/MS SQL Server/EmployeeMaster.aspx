<%@ Page Title="" Language="C#" MasterPageFile="~/MS SQL Server/Final.Master" AutoEventWireup="true" CodeBehind="EmployeeMaster.aspx.cs" Inherits="AllFinalDatabase.MS_SQL_Server.EmployeeMaster" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <table class="style1">
        <tr>
            <td>
                <br />
                <div align="center">
                    <br />
                    <h1>CRUD Operation</h1><strong>Enter EmployeeId -</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:TextBox ID="txtEmployeeID" runat="server" placeholder="Employee ID"></asp:TextBox>
                    <br />
                    <br />
                    <strong>Enter Employee First Name -</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:TextBox ID="txtFirstName" runat="server" placeholder="First Name"></asp:TextBox>
                    <br />
                    <br />
                    <strong>Enter Employee Last Name -</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:TextBox ID="txtLastName" runat="server" placeholder="Last Name"></asp:TextBox>
                    <br />
                    <br />
                    <strong>Enter Employee Email -</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:TextBox ID="txtEmail" runat="server" placeholder="Email"></asp:TextBox>
                    <br />
                    <br />
                   <asp:Button ID="btnAdd" runat="server" Text="Add" onclick="btnAdd_Click" />
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:Button ID="btnUpdate" runat="server" Text="Update" 
                        onclick="btnUpdate_Click"/>
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:Button ID="btnDelete" runat="server" Text="Delete" 
                        onclick="btnDelete_Click" />
                    <br />
                    <br />
                   <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="true"></asp:GridView>
                    <br />
               </div><br />
            </td>
        </tr>
    </table>
    
</asp:Content>
