<%@ Page Language="C#" AutoEventWireup="true" CodeFile="cabbooking.aspx.cs" Inherits="CABBOOKING" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 31%;
            background-color: #C0C0C0;
            height: 287px;
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
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <center style="background-color: #FFFF00">WELCOME TO CAB BOOKING</center>
        <asp:Label ID="Label1" runat="server"></asp:Label>
    <br />
    </div>
    <table align="center" class="style1">
        <tr>
            <td class="style2">
                Pickup location:</td>
            <td>
                <asp:DropDownList ID="txtpl" runat="server">
                   <asp:ListItem>Please Select</asp:ListItem>  
            <asp:ListItem>KALYAN</asp:ListItem>  
            <asp:ListItem>THANE</asp:ListItem>  
            <asp:ListItem>DOMBIVLI</asp:ListItem>  
            <asp:ListItem>MULUND</asp:ListItem>  
            <asp:ListItem>POWAI</asp:ListItem>
            <asp:ListItem>VIKROLI</asp:ListItem>
            <asp:ListItem>GHATKOPAR</asp:ListItem>
            <asp:ListItem>BADLAPUR</asp:ListItem>
            <asp:ListItem>AMBERNATH</asp:ListItem>
                </asp:DropDownList>
            <asp:RequiredFieldValidator  InitialValue="Please Select" 
                    ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="txtpl" ErrorMessage="*pls fill all
fields." ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Dropoff location:</td>
            <td>
                <asp:DropDownList ID="txtdl" runat="server">
                   <asp:ListItem>Please Select</asp:ListItem>  
            <asp:ListItem>KALYAN</asp:ListItem>  
            <asp:ListItem>THANE</asp:ListItem>  
            <asp:ListItem>DOMBIVLI</asp:ListItem>  
            <asp:ListItem>MULUND</asp:ListItem>  
            <asp:ListItem>POWAI</asp:ListItem>
            <asp:ListItem>VIKROLI</asp:ListItem>
            <asp:ListItem>GHATKOPAR</asp:ListItem>
            <asp:ListItem>BADLAPUR</asp:ListItem>
            <asp:ListItem>AMBERNATH</asp:ListItem>
                </asp:DropDownList>
                            <asp:RequiredFieldValidator  InitialValue="Please Select" 
                    ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="txtdl" ErrorMessage="*pls fill all
fields." ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Timing:</td>
            <td class="style4">
             <asp:DropDownList ID="txttime" runat="server">
 <asp:ListItem>Please Select</asp:ListItem>  
            <asp:ListItem>01:00</asp:ListItem>  
            <asp:ListItem>02:00</asp:ListItem>  
            <asp:ListItem>03:00</asp:ListItem>  
            <asp:ListItem>04:00</asp:ListItem>  
            <asp:ListItem>05:00</asp:ListItem>
            <asp:ListItem>06:00</asp:ListItem>  
            <asp:ListItem>07:00</asp:ListItem>  
            <asp:ListItem>08:00</asp:ListItem>  
            <asp:ListItem>09:00</asp:ListItem>  
            <asp:ListItem>10:00</asp:ListItem>
            <asp:ListItem>11:00</asp:ListItem>
            <asp:ListItem>12:00</asp:ListItem>
            <asp:ListItem>13:00</asp:ListItem>  
            <asp:ListItem>14:00</asp:ListItem>  
            <asp:ListItem>15:00</asp:ListItem>  
            <asp:ListItem>16:00</asp:ListItem>  
            <asp:ListItem>17:00</asp:ListItem>
            <asp:ListItem>18:00</asp:ListItem>  
            <asp:ListItem>19:00</asp:ListItem>  
            <asp:ListItem>20:00</asp:ListItem>  
            <asp:ListItem>21:00</asp:ListItem>  
            <asp:ListItem>22:00</asp:ListItem>
            <asp:ListItem>23:00</asp:ListItem>
            <asp:ListItem>24:00</asp:ListItem>
                </asp:DropDownList>
                            <asp:RequiredFieldValidator  InitialValue="Please Select" 
                    ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="txttime" ErrorMessage="*pls fill all
fields." ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
                 <tr>
    <td class="style7"></td>
    <td align="right" class="style8">
        <asp:Button ID="Btnreg" runat="server" Text="BOOK CAB" onclick="Btnreg_Click" 
            
            style="height: 35px; margin-right: 150px; margin-left: 0px; background-color: #FFFF00;" /></td>
    </tr>
            <tr>
        <td colspan="2">
            <asp:Label ID="status" runat="server" ForeColor="Red"></asp:Label></td>
        </tr>
    </table>
    </form>
</body>
</html>

