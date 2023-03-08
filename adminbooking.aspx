<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminbooking.aspx.cs" Inherits="adminbooking" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
    .style1
    {
        background-color: #FFFF00;
    }
    .style2
    {
        width: 33%;
        background-color: #C0C0C0;
        height: 351px;
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
    <div style="text-align: center; background-color: #FFFF00">
        CONFIRM BOOKING</div>
        <br />
        <br />
        <asp:GridView align=center ID="GridView1" runat="server" 
            onselectedindexchanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:ButtonField ButtonType="Button" CommandName="Select" Text="Allocate" />
            </Columns>
        </asp:GridView>
        <br />
        <table align="center" class="style2">
<tr>
        <td class="style3">
            Username:</td>
        <td class="style6">
            <asp:TextBox ID="Txtusr" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="Txtusr" ErrorMessage="*pls fill all details." ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style3">
            Booking ID:</td>
        <td class="style6">
            <asp:TextBox ID="Txtbkid" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="Txtbkid" ErrorMessage="*pls fill all details." ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
        <tr>
        <td class="style3">
            Pickup Location:</td>
        <td class="style6">
        <asp:TextBox ID="Txtpl" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="Txtpl" ErrorMessage="*pls fill all details." ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style3">
            Dropoff Location:</td>
        <td class="style6">
            <asp:TextBox ID="Txtdl" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="Txtdl" ErrorMessage="*pls fill all details." ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style3">
            Timing:</td>
        <td class="style6">
            <asp:TextBox ID="Txttime" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ControlToValidate="Txttime" ErrorMessage="*pls fill all details." ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style3">
            Vehicle No:</td>
        <td class="style6">
            <asp:DropDownList ID="Txtvn" runat="server" AutoPostBack="True">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="style3">
            Driver Name:</td>
        <td class="style6">
            <asp:DropDownList ID="Txtd" runat="server" AutoPostBack="True" 
                onselectedindexchanged="Txtd_SelectedIndexChanged">
            </asp:DropDownList>
        </td>
    </tr>
        <tr>
        <td class="style3">
            Driver PhoneNo:</td>
        <td class="style6">
            <asp:TextBox ID="Txtdpno" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
            ControlToValidate="Txtdpno" ErrorMessage="*pls allocate." ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
        <tr>
        <td class="style7"></td>
        <td align="right" class="style8">
        <asp:Button ID="Btnconf" runat="server" Text="CONFIRM BOOKING" onclick="Btnconf_Click"
        style="height: 35px; margin-right: 150px; margin-left: 0px; background-color: #FFFF00;" /></td>
    </tr>
    <tr>
        <td colspan="2">
        <asp:Label ID="status" runat="server" ForeColor="Red"></asp:Label></td></tr>
    </table>
    </form>
</body>
</html>
