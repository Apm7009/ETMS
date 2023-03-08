<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminlogin.aspx.cs" Inherits="adminlogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
   <title></title>
    <style type="text/css">
        .style1
        {
            height: 190px;
        }
        .style2
        {
            height: 36px;
            text-align: center;
        }
        .style3
        {
            height: 40px;
            text-align: center;
        }
        .style5
        {
            height: 16px;
        }
        .style6
        {
            height: 16px;
            width: 221px;
        }
        .style7
        {
            text-align: center;
            width: 221px;
        }
        .style8
        {
            width: 221px;
        }
        .style9
        {
            text-align: center;
        }
        .style10
        {
            height: 16px;
            text-align: center;
        }
    </style>
</head>
<body style="height: 447px">
    <form id="form1" runat="server">
    <div>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    <table align="center" class="style1" style="border: thin solid #008080">
            <tr>
                <td colspan="3" 
                    
                    style="border-bottom: thin solid #008080; font-weight: 700; background-color: #FFFF00;" 
                    class="style9">
                    ADMIN LOGIN</td>
            </tr>
            <tr>
                <td class="style10">
                    </td>
                <td class="style5">
                    </td>
                <td class="style6">
                    </td>
            </tr>
            <tr>
                <td class="style3">
                    UserName :</td>
                <td class="style2">
                    <asp:TextBox ID="txtusername" runat="server" Width="120px"></asp:TextBox>
                </td>
                <td class="style7">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtusername" ErrorMessage="Please, enter username" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Password :</td>
                <td class="style2">
                    <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" Width="120px"></asp:TextBox>
                </td>
                <td class="style7">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtpassword" ErrorMessage="Please, enter password" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style9">
                    </td>
                <td>
                    <asp:Button ID="btnlogin" runat="server" onclick="btnlogin_Click" 
                        Text="LOGIN" />
                </td>
                <td class="style8">
                    </td>
            </tr>
            <tr>
                <td class="style9">
                    </td>
                <td colspan="2">
                    <asp:Label ID="status" runat="server" ForeColor=Red></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
