<%@ Page Language="VB" MasterPageFile="~/masterpages/Frontend.master" AutoEventWireup="false" CodeFile="viewDetails.aspx.vb" Inherits="reviews_viewDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    <h1><asp:Label ID="Tlabel" runat="server" ></asp:Label></h1>
  <asp:Label ID="Slabel" runat="server" CssClass="SummaryLabel" ></asp:Label>
  <asp:Label ID="Blabel" runat="server" ></asp:Label>

</asp:Content>

