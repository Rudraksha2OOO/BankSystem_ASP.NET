<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserLogin.aspx.cs" Inherits="UserLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1
        {
            height: 541px;
            width: 876px;
        }
        .style1
        {
            height: 70px;
        }
        .style2
        {
            height: 125px;
        }
        .style3
        {
            width: 268px;
        }
        .style4
        {
            height: 125px;
            width: 268px;
        }
    </style>
</head>
<body
    style="height: 623px; width: 991px;">
    <form id="form1" runat="server">
   <table class="style1" 
        
        style="background-image: url('Images/Bank10.jpg'); height: 640px; width: 1006px;">
        <tr>
            <td colspan="3">
                <h2><b><i><u>USER LOGIN</u></i></b></h2></td>
        </tr>
        <tr>
            <td class="style3">
                <b><i>Enter Username :</i></b>
            </td>
            <td>
                <asp:TextBox ID="txtuname" runat="server" ToolTip="Enter registered username" 
                    BackColor="White" BorderColor="#003300" 
                    ></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtuname" ErrorMessage="Username cannot be empty" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <b><i>Enter Password :</i></b>
            </td>
            <td>
                <asp:TextBox ID="txtpassword" runat="server" ToolTip="Enter admin password" 
                    BorderColor="#003300"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtpassword" ErrorMessage="Password cannot be empty" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="lblmsg" runat="server"></asp:Label>
            </td>
            <td class="style2">
                <asp:Button ID="btnsubmit" runat="server" Text="SUBMIT" BackColor="#00CC00" 
                    ForeColor="Black" onclick="btnsubmit_Click" />
            </td>
            <td class="style2">
                </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="lblamt" runat="server" Text="Enter Amount" Visible="False"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtamt" runat="server" Visible="False"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Button ID="btnd" runat="server" Height="47px" onclick="btnd_Click" 
                    Text="Deposit" Visible="False" Width="213px" />
            </td>
            <td>
                <asp:Button ID="btnw" runat="server" Height="47px" onclick="btnw_Click" 
                    Text="Withdraw" Visible="False" Width="213px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Button ID="btnb" runat="server" Height="47px" onclick="btnb_Click" 
                    Text="Balance" Visible="False" Width="213px" />
            </td>
            <td>
                <asp:Button ID="btne" runat="server" Height="47px" onclick="btne_Click" 
                    Text="Exit" Visible="False" Width="213px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="lblmsg12" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </form>
</body>
</html>
