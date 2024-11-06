<%@ Page Title="" Language="C#" MasterPageFile="~/DYP_Data/DYP-ATU_STUDMARKLIST.Master" AutoEventWireup="true" CodeBehind="MultiViewAndPanel.aspx.cs" Inherits="Asp_Net_All_Practicles.Journal.MultiViewAndPanel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    <form id="form1">
        <div align=center>
            <!-- Buttons to switch views -->
            
            
            
           <br /><br />
           <asp:Button ID="btnView1" runat="server" Text="Textbox Control" OnClick="btnView1_Click" />
            <br />
            <!-- MultiView control with multiple views -->
            <asp:MultiView ID="MultiView1" runat="server">
                <!-- View 1: Textbox Control -->
                <asp:View ID="View1" runat="server">
                    <asp:Panel ID="Panel1" runat="server" BackColor="LightGray">
                        <h2>Textbox Control</h2>
                        <asp:Label ID="lblName" runat="server" Text="Enter your name:"></asp:Label>
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                        <br />
                    </asp:Panel>
                </asp:View>
                </asp:MultiView>
                <br />
                <asp:Button ID="btnView2" runat="server" Text="List Controls" OnClick="btnView2_Click" />
                <br />
                <asp:MultiView ID="MultiView2" runat="server">
                <!-- View 2: List Controls -->
                <asp:View ID="View2" runat="server">
                    <asp:Panel ID="Panel2" runat="server" BackColor="LightBlue">
                        <h2>List Controls</h2>
                        <asp:Label ID="lblCountry" runat="server" Text="Select your country:"></asp:Label>
                        <asp:DropDownList ID="ddlCountry" runat="server">
                            <asp:ListItem>USA</asp:ListItem>
                            <asp:ListItem>Canada</asp:ListItem>
                            <asp:ListItem>UK</asp:ListItem>
                            <asp:ListItem>Australia</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                    </asp:Panel>
                </asp:View>
                </asp:MultiView>
                <br />
                <asp:Button ID="btnView3" runat="server" Text="ImageButton" OnClick="btnView3_Click" />
               <br />
               <asp:MultiView ID="MultiView3" runat="server">
                <!-- View 4: ImageButton Control -->
                <asp:View ID="View3" runat="server">
                    <asp:Panel ID="Panel4" runat="server" BackColor="LightCoral">
                        <h2>ImageButton Control</h2>
                        <asp:ImageButton ID="imgButton" runat="server" 
                            ImageUrl="~/DYP_Data/img/Laptop.jpg"  Height="141px" 
                            Width="155px" />
                        <br />
                    </asp:Panel>
                </asp:View>
                </asp:MultiView>

                
        </div>
        <br />
    </form>
</body>
</html>
</asp:Content>
