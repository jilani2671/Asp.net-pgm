<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="validationcontrol.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Validation Controls Demo</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Validation Controls</h2>

            <!-- RequiredFieldValidator -->
            <asp:Label ID="Label1" runat="server" Text="Name: "></asp:Label>
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="Name is required." ForeColor="Red"></asp:RequiredFieldValidator>
            <br /><br />

            <!-- RangeValidator -->
            <asp:Label ID="Label2" runat="server" Text="Age: "></asp:Label>
            <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtAge" MinimumValue="18" MaximumValue="65" Type="Integer" ErrorMessage="Age must be between 18 and 65." ForeColor="Red"></asp:RangeValidator>
            <br /><br />

            <!-- CompareValidator -->
            <asp:Label ID="Label3" runat="server" Text="Email: "></asp:Label>
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <asp:Label ID="Label4" runat="server" Text="Confirm Email: "></asp:Label>
            <asp:TextBox ID="txtConfirmEmail" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtEmail" ControlToCompare="txtConfirmEmail" ErrorMessage="Email and Confirm Email must match." ForeColor="Red"></asp:CompareValidator>
            <br /><br />

            <!-- CustomValidator -->
            <asp:Label ID="Label5" runat="server" Text="Custom Field: "></asp:Label>
            <asp:TextBox ID="txtCustom" runat="server"></asp:TextBox>
            <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="txtCustom" ErrorMessage="Custom validation failed." ForeColor="Red" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
            <br /><br />

            <!-- RegularExpressionValidator -->
            <asp:Label ID="Label6" runat="server" Text="Phone (xxx-xxx-xxxx): "></asp:Label>
            <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtPhone" ValidationExpression="\d{3}-\d{3}-\d{4}" ErrorMessage="Phone number must be in xxx-xxx-xxxx format." ForeColor="Red"></asp:RegularExpressionValidator>
            <br /><br />

            <!-- ValidationSummary -->
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />

            <!-- Submit Button -->
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" />
        </div>
    </form>
</body>
</html>
