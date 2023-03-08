<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contactus.aspx.cs" Inherits="CONTACTUS" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 10%;
            background-color: #C0C0C0;
            height: 237px;
        }
        .style2
        {
            width: 846px;
            text-align: right;
        }
        .style3
        {
            width: 846px;
            height: 30px;
            text-align: right;
        }
        .style4
        {
            height: 30px;
        }
        .style5
        {
            height: 39px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <center style="background-color: #FFFF00">CONTACT US</center>
    <br />
    </div>
    <table align="center" class="style1">
        <tr>
            <td class="style2">
                NAME:</td>
            <td>
                <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtname" ErrorMessage="*pls fill all details." ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                EMAIL:</td>
            <td>
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="txtemail" ErrorMessage="*pls fill all details." ForeColor="Red" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                PHONE NO:</td>
            <td class="style4">
                <asp:TextBox ID="txtno" MaxLength = "10" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                ControlToValidate="txtno" ErrorMessage="*pls fill all details." ForeColor="Red" 
                ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                MESSAGE:</td>
            <td style="text-align: center">
                <asp:TextBox ID="txtmsg" runat="server" TextMode="MultiLine" Height="46px" 
                    Width="265px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtmsg" ErrorMessage="*pls fill all details." ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
                 <tr>
    <td class="style5"></td>
    <td align="right" class="style5">
        <asp:Button ID="send" runat="server" Text="SEND" onclick="send_Click"
            style="height: 35px; margin-right: 150px; margin-left: 0px; background-color: #FFFF00;" /></td>
    </tr>
    <tr>
    <td colspan="2">
     <asp:Label ID="status" runat="server" ForeColor="Red"></asp:Label></td></tr>
    </table>
    </form>
    <p style="text-align: center">
        LOCATION : KALYAN</p>
    <p style="text-align: center">
        PHONE NO : 9757434055
    </p>
    <p style="text-align: center">
        EMAIL ID : <a href="mailto:etmswebsite@gmail.com">etmswebsite@gmail.com</a></p>
    <p style="text-align: center">
        &nbsp;</p>
</body>
</html>


