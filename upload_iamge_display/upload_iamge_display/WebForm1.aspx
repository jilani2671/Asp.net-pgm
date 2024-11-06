<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="upload_iamge_display.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Image Upload and Display</title>
</head>
<body>
    <form id="form1" runat="server" enctype="multipart/form-data">
        <div>
            <h2>Upload Image</h2>
            <asp:FileUpload ID="fileUpload" runat="server" />
            <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="btnUpload_Click" />
            
            <h2>Uploaded Image</h2>
            <asp:Image ID="imgUploaded" runat="server" Visible="false" />
        </div>
    </form>
</body>
</html>
