<%@ Page Title="" Language="C#" MasterPageFile="~/MS SQL Server/Final.Master" AutoEventWireup="true" CodeBehind="Q1Ajax.aspx.cs" Inherits="AllFinalDatabase.Ajax.Q1Ajax" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align=center style="background-color: #FFCCCC">
        <br />
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <br />
                <asp:Timer ID="Timer1" runat="server" OnTick="getTimer" Interval="5000">
                </asp:Timer>
                <br />
                Page Load Timer - 
                <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                <br />
                <br />
                Current Load Timer -<asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                
            </ContentTemplate>
            
        </asp:UpdatePanel>
        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
            <ContentTemplate>
                <br />
                <br />
                Enter first number - 
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <br />
                <br />
                Enter Second number - 
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="btnAO" runat="server" Text="Result" onclick="btnAO_Click" />    
                <br />
                <br />
                <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                    <ProgressTemplate>
                        <asp:Label ID="progressLabel" runat="server" Text="Please wait..."></asp:Label>
                    </ProgressTemplate>
                </asp:UpdateProgress>
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                &nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                &nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                &nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>

                <br />
                <br />
                <br />

            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</asp:Content>
