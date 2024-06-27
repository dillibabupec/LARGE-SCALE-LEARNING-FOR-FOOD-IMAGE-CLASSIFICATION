<%@ Page Title="" Language="C#" MasterPageFile="~/FoodMaster.master" AutoEventWireup="true" CodeFile="Admin_wrk.aspx.cs" Inherits="Admin_wrk" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        
        <br />
        
        <table>
<tr>
<td>
    Dataset Updation:</td>
<td>
    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Upload_imgs.aspx">Click here..</asp:LinkButton>
</td>
</tr>
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
    SIFT sampling</td>
<td>
    <asp:ImageButton ID="ImageButton7" runat="server" Width="50" Height="50"  
        ImageUrl="~/images/objects-icon.png" onclick="ImageButton7_Click" />
</td>
</tr>
<tr>
<td>
    Dense sampling</td>
<td>
    
    <asp:ImageButton ID="ImageButton1" runat="server" Width="50" Height="50" 
        ImageUrl="~/images/Pixel-Art-icon.png" onclick="ImageButton1_Click" />
</td>
</tr>
<tr>
<td>
    Random sampling</td>
<td>
    
    <asp:ImageButton ID="ImageButton5" runat="server" Height="50" 
        ImageUrl="~/images/button-round-random-icon.png" onclick="ImageButton5_Click" 
        Width="50" />
&nbsp;</td>
</tr>
<tr>
<td>
    &nbsp;</td>
<td>
    <asp:DataList ID="DataList1" runat="server" 
        onitemcommand="DataList1_ItemCommand">
    <HeaderTemplate>
    <h1>Predicted Food item</h1>
    </HeaderTemplate>
    <ItemTemplate>
    Disease name:
      <asp:Label ID="dname" runat="server" Text='<%#Bind("Food_Type") %>' CssClass="nam" ></asp:Label><br />
      Food Content:
    <asp:Label ID="cnt" runat="server" Text='<%#Bind("Contecnt_name") %>' CssClass="dis" ></asp:Label><br />
    Description:
     <asp:Label ID="ds" runat="server" Text='<%#Bind("Description") %>' ></asp:Label><br />
     <asp:ImageButton ID="ImageButton3" runat="server" Height="30" Width="70" 
        ImageUrl="~/images/button (2).png" onclick="ImageButton3_Click" CommandName="select" CommandArgument='<%#Bind("Food_Type") %>' />
    </ItemTemplate>
    </asp:DataList>
    </td>
</tr>
<tr>
<td>
    &nbsp;</td>
<td>
    
    </td>
</tr>
<tr>
<td>
    &nbsp;</td>
<td>
    <asp:Label ID="Label1" runat="server"></asp:Label>
    </td>
</tr>
</table>
</div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div>
<table>
<tr>
<td>
    <asp:Button ID="Button1" runat="server" Text="View RGB details" onclick="Button1_Click" /> 
</td>
</tr>
<tr>
<td>
    <asp:BarChart ID="BarChart1" runat="server" Height="299px" Width="280px" >
       
    </asp:BarChart>
</td>
</tr>
<tr>
<td style="text-align: left">
<center>
    &nbsp;<asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
        GridLines="None" onselectedindexchanged="GridView1_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="White" />
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    </center>
</td>
</tr>
<tr>
<td>
    <asp:ImageButton ID="ImageButton2" runat="server" 
        ImageUrl="~/images/button (1).png" onclick="ImageButton2_Click" />
</td>
</tr>
</table>
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
</div>
</asp:Content>

