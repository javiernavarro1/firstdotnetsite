<%@ Page Title="contact us" Language="VB" MasterPageFile="~/masterpages/Frontend.master" AutoEventWireup="false" CodeFile="contact.aspx.vb" Inherits="about_contact" %>
<%@ Register Src="~/Control/contactform.ascx" TagName='acontactform' TagPrefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
<uc1:acontactform ID = "contactform1" runat="server" />
    
</asp:Content>


