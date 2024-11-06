<%@ Page Title="" Language="C#" MasterPageFile="~/DYP_Data/DYP-ATU_STUDMARKLIST.Master" AutoEventWireup="true" CodeBehind="DynamicContent.aspx.cs" Inherits="Asp_Net_All_Practicles.DYP_Data.DynamicContent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
    Enter text -
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <asp:Button ID="btnLoopText" runat="server" onclick="btnLoopText_Click" 
        Text="LoopText" />
    <asp:Panel ID="Panel1" runat="server">
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    </asp:Panel>

</asp:Content>
