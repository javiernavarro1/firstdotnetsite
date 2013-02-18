<%@ Page Title="My favorite reviews" Language="VB" MasterPageFile="~/masterpages/Frontend.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="reviews_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">

    <asp:Repeater ID="genreRepeater" runat="server">
<HeaderTemplate>
<p>here are favorite gneres with reviews</p>
</HeaderTemplate>
<ItemTemplate>
<h3><asp:Literal id="literal1" runat="server" Text='<%# Eval("Name") %>'></asp:Literal></h3>
<asp:Repeater ID="ReviewRepater" runat="server" DataSource='<%# Eval("Reviews") %>'>
<ItemTemplate>
<asp:HyperLink ID="hyperlink1" runat="server" Text='<%# Eval("Title") %>' NavigateUrl='<%# "viewDetails.aspx?ReviewId=" + Eval("Id").ToString() %>'></asp:HyperLink>
<br />
</ItemTemplate>
</asp:Repeater>
</ItemTemplate>
</asp:Repeater>
<asp:PlaceHolder ID="NoRecords" runat="server" Visible="false">
<p>Sorry, no reviews found</p>
</asp:PlaceHolder>
<p>you can change your preference via <a href="~/myprofiles.aspx" runat="server">here</a></p>
</asp:Content>

