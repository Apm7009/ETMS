<%@ Page Title="" Language="C#" MasterPageFile="~/homepage.master" AutoEventWireup="true" CodeFile="homepage.aspx.cs" Inherits="_default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            text-align: center;
            font-size: xx-large;
        }
        .style2
        {
            font-size: x-large;
        }
    .newStyle1
    {
        border-style: solid;
    }
        .newStyle2
        {
            border-style: solid;
        }
        .style3
        {
            font-size: large;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:1024px; height:400px;">
<tr><td style="vertical-align:top;text-align:center;" class="newStyle1">Welcome to Employee 
    Transport Management System<br />
    <br />
    <span class="style2">We take pride in your ride</span></td><td style="width:300px;">
<table style="width:280px;" class="newStyle1">
     <tr style="height:350px;">
        <td style="vertical-align:top; text-align:center;" class="style3">updates</td>
     </tr>
</table>
</td></tr>
</table>
</asp:Content>