<%@ Page Title="" Language="C#" MasterPageFile="~/FoodMaster.master" AutoEventWireup="true" CodeFile="Upload_imgs.aspx.cs" Inherits="Upload_imgs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
<tr>
<td>
</td>
<td>
    <asp:Image ID="Image1" runat="server" Width="100" Height="100" />
</td>
</tr>
<tr>
<td style="height: 27px">
Upload image:
</td>
<td style="height: 27px">
<asp:FileUpload ID="upd" runat="server" />
</td>
</tr>
<tr>
<td>
    File name:</td>
<td>
    <asp:Label ID="name" runat="server"></asp:Label>
    <br />
    </td>
</tr>
<tr>
<td>
File size:
</td>
<td>
    <asp:Label ID="size" runat="server"></asp:Label>
</td>
</tr>
<tr>
<td>
File extension:
</td>
<td>
<asp:Label ID="ext" runat="server"></asp:Label>
</td>
</tr>
<tr>
<td>
</td>
<td>
    <asp:ImageButton ID="ImageButton6" runat="server" 
        ImageUrl="~/images/button (3).png" onclick="ImageButton6_Click" />
</td>
</tr>
<tr>
<td>
    Food Content:</td>
<td>
<asp:TextBox ID="cnt" runat="server" ></asp:TextBox>
   </td>
</tr>
<tr>
<td>
   Description:</td>
<td>
    <asp:TextBox ID="Des" runat="server" TextMode="MultiLine" ></asp:TextBox></td>
</tr>
<tr>
<td>Update RGB</td>
<td><asp:Button id="update" runat="server" Text="Update" onclick="update_Click" /></td>
</tr>
</table>
</asp:Content>


