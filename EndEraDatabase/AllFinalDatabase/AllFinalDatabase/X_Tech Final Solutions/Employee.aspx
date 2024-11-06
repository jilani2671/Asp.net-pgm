<%@ Page Title="" Language="C#" MasterPageFile="~/MS SQL Server/Final.Master" AutoEventWireup="true" CodeBehind="Employee.aspx.cs" Inherits="AllFinalDatabase.MS_SQL_Server.Employee" %>

<%@ Register Assembly="System.Web.Extensions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI" TagPrefix="asp" %>
<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        table,td
        {
            border:1px solid white;
            border-collapse:collapse;
        }
        
        .style4
        {
            height: 21px;
        }
        #GridView1
        {
            text-align:center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <table class="style1" style="color: #FFFFFF; background-color: #000000;">
        <tr>
            <td align="center" class="style4">
            <p>&nbsp;</p>
                <p><strong>2. Display employee information empNo, Ename, deptname, salary, photo, employee in gridview.</strong></p>
                <p>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:DYP_ATUConnectionString %>" 
                        SelectCommand="SELECT e.empNo, e.Ename, d.dname, e.salary, e.photo 
                                       FROM Employee e
                                       INNER JOIN Departments d ON e.deptno = d.deptno">
                    </asp:SqlDataSource>
                </p>
                <p>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" DataKeyNames="EmpNo" DataSourceID="SqlDataSource1" 
                        BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px">
                        <Columns>
                            <asp:BoundField DataField="EmpNo" HeaderText="EmpNo" ReadOnly="True" 
                                SortExpression="EmpNo" />
                            <asp:BoundField DataField="Ename" HeaderText="Ename" SortExpression="Ename" />
                            <asp:BoundField DataField="dname" HeaderText="Department Name" />
                            <asp:BoundField DataField="Salary" HeaderText="Salary" 
                                SortExpression="Salary" />
                            <asp:TemplateField HeaderText="Photo" SortExpression="Photo">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Photo") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:ImageButton ID="ImageButton1" runat="server" Height="103px" 
                                        ImageUrl='<%# Eval("Photo") %>' Width="116px" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                        <RowStyle BackColor="White" ForeColor="#330099" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                        <SortedAscendingCellStyle BackColor="#FEFCEB" />
                        <SortedAscendingHeaderStyle BackColor="#AF0101" />
                        <SortedDescendingCellStyle BackColor="#F6F0C0" />
                        <SortedDescendingHeaderStyle BackColor="#7E0000" />
                    </asp:GridView>
                </p>
                
            </td>
        </tr>
        <tr>
            <td align="center" class="style4">
                <br />
                <p><strong>3. Display information of employee for selected department in gridview.
                </strong></p>
                <asp:Label ID="Label1" runat="server" Text="Select Employee Department - "></asp:Label>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource8" DataTextField="dname" DataValueField="dname">
                </asp:DropDownList>
                <br />

                <br />
                <asp:SqlDataSource ID="SqlDataSource8" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:DYP_ATUConnectionString %>" 
                    
                    SelectCommand="select distinct d.dname from employee E inner join departments D 
                                   on E.deptno = D.deptno ">
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource9" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:DYP_ATUConnectionString %>" 
                    SelectCommand="select E.empno,E.ename,E.city,D.dname,E.deptno,E.salary from employee E 
                                   inner join departments D on E.deptno = D.deptno where d.dname = @dname">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="dname" 
                            PropertyName="SelectedValue" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:GridView ID="GridView12" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="4" DataKeyNames="empno" DataSourceID="SqlDataSource9">
                    <Columns>
                        <asp:BoundField DataField="empno" HeaderText="empno" ReadOnly="True" 
                            SortExpression="empno" />
                        <asp:BoundField DataField="ename" HeaderText="ename" SortExpression="ename" />
                        <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                        <asp:BoundField DataField="dname" HeaderText="dname" SortExpression="dname" />
                        <asp:BoundField DataField="deptno" HeaderText="deptno" 
                            SortExpression="deptno" />
                        <asp:BoundField DataField="salary" HeaderText="salary" 
                            SortExpression="salary" />
                    </Columns>
                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#330099" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                    <SortedAscendingCellStyle BackColor="#FEFCEB" />
                    <SortedAscendingHeaderStyle BackColor="#AF0101" />
                    <SortedDescendingCellStyle BackColor="#F6F0C0" />
                    <SortedDescendingHeaderStyle BackColor="#7E0000" />
                </asp:GridView>

                <br />
                
            </td>
        </tr>
        <tr>
            <td align="center" class="style4">
                <br />
                <strong><p>4. Display EmpNo, Ename, DeptName, salary for all employee</p></strong>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server"
                        ConnectionString="<%$ ConnectionStrings:DYP_ATUConnectionString %>" 
                        SelectCommand="SELECT e.empNo, e.Ename, d.dname, e.salary 
                                       FROM Employee e
                                       INNER JOIN Departments d ON e.deptno = d.deptno">
                    </asp:SqlDataSource>
                <br />
                <asp:GridView ID="GridView3" runat="server" BackColor="White" 
                    BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                    DataSourceID="SqlDataSource3">
                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#330099" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                    <SortedAscendingCellStyle BackColor="#FEFCEB" />
                    <SortedAscendingHeaderStyle BackColor="#AF0101" />
                    <SortedDescendingCellStyle BackColor="#F6F0C0" />
                    <SortedDescendingHeaderStyle BackColor="#7E0000" />
                </asp:GridView>
                <br />
                
            </td>
        </tr>
        <tr>
            <td align="center" class="style4">
                <br />
                <strong><p>5. Display Employee information who are from City Kolhapur</p></strong>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server"
                    ConnectionString="<%$ ConnectionStrings:DYP_ATUConnectionString %>" 
                    SelectCommand="SELECT empno,Ename,city,deptno,designation FROM employee where city = 'kolhapur'">
                </asp:SqlDataSource>
                <br />
                <asp:GridView ID="GridView4" runat="server" BackColor="White" 
                    BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                    DataSourceID="SqlDataSource4">
                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#330099" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                    <SortedAscendingCellStyle BackColor="#FEFCEB" />
                    <SortedAscendingHeaderStyle BackColor="#AF0101" />
                    <SortedDescendingCellStyle BackColor="#F6F0C0" />
                    <SortedDescendingHeaderStyle BackColor="#7E0000" />
                </asp:GridView>
                <br />
                
            </td>
        </tr>
        <tr>
            <td align="center" class="style4">
                <br />
                <strong><p>6. Display employee information whose dept=’HR’ and Salary &gt;50000.</p></strong>
                <asp:SqlDataSource ID="SqlDataSource5" runat="server"
                    ConnectionString="<%$ ConnectionStrings:DYP_ATUConnectionString %>"
                    SelectCommand = "select e.empno,e.ename,d.dname,e.salary
                                     from Employee e
                                     Inner Join Departments d
                                     On e.DeptNo = d.DeptNo where d.DName = 'HR' and e.Salary > 50000;"
                ></asp:SqlDataSource>
                <br />
                <asp:GridView ID="GridView5" runat="server" BackColor="White" 
                    BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                    DataSourceID="SqlDataSource5">
                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#330099" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                    <SortedAscendingCellStyle BackColor="#FEFCEB" />
                    <SortedAscendingHeaderStyle BackColor="#AF0101" />
                    <SortedDescendingCellStyle BackColor="#F6F0C0" />
                    <SortedDescendingHeaderStyle BackColor="#7E0000" />
                </asp:GridView>
                <br />
                <br />
                
            </td>
        </tr>
        <tr>
            <td align="center" class="style4">
                <strong><p>&nbsp;</p>
                <p>9. Display total employees in company. </p></strong>
                <asp:SqlDataSource ID="SqlDataSource6" runat="server"
                        ConnectionString="<%$ ConnectionStrings:DYP_ATUConnectionString %>"
                        SelectCommand = "select count(Ename) As Total_Employees_in_Company from Employee;"
                    
                ></asp:SqlDataSource>
                <br />
                <asp:GridView ID="GridView6" runat="server" BackColor="White" 
                    BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                    DataSourceID="SqlDataSource6">
                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#330099" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                    <SortedAscendingCellStyle BackColor="#FEFCEB" />
                    <SortedAscendingHeaderStyle BackColor="#AF0101" />
                    <SortedDescendingCellStyle BackColor="#F6F0C0" />
                    <SortedDescendingHeaderStyle BackColor="#7E0000" />
                </asp:GridView>
                <br />
                <br />
                <br />
                
            </td>
        </tr>
        <tr>
            <td align="center" class="style4">
                <br />
                <strong><p>10. Display Maximum Salary of Employee.</p></strong>
                <asp:SqlDataSource ID="SqlDataSource7" runat="server"
                        ConnectionString="<%$ ConnectionStrings:DYP_ATUConnectionString %>"
                        SelectCommand = "SELECT empno, Ename,deptno, Designation, salary as Max_Salary
                                         FROM Employee
                                         WHERE salary = (SELECT MAX(salary) FROM Employee);"
                ></asp:SqlDataSource>
                <br />
                <asp:GridView ID="GridView9" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="4" DataKeyNames="empno" DataSourceID="SqlDataSource7">
                    <Columns>
                        <asp:BoundField DataField="empno" HeaderText="empno" ReadOnly="True" 
                            SortExpression="empno" />
                        <asp:BoundField DataField="Ename" HeaderText="Ename" SortExpression="Ename" />
                        <asp:BoundField DataField="deptno" HeaderText="deptno" 
                            SortExpression="deptno" />
                        <asp:BoundField DataField="Designation" HeaderText="Designation" 
                            SortExpression="Designation" />
                        <asp:BoundField DataField="Max_Salary" HeaderText="Max_Salary" 
                            SortExpression="Max_Salary" />
                    </Columns>
                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#330099" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                    <SortedAscendingCellStyle BackColor="#FEFCEB" />
                    <SortedAscendingHeaderStyle BackColor="#AF0101" />
                    <SortedDescendingCellStyle BackColor="#F6F0C0" />
                    <SortedDescendingHeaderStyle BackColor="#7E0000" />
                </asp:GridView>
                <br />
                <br />
                <br />
                
            </td>
        </tr>
        <tr>
            <td align="center" class="style4">
                <strong><p>&nbsp;</p>
                <p>7. Update employee Mobile No. and display record in gridview.</p>
                </strong>
                <asp:Label ID="Label2" runat="server" Text="Enter empno"></asp:Label>
&nbsp;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtEmpNo" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label3" runat="server" Text="Enter Mobile No."></asp:Label>
&nbsp;-
                <asp:TextBox ID="txtEmpMobileNo" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="btnUpdate" runat="server" onclick="btnUpdate_Click" 
                    Text="Update" />
                <br />
                <br />
                <asp:GridView ID="GridView10" runat="server" BackColor="White" 
                    BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#330099" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                    <SortedAscendingCellStyle BackColor="#FEFCEB" />
                    <SortedAscendingHeaderStyle BackColor="#AF0101" />
                    <SortedDescendingCellStyle BackColor="#F6F0C0" />
                    <SortedDescendingHeaderStyle BackColor="#7E0000" />
                </asp:GridView>
                <br />
                
            </td>
        </tr>
        <tr>
            <td align="center" class="style4">
                <strong><p>&nbsp;</p>
                <p>8. Delete Employee with ID 106</p></strong>
                <asp:Label ID="Label4" runat="server" Text="Enter Empno - "></asp:Label>
                <asp:TextBox ID="txtEmpNoDelete" runat="server" 
                    ></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="btnDelete" runat="server" onclick="btnDelete_Click" 
                    Text="Delete" />
                <br />
                <br />
                <asp:GridView ID="GridView11" runat="server" BackColor="White" 
                    BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#330099" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                    <SortedAscendingCellStyle BackColor="#FEFCEB" />
                    <SortedAscendingHeaderStyle BackColor="#AF0101" />
                    <SortedDescendingCellStyle BackColor="#F6F0C0" />
                    <SortedDescendingHeaderStyle BackColor="#7E0000" />
                </asp:GridView>
                <br />
                
            </td>
        </tr>
        
    </table>
    
</asp:Content>
