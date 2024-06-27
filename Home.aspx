<%@ Page Title="" Language="C#" MasterPageFile="~/FoodMaster.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
<table>

USER LOGIN PAGE

<tr>
<td>
USER NAME:
</td>
<td>
    <asp:TextBox ID="uname" runat="server">
    </asp:TextBox>

    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="uname" ErrorMessage="*" style="color: #FF3300" 
        ValidationGroup="g1"></asp:RequiredFieldValidator>

</td>
</tr>
<tr>
<td>
PASSWORD:
</td>
<td>
<asp:TextBox ID="pwd" runat="server" TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="pwd" ErrorMessage="*" style="color: #FF3300" 
        ValidationGroup="g1"></asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td>
</td>
<td> 
 <asp:Button ID="lgn" runat="server" Text="Login" ValidationGroup="g1" 
        onclick="lgn_Click" style="height: 26px" />
    <asp:Label ID="Label1" runat="server"></asp:Label>
</td>
   
</tr>
</table>
</div>
</asp:Content>


