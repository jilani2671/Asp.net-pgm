<%@ Page Title="" Language="C#" MasterPageFile="~/DYP_Data/DYP-ATU_STUDMARKLIST.Master" AutoEventWireup="true" CodeBehind="Validations.aspx.cs" Inherits="Asp_Net_All_Practicles.Journal.Validations" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<style>
    table,td
    {
        text-align:center;
        border:1px solid black;
        border-collapse:collapse;
    }
    td
    {
        height:30px;
    }
</style>
<body>
    <form id="form1">
        <div>
            <!-- RequiredFieldValidator -->
            <table class="style1" >
                <tr>
                    <td colspan="2">
                        Registration Form</td>
                </tr>
                <tr>
                    <td>
            <asp:Label ID="lblName" runat="server" Text="Name:"></asp:Label>
                    </td>
                    <td>
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName"
                ErrorMessage="Name is required." Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
            <asp:Label ID="lblAge" runat="server" Text="Age:"></asp:Label>
                    </td>
                    <td>
            <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
            <asp:RangeValidator ID="rvAge" runat="server" ControlToValidate="txtAge"
                ErrorMessage="Age must be between 18 and 100." MinimumValue="18" MaximumValue="100"
                Type="Integer" Text="*" ForeColor="Red"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td>
            <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>
                    </td>
                    <td>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
            <asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm Password:"></asp:Label>
                    </td>
                    <td>
            <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
            <asp:CompareValidator ID="cvPassword" runat="server" ControlToValidate="txtConfirmPassword"
                ControlToCompare="txtPassword" ErrorMessage="Passwords do not match." Text="*" ForeColor="Red"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td>
            <asp:Label ID="lblCustom" runat="server" Text="Custom Validation:"></asp:Label>
                    </td>
                    <td>
            <asp:TextBox ID="txtCustom" runat="server"></asp:TextBox>
            <asp:CustomValidator ID="cvCustom" runat="server" ControlToValidate="txtCustom"
                ErrorMessage="Custom validation failed. Please enter 'OpenAI'." ClientValidationFunction="customValidation"
                Text="*" ForeColor="Red"></asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td>
            <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>
                    </td>
                    <td>
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail"
                ErrorMessage="Invalid email format." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                Text="*" ForeColor="Red"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
            <asp:ValidationSummary ID="vsSummary" runat="server" HeaderText="Please correct the following errors:"
                ForeColor="Red" DisplayMode="BulletList" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
    
    <script type="text/javascript">
        function customValidation(source, args) {
            args.IsValid = args.Value === "";
        }
    </script>
</body>
</html>
</asp:Content>
