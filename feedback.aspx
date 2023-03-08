<%@ Page Language="C#" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="feedback" %>

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
    <center style="background-color: #FFFF00">FEEDBACK</center>
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
                    ErrorMessage="*pls fill all details." ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    ControlToValidate="txtemail"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                RATINGS:</td>
            <td class="style4">
                <asp:DropDownList ID="txtratings" runat="server">
            <asp:ListItem Value="">Please Select</asp:ListItem>  
            <asp:ListItem>1</asp:ListItem>  
            <asp:ListItem>2</asp:ListItem>  
            <asp:ListItem>3</asp:ListItem>  
            <asp:ListItem>4</asp:ListItem>  
            <asp:ListItem>5</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style2">
                FEEDBACK:</td>
            <td style="text-align: center">
                <asp:TextBox ID="txtfeedback" runat="server" TextMode="MultiLine" Height="46px" 
                    Width="265px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtfeedback" ErrorMessage="*pls fill all details." ForeColor="Red"></asp:RequiredFieldValidator>
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
</body>
</html>
