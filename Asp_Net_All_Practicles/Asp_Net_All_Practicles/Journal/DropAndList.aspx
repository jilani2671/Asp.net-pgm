<%@ Page Title="" Language="C#" MasterPageFile="~/DYP_Data/DYP-ATU_STUDMARKLIST.Master" AutoEventWireup="true" CodeBehind="DropAndList.aspx.cs" Inherits="Asp_Net_All_Practicles.Journal.DropAndList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    <form id="form1">
        <div align=center>
             <!-- TextBoxes for input -->
            <br />
             <br />
            
             <asp:TextBox ID="TextBox1" runat="server" Placeholder="Enter first number"></asp:TextBox>
             <br />
             <br />
             
             <asp:TextBox ID="TextBox2" runat="server" Placeholder="Enter second number"></asp:TextBox>
            <br /><br />

            <!-- ListBox for selecting operations -->
            <asp:ListBox ID="ListBox1" runat="server" SelectionMode="Single">
                <asp:ListItem Text="Add" Value="Add"></asp:ListItem>
                <asp:ListItem Text="Remove" Value="Remove"></asp:ListItem>
                <asp:ListItem Text="Transfer" Value="Transfer"></asp:ListItem>
                <asp:ListItem Text="Edit" Value="Edit"></asp:ListItem>
            </asp:ListBox>
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnPerformOperation" runat="server" Text="Perform Operation" OnClick="btnPerformOperation_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ListBox ID="ListBox2" runat="server" SelectionMode="Single"></asp:ListBox>
            <br /><br />

            <!-- Buttons for operations -->
            <br /><br />

            <!-- ListBox for displaying results -->
        </div>
        <hr />
        <div align=center>
            <!-- TextBoxes for input -->
            <br />
            <asp:TextBox ID="TextBox3" runat="server" Placeholder="Enter first number"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="TextBox4" runat="server" Placeholder="Enter second number"></asp:TextBox>
            <br /><br />

            <!-- DropDownList for selecting operations -->
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem Text="Add" Value="Add"></asp:ListItem>
                <asp:ListItem Text="Remove" Value="Remove"></asp:ListItem>
                <asp:ListItem Text="Transfer" Value="Transfer"></asp:ListItem>
                <asp:ListItem Text="Edit" Value="Edit"></asp:ListItem>
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="ddlbtn" runat="server" onclick="ddlbtn_Click" 
                Text="Perform Operation" />
&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList2" runat="server"></asp:DropDownList>
            <br /><br />

            <!-- Button for performing operations -->
            <br /><br />

            <!-- DropDownList for displaying results -->
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
</asp:Content>
