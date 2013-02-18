<%@ Page Title="all reviews" Language="VB" MasterPageFile="~/masterpages/Frontend.master" AutoEventWireup="false" CodeFile="all.aspx.vb" Inherits="reviews_all" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <!--<asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
    this is blacked out because of the example on chapter 15 page 572
    -->
 <!--Remember to bind repeater in .vb file if not it wont work-->
   
    <asp:Repeater ID="Repeater1" runat="server">
    <ItemTemplate>
    <asp:HyperLink ID="hyperlink1" runat="server" 
  NavigateUrl='<%# "viewDetails.aspx?ReviewId=" + Eval("Id").ToString() %>'
  Text='<%# Eval("Title") %>'>
  </asp:HyperLink><br />
    </ItemTemplate>
    
    </asp:Repeater>
</asp:Content>

