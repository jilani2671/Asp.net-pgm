<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="imgmap.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Kolhapur Map with ImageMap Control</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Kolhapur Map</h2>
            <asp:ImageMap ID="imgMapKolhapur" runat="server" ImageUrl="~/images/kolhapur_map.jpg" OnClick="imgMapKolhapur_Click">
                <asp:CircleHotSpot HotSpotMode="PostBack" X="100" Y="100" Radius="30" PostBackValue="MahalaxmiTemple" AlternateText="Mahalaxmi Temple" />
                <asp:RectangleHotSpot HotSpotMode="PostBack" Left="150" Top="200" Right="250" Bottom="300" PostBackValue="RankalaLake" AlternateText="Rankala Lake" />
                <asp:PolygonHotSpot HotSpotMode="PostBack" Coordinates="300,400,350,450,400,400" PostBackValue="PanhalaFort" AlternateText="Panhala Fort" />
            </asp:ImageMap>
            
            <h2>Selected Location</h2>
            <asp:Label ID="lblSelectedLocation" runat="server" Text="Click on a hotspot to see the details"></asp:Label>
        </div>
    </form>
</body>
</html>
