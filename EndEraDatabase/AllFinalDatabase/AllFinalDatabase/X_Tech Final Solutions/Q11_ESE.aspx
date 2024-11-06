<%@ Page Title="" Language="C#" MasterPageFile="~/MS SQL Server/Final.Master" AutoEventWireup="true" CodeBehind="Q11_ESE.aspx.cs" Inherits="AllFinalDatabase.X_Tech_Final_Solutions.Q11_ESE" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div align=center>
    <h1>Display student information from database in grid view.</h1>
    <asp:Button ID="btnShow" runat="server" onclick="btnShow_Click" Text=" Show" />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat=server>
        
    </asp:GridView>
    <br />
</div>
</asp:Content>
