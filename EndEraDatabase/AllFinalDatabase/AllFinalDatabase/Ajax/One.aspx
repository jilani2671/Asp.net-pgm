<%@ Page Title="" Language="C#" MasterPageFile="~/MS SQL Server/Final.Master" AutoEventWireup="true" CodeBehind="One.aspx.cs" Inherits="AllFinalDatabase.Ajax.One" %>
<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div align=center>
        <br />
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    
        <br />
    
        <asp:DropDownList ID="ddlDesignation" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlDesignation_SelectedIndexChanged">
        </asp:DropDownList>

        <br />

    <br />
        <rsweb:ReportViewer ID="ReportViewer1" runat="server" Height="189px" 
        Width="757px" BorderColor="#666666" BorderWidth="2px" Font-Bold="True" 
            Font-Names="Verdana" Font-Size="8pt" Visible="False">
        </rsweb:ReportViewer>
        <br />
        <br />
        <br />
        <br />
    </div>

</asp:Content>
