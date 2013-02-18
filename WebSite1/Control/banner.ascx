<%@ Control Language="VB" AutoEventWireup="false" CodeFile="banner.ascx.vb" Inherits="Control_banner" %>
<p>
    <br />
    <asp:Button ID="Button1" runat="server" Text="Button" />
</p>
<asp:Panel ID="vertpan" runat="server">
   <a href ="http://www.javiernavarro.us/" target="_blank" runat="server" id="vertlink">
    <asp:Image ID="Image1" runat="server" AlternateText="not a sample ban" 
        ImageUrl="~/images/Banner120x240.gif" />
        </a>
</asp:Panel>
<asp:Panel ID="horpan" runat="server">
   <a href ="http://www.javiernavarro.us/" target="_blank" runat="server" id="horilink">
    <asp:Image ID="Image2" runat="server" AlternateText="not a sample ban" 
        ImageUrl="~/images/Banner468x60.gif" />
        </a>
</asp:Panel>

