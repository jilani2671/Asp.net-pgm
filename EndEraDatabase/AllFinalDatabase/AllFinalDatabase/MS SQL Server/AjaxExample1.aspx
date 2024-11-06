<%@ Page Title="" Language="C#" MasterPageFile="~/MS SQL Server/Final.Master" AutoEventWireup="true" CodeBehind="AjaxExample1.aspx.cs" Inherits="AllFinalDatabase.MS_SQL_Server.AjaxExample" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <table>
                    <tr>
                        <td>Number 1:</td>
                        <td><asp:TextBox ID="txtNumber1" runat="server" TextMode="Number"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>Number 2:</td>
                        <td><asp:TextBox ID="txtNumber2" runat="server" TextMode="Number"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>Operation:</td>
                        <td>
                            <asp:DropDownList ID="ddlOperation" runat="server">
                                <asp:ListItem Text="Add" Value="Add"></asp:ListItem>
                                <asp:ListItem Text="Subtract" Value="Subtract"></asp:ListItem>
                                <asp:ListItem Text="Multiply" Value="Multiply"></asp:ListItem>
                                <asp:ListItem Text="Divide" Value="Divide"></asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                   <tr>
                        <td>Result:</td>
                        <td><asp:Label ID="lblResult" runat="server"></asp:Label></td>
                    </tr>
                </table>
                <asp:Timer ID="Timer1" runat="server" Interval="5000" OnTick="Timer1_Tick"></asp:Timer>
            </ContentTemplate>
        </asp:UpdatePanel>
    
</asp:Content>
