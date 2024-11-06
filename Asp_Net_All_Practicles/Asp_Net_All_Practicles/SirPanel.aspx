<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SirPanel.aspx.cs" Inherits="Asp_Net_All_Practicles.SirPanel" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
         .style1  
        {  
            text-align: center;  
            
        }  
        .style2  
        {  
            background-color: #999999;  
        }  
        #div1
        {
            border:1px solid black;
        }
        #panelDiv
        {
            border:2px solid red;
            background-color:Aqua;
            padding:20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center" id="div1">
    
        <br />
        <strong>Panel Practical in Asp.Net</strong><br />
        <br />
        <asp:Panel ID="fPanel" runat="server" BackColor="#FFCC99" 
            Height="199px" ScrollBars="Auto" Width="430px">
            <div id="panelDiv">Dynamic control Generation by Panel control</div>
        </asp:Panel>
        <br />
        No. of Label -
        <asp:DropDownList ID="ddlLbl" runat="server">
            <asp:ListItem>0</asp:ListItem>
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        No. of Textboxes - 
        <asp:DropDownList ID="ddltxt" runat="server">
            <asp:ListItem>0</asp:ListItem>
            <asp:ListItem Value="1"></asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem Value="4"></asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:CheckBox ID="panelChk" runat="server" AutoPostBack="True" 
            Text="Make panel visible" />
&nbsp;-
        <asp:Button ID="Button1" runat="server" Text="Refresh" />
        <br />
        <br />
    </div>
    <hr />
    <%--*******************************************************************************--%>
     <div>  
    <table class="style3" align="center">  
        <tr>  
            <td class="style1">  
                <strong style="background-color: #999999">Payment Mode</strong></td>  
        </tr>  
        <tr>  
            <td class="style2">  
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True"   
                    onselectedindexchanged="RadioButtonList1_SelectedIndexChanged">  
                    <asp:ListItem>Via Debit Card</asp:ListItem>  
                    <asp:ListItem>Via Credit Card</asp:ListItem>  
                    <asp:ListItem>Via Internet Banking</asp:ListItem>  
                    <asp:ListItem>Via Cash On Delivery</asp:ListItem>  
                    <asp:ListItem>Others</asp:ListItem>
                </asp:RadioButtonList>  
            </td>  
        </tr>  
        <tr>  
            <td class="style2">  
                <asp:Panel ID="Panel1" runat="server" CssClass="style2" Visible="False">  
                    Bank          
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True">  
                        <asp:ListItem>SBI</asp:ListItem>  
                        <asp:ListItem>PNB</asp:ListItem>  
                        <asp:ListItem>CBI</asp:ListItem>  
                        <asp:ListItem>BOI</asp:ListItem>  
                    </asp:DropDownList>  
                    <br />  
                    Card No    
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>  
                    <br />  
                    CVV No   
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>  
                </asp:Panel>  
            </td>  
        </tr>  
        <tr>  
            <td class="style2">  
                <asp:Panel ID="Panel2" runat="server" CssClass="style2" Visible="False">  
                    Bank         
                    <asp:DropDownList ID="DropDownList3" runat="server">  
                        <asp:ListItem>SBI</asp:ListItem>  
                        <asp:ListItem>IOB</asp:ListItem>  
                    </asp:DropDownList>  
                    <br />  
                    Card No   
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>  
                </asp:Panel>  
            </td>  
        </tr>  
        <tr>  
            <td class="style2">  
                <asp:Panel ID="Panel3" runat="server" CssClass="style2" Visible="False">  
                    Bank         
                    <asp:DropDownList ID="DropDownList4" runat="server">  
                        <asp:ListItem>SBI</asp:ListItem>  
                        <asp:ListItem>IOB</asp:ListItem>  
                        <asp:ListItem>CBI</asp:ListItem>  
                        <asp:ListItem>PNB</asp:ListItem>  
                        <asp:ListItem>HDFC</asp:ListItem>  
                    </asp:DropDownList>  
                </asp:Panel>  
            </td>  
        </tr>  
        <tr>  
            <td class="style2">  
                <asp:Panel ID="Panel4" runat="server" CssClass="style2" Visible="False">  
                    Pay Bill on Delivery Time                                         
                    <asp:Button ID="Button5" runat="server" Text="I Agree" />  
                </asp:Panel>  
            </td> 
         </tr>
         
       </table>  
    </div>  
    </form>
</body>
</html>
