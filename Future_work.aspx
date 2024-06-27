<%@ Page Title="" Language="C#" MasterPageFile="~/GalleryView.master" AutoEventWireup="true" CodeFile="Future_work.aspx.cs" Inherits="Future_work" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">

<table style="width: 741px">
<td colspan="2>
    <table  style="width: 100%;" style="width: 267px">
        <tr>
            
            <td class="r1" style="width: 267px">
                &nbsp;</td>
            
            <td align="center" style="width: 571px" colspan="2">
            
                <asp:Image ID="Image1" runat="server" Height="200" Width="200" />
                <br />
                <asp:Label ID="Label2" CssClass="r1" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            
            <td class="r1" align="center" style="width: 267px">
                &nbsp;</td>
            
        </tr>
        <tr>
            <td class="r1"  align="center" style="width: 267px">
                
            Email:
            </td>
            <td colspan="2">
                
            <asp:TextBox ID="mail" runat="server" ></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="mail" ErrorMessage="*" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="r1"  align="center" style="width: 267px">
                Commands:</td>
            <td style="width: 571px" colspan="2">
            <asp:TextBox ID="cmds" runat="server" TextMode="MultiLine" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="cmds" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 267px">
                &nbsp;</td>
            <td style="width: 571px">
                <asp:Button ID="Button1" runat="server" Text="send" onclick="Button1_Click" />
                <asp:Label CssClass="r1" ID="Label1" runat="server"></asp:Label>
            </td>
            <td style="width: 571px">
                <asp:Rating ID="Rating2" runat="server" StarCssClass="ratingEmpty1" WaitingStarCssClass="ratingSaved1" Height="30" EmptyStarCssClass="ratingEmpty1" FilledStarCssClass="ratingFilled1" OnChanged="RatingControlChanged">
                </asp:Rating>
            </td>
        </tr>
        <tr>
            <td style="width: 267px">
                &nbsp;</td>
            <td style="width: 571px" colspan="2">
                <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                </asp:ToolkitScriptManager>
            </td>
        </tr>
        <tr>
            <td style="width: 267px">
                </td>
            <td style="width: 571px" align="left" class="repeat" colspan="2">
               <asp:Repeater ID="RepDetails" runat="server">
<HeaderTemplate>
<table style=" border:1px solid #000000; width:500px" cellpadding="0">
<tr style="background-color:#000000; color:White">
<td colspan="2">
<b>Comments</b>
</td>
</tr>
</HeaderTemplate>
<ItemTemplate>
<tr style="background-color:#000000">
<td>
<table style="background-color:#EBEFF0;border-top:1px dotted #000000; width:500px" >
<tr>
<td class="r1">
<asp:Image  ID="prof" runat="server" Height="50" Width="50" ImageUrl='<%# met(Eval("Img_byts")) %>' />
Subject:
<asp:Label ID="jkj" CssClass="r1" runat="server" Text='<%#Eval("Url") %>' Font-Bold="true"/>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td >
<asp:Label ID="lblComment" CssClass="r1" runat="server" Text='<%#Eval("User_cmds") %>'/>
</td>
</tr>
<tr>
<td>
<table style="background-color:#EBEFF0;border-top:1px dotted #000000;border-bottom:1px solid #000000; width:500px" >
<tr>
<td class="r1">Post By: <asp:Label ID="lblUser" CssClass="r1" runat="server" Font-Bold="true" Text='<%#Eval("uname") %>'/></td>
<td class="r1">Created Date:<asp:Label ID="lblDate" runat="server" CssClass="r1" Font-Bold="true" Text='<%#Eval("Up_date") %>'/></td>
<td class="r1">Rating:<asp:Rating ID="Rating1" runat="server" StarCssClass="ratingEmpty1" WaitingStarCssClass="ratingSaved1"  Height="30" EmptyStarCssClass="ratingEmpty1" FilledStarCssClass="ratingFilled1" CurrentRating='<%# Eval("rating") %>'>
        </asp:Rating></td>
</tr>
</table>
</td>
</tr>
<tr>
<td colspan="2"></td>
</tr>
</ItemTemplate>
<FooterTemplate>
</table>
</FooterTemplate>
</asp:Repeater>
                <br />
            </td>
        </tr>
    </table>
</td>
</table>

    </form>
</asp:Content>

