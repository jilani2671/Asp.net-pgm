<%@ Page Title="" Language="C#" MasterPageFile="~/MS SQL Server/Final.Master" AutoEventWireup="true" CodeBehind="CustomQueryPractice.aspx.cs" Inherits="AllFinalDatabase.X_Tech_Final_Solutions.CustomQueryPractice" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center">
      
                 <br />
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
        </asp:DropDownList>

        <br /><br />

        <asp:GridView ID="GridView12" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
            <Columns>
                <asp:BoundField DataField="empno" HeaderText="Emp No" />
                <asp:BoundField DataField="ename" HeaderText="Name" />
                <asp:BoundField DataField="city" HeaderText="City" />
                <asp:BoundField DataField="dname" HeaderText="Department" />
                <asp:BoundField DataField="deptno" HeaderText="Dept No" />
                <asp:BoundField DataField="salary" HeaderText="Salary" />
            </Columns>
        </asp:GridView>
        <br />
    </ContentTemplate>
    <Triggers>
        <asp:AsyncPostBackTrigger ControlID="DropDownList1" EventName="SelectedIndexChanged" />
    </Triggers>
</asp:UpdatePanel>

          
    </div>    
</asp:Content>
