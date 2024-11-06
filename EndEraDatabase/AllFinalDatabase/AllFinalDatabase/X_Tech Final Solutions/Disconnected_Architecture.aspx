<%@ Page Title="" Language="C#" MasterPageFile="~/MS SQL Server/Final.Master" AutoEventWireup="true" CodeBehind="Disconnected_Architecture.aspx.cs" Inherits="AllFinalDatabase.X_Tech_Final_Solutions.Disconnected_Architecture" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align=center>
        <br />
        <h3>Display Employee Data Using ADO.NET Disconnected Architecture</h3>
        <br />
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
        <br />
    </div>
</asp:Content>
