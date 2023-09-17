<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RegisterForm.aspx.cs" Inherits="RegisterForm" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 97%;
            height: 800px;
            margin-bottom: 17px;
        }
        #form1
        {
            width: 884px;
            height: 886px;
            margin-bottom: 4px;
        }
        .style7
        {
            height: 76px;
            width: 157px;
        }
        .style8
        {
            height: 41px;
        }
        .style9
        {
            height: 62px;
            width: 157px;
        }
        .style10
        {
            height: 57px;
            width: 157px;
        }
        .style11
        {
            height: 62px;
            width: 191px;
        }
        .style12
        {
            height: 76px;
            width: 191px;
        }
        .style13
        {
            height: 57px;
            width: 191px;
        }
        .style14
        {
            height: 62px;
            width: 228px;
        }
        .style15
        {
            height: 76px;
            width: 228px;
        }
        .style16
        {
            height: 57px;
            width: 228px;
        }
        .style46
        {
            height: 36px;
            width: 228px;
        }
        .style47
        {
            height: 36px;
            width: 157px;
        }
        .style48
        {
            height: 36px;
            width: 191px;
        }
        .style49
        {
            height: 27px;
            width: 228px;
        }
        .style50
        {
            height: 27px;
            width: 157px;
        }
        .style51
        {
            height: 27px;
            width: 191px;
        }
        .style52
        {
            height: 41px;
            width: 228px;
        }
        .style53
        {
            height: 41px;
            width: 157px;
        }
        .style54
        {
            height: 41px;
            width: 191px;
        }
        .style55
        {
            height: 32px;
            width: 228px;
        }
        .style56
        {
            height: 32px;
            width: 157px;
        }
        .style57
        {
            height: 32px;
            width: 191px;
        }
        .style58
        {
            height: 28px;
            width: 228px;
        }
        .style59
        {
            height: 28px;
            width: 157px;
        }
        .style60
        {
            height: 28px;
            width: 191px;
        }
        .style61
        {
            height: 29px;
            width: 228px;
        }
        .style62
        {
            height: 29px;
            width: 157px;
        }
        .style63
        {
            height: 29px;
            width: 191px;
        }
        .style64
        {
            height: 40px;
            width: 228px;
        }
        .style65
        {
            height: 40px;
            width: 157px;
        }
        .style66
        {
            height: 40px;
            width: 191px;
        }
        .style67
        {
            height: 35px;
            width: 228px;
        }
        .style68
        {
            height: 35px;
            width: 157px;
        }
        .style69
        {
            height: 35px;
            width: 191px;
        }
    </style>
</head>
<body style="height: 833px; width: 864px">
    <form id="form1" runat="server" >
    
    <table class="style1" frame="border" 
        style="background-image: url('Images/Bank6.jpg')"
        background-repeat: no-repeat;>
   
        <tr>
            <td class="style8" colspan="3">
                <h2><b><i><u>REGISTRATION FORM</u></i></b></h2></td>
        </tr>
        <tr>
            <td class="style14">
               <b><i> Name :</i></b></td>
            <td class="style9">
                <asp:TextBox ID="txtname" runat="server" BorderColor="#003300"></asp:TextBox>
            </td>
            <td class="style11">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtname" ErrorMessage="Name Cannot be Empty" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style15">
                <b><i> Gender :</i></b></td>
            <td class="style7">
                <asp:RadioButtonList ID="rbtgender" runat="server" BorderColor="#003300" 
                    Width="149px">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Others</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td class="style12">
                </td>
        </tr>
        <tr>
            <td class="style16">
                 <b><i> Date of Birth(MM/DD/YYYY) :</i></b><br />
            </td>
            <td  class="style10">
                <asp:TextBox ID="txtdob" runat="server" BorderColor="#003300"></asp:TextBox>
            </td>
            <td class="style13">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtdob"
                    Display="Dynamic" ErrorMessage="Select Date" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td class="style52">
                 <b><i> Username :</i></b></td>
            <td class="style53">
                <asp:TextBox ID="txtuname" runat="server" BorderColor="#003300"></asp:TextBox>
            </td>
            <td class="style54">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtuname" ErrorMessage="Enter Valid Username" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style55">
                 <b><i> Password :</i></b></td>
            <td class="style56">
                <asp:TextBox ID="txtpass" runat="server" BorderColor="#003300"></asp:TextBox>
            </td>
            <td class="style57">
                </td>
        </tr>
        <tr>
            <td class="style46">
                 <b><i> Confirm Password :</i></b></td>
            <td class="style47">
                <asp:TextBox ID="txtcpass" runat="server" BorderColor="#003300"></asp:TextBox>
            </td>
            <td class="style48">
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="txtpass" ControlToValidate="txtcpass" 
                    ErrorMessage="Password should be same as above" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="style58">
                 <b><i> Email ID :</i></b></td>
            <td class="style59">
                <asp:TextBox ID="txtemail" runat="server" BorderColor="#003300"></asp:TextBox>
            </td>
            <td class="style60">
                </td>
        </tr>
        <tr>
            <td class="style61">
                 <b><i> Occupation :</i></b></td>
            <td class="style62">
                <asp:DropDownList ID="ddloccup" runat="server">
                    <asp:ListItem>Student</asp:ListItem>
                    <asp:ListItem>Army-Officer</asp:ListItem>
                    <asp:ListItem>Business</asp:ListItem>
                    <asp:ListItem>Retired</asp:ListItem>
                    <asp:ListItem>Contractor</asp:ListItem>
                    <asp:ListItem>Unemployed</asp:ListItem>
                    <asp:ListItem>Employed Full-time</asp:ListItem>
                    <asp:ListItem>Employed Part-time</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style63">
                </td>
        </tr>
        <tr>
            <td class="style64">
                 <b><i> City :</i></b></td>
            <td class="style65">
                <asp:ListBox ID="lbxcity" runat="server" Height="30px">
                    <asp:ListItem>Mumbai</asp:ListItem>
                    <asp:ListItem>Delhi</asp:ListItem>
                    <asp:ListItem>Kolkata</asp:ListItem>
                    <asp:ListItem>Chennai</asp:ListItem>
                    <asp:ListItem>Bangalore</asp:ListItem>
                </asp:ListBox>
            </td>
            <td class="style66">
                </td>
        </tr>
        <tr>
            <td class="style67">
                 <b><i> Mobile no :</i></b></td>
            <td class="style68">
                <asp:TextBox ID="txtmobileno" runat="server" BorderColor="Black"></asp:TextBox>
            </td>
            <td class="style69">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ErrorMessage="10 Digits"
                    ValidationExpression="[0-9]{10}" ControlToValidate="txtmobileno" 
                    ForeColor="Red"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style67">
                 &nbsp;</td>
            <td class="style68">
                &nbsp;</td>
            <td class="style69">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style46">
                </td>
            <td class="style47">
                <asp:Button ID="btnsubmit" runat="server" onclick="Button1_Click" 
                    Text="Submit" BackColor="#66FF33" BorderColor="#003300" 
                    ForeColor="Black" />
            </td>
            <td class="style48">
                <asp:Button ID="btnback" runat="server" BackColor="Aqua" BorderColor="Black" 
                    BorderStyle="Solid" Text="Back" onclick="btnback_Click" />
                </td>
        </tr>
        <tr>
            <td class="style49">
                </td>
            <td class="style50">
                <asp:Label ID="lblmsg" runat="server" BackColor="#FFCC00"></asp:Label>
            </td>
            <td class="style51">
                </td>
        </tr>
    </table>
    </form>
</body>
</html>
