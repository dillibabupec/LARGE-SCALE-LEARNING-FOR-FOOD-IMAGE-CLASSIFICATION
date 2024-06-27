<%@ Page Title="" Language="C#" MasterPageFile="~/GalleryView.master" AutoEventWireup="true" CodeFile="Gallery.aspx.cs" Inherits="Gallery" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <form id="form1" runat="server">
    
<div>
<center>
<table>
<tr>
<td>
    <span style="color: #000000">Enter Disease name:</span></td>
<td>
<asp:TextBox id="search"  runat="server" ></asp:TextBox>
</td>
</tr>
<tr>
<td>
    &nbsp;</td>
<td>
<asp:Button ID="Srch" runat="server" Text="Search" onclick="Srch_Click"/>
</td>
</tr>
<tr>
<td colspan="2">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager2" runat="server">
    </asp:ToolkitScriptManager>
    <asp:DataList ID="DataList1" runat="server" CellPadding="3" CellSpacing="3" ForeColor="Black" 
        RepeatColumns="5" RepeatDirection="Horizontal" 
        onselectedindexchanged="DataList1_SelectedIndexChanged">
    <ItemTemplate>
    <asp:ImageButton ID="img" runat="server" Width="100" Height="100" ImageUrl='<%# met(Eval("Img_byts")) %>'  CommandName="Select"/>
    <br />
    <asp:Label ID="name" runat="server" Text='<%#Eval("Food_img") %>' ></asp:Label>
    </ItemTemplate>
    
    </asp:DataList>
    </td>
</tr>
</table>
</center>
</div>

    </form>

</asp:Content>

