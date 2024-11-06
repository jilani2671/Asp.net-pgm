<%@ Page Title="" Language="C#" MasterPageFile="~/DYP_Data/DYP-ATU_STUDMARKLIST.Master" AutoEventWireup="true" CodeBehind="AddUpDelGridData.aspx.cs" Inherits="Asp_Net_All_Practicles.DYP_Data.AddUpDelGridData" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <asp:TextBox ID="txtEmpID" runat="server" Height="23px" Width="185px" 
        placeholder="EmployeeId"></asp:TextBox>
    <asp:TextBox ID="txtfname" runat="server" Height="23px" Width="185px" 
        placeholder="First Name"></asp:TextBox>
    <asp:TextBox ID="txtlname" runat="server" Height="23px" Width="185px" 
        placeholder="Last Name"></asp:TextBox>
    <asp:TextBox ID="txtemail" runat="server" Height="23px" Width="" 
        placeholder="Email"></asp:TextBox>
    <asp:Button ID="btnAdd" runat="server" Height="29px" Text="Add" 
        Width="53px" onclick="btnAdd_Click" />
    <asp:Button ID="btnUpdate" runat="server" Height="29px" Text="Update" />
    <asp:Button ID="btnDelete" runat="server" Height="29px" Text="Delete" />
    <br />
    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
   <br />
    <br />
</asp:Content>
