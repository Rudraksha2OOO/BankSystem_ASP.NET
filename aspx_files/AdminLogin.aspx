<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 91%;
            height: 580px;
        }
        .style5
        {
            height: 27px;
        }
        .style6
        {
            height: 15px;
        }
        .style7
        {
            height: 7px;
        }
        .style8
        {
            height: 29px;
        }
    </style>
</head>
<body  style="height: 575px; width: 868px;">
    <form id="form1" runat="server">
    <table class="style1" style="background-image: url('Images/Bank10.jpg')">
        <tr>
            <td colspan="3" class="style7">
                <h2><b><i><u>ADMIN LOGIN</u></i></b></h2></td>
        </tr>
        <tr>
            <td class="style6">
                <asp:Label ID="Label1" runat="server" Text="Enter Username :"></asp:Label>
            </td>
            <td class="style6">
                <asp:TextBox ID="txtadminname" runat="server" ToolTip="Enter admin username"></asp:TextBox>
            </td>
            <td class="style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtadminname" ErrorMessage="Username cannot be empty" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style8">
                <asp:Label ID="Label2" runat="server" Text="Enter Password :"></asp:Label>
            </td>
            <td class="style8">
                <asp:TextBox ID="txtadminpass" runat="server" 
                    ToolTip="Enter registered password"></asp:TextBox>
            </td>
            <td class="style8">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtadminpass" ErrorMessage="Password cannot be empty" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style5">
                <asp:Label ID="lblmsg" runat="server"></asp:Label>
            </td>
            <td class="style5">
                <asp:Button ID="btnsubmit" runat="server" Text="SUBMIT" 
                    onclick="btnsubmit_Click" />
            </td>
            <td class="style5">
                </td>
        </tr>
    </table>
    </form>
</body>
</html>
