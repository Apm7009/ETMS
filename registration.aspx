<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="REGISTRATION" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            background-color: #FFFF00;
        }
        .style2
        {
            width: 32%;
            background-color: #C0C0C0;
            height: 283px;
        }
        .style3
        {
            width: 414px;
            text-align: right;
        }
        .style6
        {
            width: 631px;
        }
        .style7
        {
            width: 414px;
            background-color: #C0C0C0;
            height: 32px;
        }
        .style8
        {
            width: 32%;
            background-color: #C0C0C0;
            height: 32px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <center class="style1">REGISTRATION FORM</center>
    <br />
    </div>
    <table align="center" class="style2">
        <tr>
            <td class="style3">
                Firstname:</td>
            <td class="style6">
                <asp:TextBox ID="Txtfirstname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="Txtfirstname" ErrorMessage="*mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Lastname:</td>
            <td class="style6">
                <asp:TextBox ID="Txtlastname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="Txtlastname" ErrorMessage="*mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
           <tr>
            <td class="style3">
                Employee ID:</td>
            <td class="style6">
                <asp:TextBox ID="Txtempid" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="Txtempid" ErrorMessage="*mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Email ID:</td>
            <td class="style6">
                <asp:TextBox ID="Txtemailid" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="Txtemailid" ErrorMessage="*mandatory" ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Phone NO:</td>
            <td class="style6">
                <asp:TextBox ID="Txtno" runat="server" MaxLength="10" 
                   ></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="Txtno" ErrorMessage="*mandatory" ForeColor="Red" 
                    ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Address:</td>
            <td class="style6">
                <asp:TextBox ID="Txtadd" runat="server" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="Txtadd" ErrorMessage="*mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Username:</td>
            <td class="style6">
                <asp:TextBox ID="Txtuser" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="Txtuser" ErrorMessage="*mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Password:</td>
            <td class="style6">
                <asp:TextBox ID="Txtpass" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="Txtpass" ErrorMessage="*mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
          <tr>
            <tr>
    <td class="style7"></td>
    <td align="right" class="style8">
        <asp:Button ID="Btnreg" runat="server" Text="REGISTER" onclick="Btnreg_Click" 
            style="height: 35px; margin-right: 150px; margin-left: 0px; background-color: #FFFF00;" /></td>
    </tr>
        <tr>
    <td colspan="2">
     <asp:Label ID="status" runat="server" ForeColor="Red"></asp:Label></td></tr>
        </table>
    </form>
</body>
</html>


