<%@ Page Title="demo update" Language="VB" MasterPageFile="~/masterpages/Frontend.master" AutoEventWireup="false" CodeFile="updatepanel.aspx.vb" Inherits="demo_updatepanel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <!--this is needed in order to update a portion of the code
    the update panel gets refresed not the whole page. the script manager calls the ajax code
    content template is added if you use updatepanel and use tab content template is a property of update panel-->
   <!-- <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
   -->
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
        
   <asp:Label ID="Label1" runat="server"></asp:Label>
   
     <asp:Button ID="Button1" runat="server" Text="Button" />
    </ContentTemplate>
    </asp:UpdatePanel>

   
</asp:Content>

