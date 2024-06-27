<%@ Page Title="" Language="C#" MasterPageFile="~/FoodMaster.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
<table>
<tr>
<td>
USER NAME:
</td>
<td>
<asp:TextBox ID="Uname" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ErrorMessage="*" ControlToValidate="Uname" style="color: #FF3300" 
        ValidationGroup="g2"></asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td>
PASSWORD:
</td>
<td>
<asp:TextBox ID="pwd" runat="server" TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ErrorMessage="*" ControlToValidate="pwd" style="color: #FF3300" 
        ValidationGroup="g2"></asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td>
CONFIRM PASSWORD:
</td>
<td>
<asp:TextBox ID="confrm" runat="server" TextMode="Password"></asp:TextBox>
    <asp:CompareValidator ID="CompareValidator1" runat="server" 
        ErrorMessage="*" ControlToCompare="pwd" ControlToValidate="confrm" 
        style="color: #FF3300" ValidationGroup="g2"></asp:CompareValidator>
</td>
</tr>
<tr>
<td>
ADDRESS:
</td>
<td>
<asp:TextBox ID="Address" runat="server" TextMode="MultiLine"></asp:TextBox>
</td>
</tr>
<tr>
<td>
PHONE NUMBER:
</td>
<td>
<asp:TextBox ID="Phone" runat="server"></asp:TextBox>
    <asp:RangeValidator ID="RangeValidator1" runat="server" 
        ErrorMessage="*" ControlToValidate="Phone" MaximumValue="9" 
        MinimumValue="1" style="color: #FF3300" ValidationGroup="g2"></asp:RangeValidator>
</td>
</tr>
<tr>
<td>
EMAIL ADDRESS:
</td>
<td>
<asp:TextBox ID="email" runat="server"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        ErrorMessage="*" ControlToValidate="email" style="color: #FF3300" 
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
        ValidationGroup="g2"></asp:RegularExpressionValidator>
</td>
</tr>
<tr>
<td>
</td>
<td>
<asp:Button ID="Reg" runat="server" Text="Register" ValidationGroup="g2" 
        onclick="Reg_Click" />
    <asp:Label ID="Label1" runat="server"></asp:Label>
</td>
</tr>
</table>
</div>
</asp:Content>


