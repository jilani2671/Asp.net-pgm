<%@ Page Title="" Language="C#" MasterPageFile="~/DYP_Data/DYP-ATU_STUDMARKLIST.Master" AutoEventWireup="true" CodeBehind="CRUD.aspx.cs" Inherits="Asp_Net_All_Practicles.DYP_Data.CRUD" %>
<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
            
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            
            <asp:TextBox ID="txtEmpID" runat="server" placeholder="Employee ID" 
                Height="30px" Width="190px"></asp:TextBox>
            <asp:TextBox ID="txtFirstName" runat="server" placeholder="First Name" 
                Height="30px" Width="190px"></asp:TextBox>
            <asp:TextBox ID="txtLastName" runat="server" placeholder="Last Name" 
                Height="30px" Width="190px"></asp:TextBox>
            <asp:TextBox ID="txtEmail" runat="server" placeholder="Email" Height="30px" 
                Width="190px"></asp:TextBox>
            <asp:Button ID="btnAdd" runat="server" Text="Add" Height="36px" Width="57px" 
                onclick="btnAdd_Click"/>
            <asp:Button ID="btnUpdate" runat="server" Text="Update" Height="36px" 
                Width="57px" onclick="btnUpdate_Click"/>
            <asp:Button ID="btnDelete" runat="server" Text="Delete" Height="36px" Width="57px"/>
            <br />
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
            <br />
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                DataSourceID="SqlDataSource1" DataTextField="employeeid" 
                DataValueField="employeeid">
            </asp:DropDownList>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:DYP_ATUConnectionString %>" 
                SelectCommand="SELECT DISTINCT employeeid FROM EmployeeMaster"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:DYP_ATUConnectionString %>" 
                SelectCommand="SELECT * FROM [EmployeeMaster] WHERE ([employeeid] = @employeeid)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="employeeid" 
                        PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:BoundField DataField="employeeid" HeaderText="employeeid" 
                        InsertVisible="False" ReadOnly="True" SortExpression="employeeid" />
                    <asp:BoundField DataField="firstname" HeaderText="firstname" 
                        SortExpression="firstname" />
                    <asp:BoundField DataField="lastname" HeaderText="lastname" 
                        SortExpression="lastname" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                </Columns>
            </asp:GridView>
            <br />
            <br />
        </div>
</asp:Content>
