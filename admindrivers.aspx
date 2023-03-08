<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admindrivers.aspx.cs" Inherits="admindrivers" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 23%;
            background-color: #C0C0C0;
        }
        .style3
        {
            text-align: right;
            width: 174px;
        }
        .style4
        {
            width: 174px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center; background-color: #FFFF00">
        MANAGING DRIVERS</div>
        <br />
        <br />
    <table align="center" class="style1">
    <tr>
            <td class="style3">
                ID:</td>
            <td>
                <asp:TextBox ID="txtid" runat="server"></asp:TextBox>
                                          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtid" ErrorMessage="*pls fill all
details." ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Driver Name:</td>
            <td>
                <asp:TextBox ID="txtdname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtdname" ErrorMessage="*pls fill all details." ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Driver Phone No:</td>
            <td>
                <asp:TextBox ID="txtdno" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="txtdno" ErrorMessage="*pls fill all details." ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Driver Licence:</td>
            <td>
                <asp:TextBox ID="txtdlicence" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="txtdlicence" ErrorMessage="*pls fill all details." ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
        <td class="style4"><asp:Button ID="btninsert" runat="server" Text="INSERT" 
                onclick="btninsert_Click" /></td>
        <td><asp:Button ID="btndelete" runat="server" Text="DELETE" 
                onclick="btndelete_Click" /><asp:Button ID="btnupdate" runat="server" 
                Text="UPDATE" onclick="btnupdate_Click" /></td>
        <td>&nbsp;</td>
        </tr>
        <tr>
        <td colspan="2">
            <asp:Label ID="status" runat="server" ForeColor="Red"></asp:Label></td>
        </tr>
    </table>
        <br />
    <tr>
    <td>
        <asp:GridView align="center" ID="GridView1" runat="server">
        </asp:GridView>
    </td>
    </tr>
    </form>
</body>
</html>

