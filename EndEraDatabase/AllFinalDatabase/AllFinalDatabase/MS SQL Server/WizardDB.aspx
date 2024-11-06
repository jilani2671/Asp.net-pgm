<%@ Page Title="" Language="C#" MasterPageFile="~/MS SQL Server/Final.Master" AutoEventWireup="true" CodeBehind="WizardDB.aspx.cs" Inherits="AllFinalDatabase.MS_SQL_Server.WizardDB" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="style1" border="1px solid black">
    <tr>
        <td align="center" colspan="3">
            <br />
            <strong>Student List</strong><br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:DYP_ATUConnectionString %>" 
                SelectCommand="SELECT * FROM [StudentMst]"></asp:SqlDataSource>
            <br />
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" AllowPaging="True" 
                AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="rollno" 
                DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="rollno" HeaderText="rollno" ReadOnly="True" 
                        SortExpression="rollno" />
                    <asp:BoundField DataField="sname" HeaderText="sname" SortExpression="sname" />
                    <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                    <asp:BoundField DataField="mobile" HeaderText="mobile" 
                        SortExpression="mobile" />
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="White" HorizontalAlign="Center" BackColor="#666666" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
            <br />
        </td>
    </tr>
    <tr>
        <td align="center" colspan="3">
            <br />
            <strong>Product List</strong><br />
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:DYP_ATUConnectionString %>" 
                SelectCommand="SELECT * FROM [ProductMst]"></asp:SqlDataSource>
            <br />
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" DataKeyNames="productid" DataSourceID="SqlDataSource2" 
                ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="productid" HeaderText="productid" ReadOnly="True" 
                        SortExpression="productid" />
                    <asp:BoundField DataField="productname" HeaderText="productname" 
                        SortExpression="productname" />
                    <asp:TemplateField HeaderText="productimg" SortExpression="productimg">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("productimg") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:ImageButton ID="ImageButton1" runat="server" Height="178px" 
                                ImageUrl='<%# Eval("productimg") %>' Width="176px" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
            <br />
        </td>
    </tr>
    <tr>
        <td align="center" colspan="3">
            <br />
            <strong>DropDownList From Database</strong><br />
            <br />
            Select city -
            <asp:DropDownList ID="DropDownList1" runat="server" 
                DataSourceID="SqlDataSource3" DataTextField="city" DataValueField="city">
            </asp:DropDownList>
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                ConnectionString="<%$ ConnectionStrings:DYP_ATUConnectionString %>" 
                SelectCommand="SELECT * FROM [StudentMst] WHERE (([city] = @city) AND ([city] = @city2))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="city" 
                        PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="DropDownList1" Name="city2" 
                        PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" DataKeyNames="rollno" DataSourceID="SqlDataSource3" 
                ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="rollno" HeaderText="rollno" ReadOnly="True" 
                        SortExpression="rollno" />
                    <asp:BoundField DataField="sname" HeaderText="sname" SortExpression="sname" />
                    <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                    <asp:BoundField DataField="mobile" HeaderText="mobile" 
                        SortExpression="mobile" />
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
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
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </td>
    </tr>
    <tr>
        <td align="center">
            &nbsp;</td>
        <td align="center">
            &nbsp;</td>
        <td align="center">
            &nbsp;</td>
    </tr>
</table>

</asp:Content>
