<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="HomePage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 90%;
            height: 772px;
            background-image:url('Images/Bank1.jpg');
        }
    </style>
</head>
<body  >
    <form id="form1" runat="server">
    
    <table class="style1" style="background-image: url('Images/Bank10.jpg')"
    >
        <tr>
            <td>
             
                <h2><u>BANK MANAGEMENT SYSTEM</u></h2></td>
        </tr>
        <tr>
            <td>
                <asp:Menu ID="Menu1" runat="server" BackColor="#FFFBD6" 
                    DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" 
                    ForeColor="#990000" Height="98px" StaticSubMenuIndent="10px" Width="293px">
                    <DynamicHoverStyle BackColor="#990000" ForeColor="White" />
                    <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                    <DynamicMenuStyle BackColor="#FFFBD6" />
                    <DynamicSelectedStyle BackColor="#FFCC66" />
                    <Items>
                        <asp:MenuItem NavigateUrl="~/AdminLogin.aspx" Text="&gt;&gt;ADMIN LOGIN" 
                            ToolTip="login form for admin only" Value="Admin Login"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/RegisterForm.aspx" Text="&gt;&gt;NEW USER" 
                            ToolTip="if you are new user,register here." Value="New User">
                        </asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/UserLogin.aspx" Text="&gt;&gt;USER LOGIN" 
                            ToolTip="if you have already registered,login here ." Value="USER LOGIN">
                        </asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/About.aspx" Text="&gt;&gt;ABOUT" 
                            Value="&gt;&gt;ABOUT"></asp:MenuItem>
                    </Items>
                    <StaticHoverStyle BackColor="#990000" ForeColor="White" />
                    <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                    <StaticSelectedStyle BackColor="#FFCC66" />
                </asp:Menu>
            </td>
        </tr>
        </table>
    </form>
</body>
</html>
