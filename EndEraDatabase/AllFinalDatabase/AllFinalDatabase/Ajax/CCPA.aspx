<%@ Page Title="" Language="C#" MasterPageFile="~/MS SQL Server/Final.Master" AutoEventWireup="true" CodeBehind="CCPA.aspx.cs" Inherits="AllFinalDatabase.Ajax.CCPA" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align=center>
        <br />
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <strong>1.CalenderExtender<br />
        </strong>
        <br />
        Enter Date -
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        <strong>2.ColorPicker</strong><br />
        <br />
        Choose Color -
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <br />
        <strong>3.PasswordstrengthExtender</strong><br />
        <br />
        Create Password -
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br />
        <br />
        <strong>4.AutocompleteExtender</strong><br />
        <br />
        Select City -
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
        <ajaxToolkit:AutoCompleteExtender ID="TextBox4_AutoCompleteExtender" 
            runat="server" BehaviorID="TextBox4_AutoCompleteExtender" 
            DelimiterCharacters="1"  ServiceMethod="GetCities"  ServicePath="" TargetControlID="TextBox4">
        </ajaxToolkit:AutoCompleteExtender>
        <ajaxToolkit:PasswordStrength ID="TextBox3_PasswordStrength" runat="server" 
            BehaviorID="TextBox3_PasswordStrength" TargetControlID="TextBox3" />
        <ajaxToolkit:ColorPickerExtender ID="TextBox2_ColorPickerExtender" 
            runat="server" BehaviorID="TextBox2_ColorPickerExtender" 
            TargetControlID="TextBox2" />
        <br />
        <ajaxToolkit:CalendarExtender ID="CalendarExtender1" TargetControlID="TextBox1" runat="server" />
    </div>   
</asp:Content>
