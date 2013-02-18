<%@ Page Title="web service demo" Language="VB" MasterPageFile="~/masterpages/Frontend.master" AutoEventWireup="false" CodeFile="webServicesDemo.aspx.vb" Inherits="demo_webServicesDemo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <asp:ScriptManagerProxy ID="ScriptManagerProxy1" runat="server">
    <Services>
    <asp:ServiceReference Path="~/webservices/WebService.asmx" />

    </Services>
    </asp:ScriptManagerProxy>
    <input id="yourname" type="text" />
    <input id="ello" type="button" value="say something" />
     <input id="SayHelloPageMethod" type="button" value="say ello with a page" />
<script type="text/javascript" >
    /* in order for javascript to work correctly, i must set the functions first that is needed in order to ellocallback to work
     if it is not set up that way, the code wont work, it can not process the code first and then fire. this way page methods wont work. also it is case sensitive. just like C#, and regular java 
    the page method works the best for single use in pages. runs faster than the web service method
    */
    function ello() {
        var yourname = $get('yourname').value;
        WebService.HellowWorld(yourname, ellocallback);
    }
    function elloWorldPageMethod() {
        var yourname = $get('yourname').value;
        PageMethods.HelloWorld(yourname, ellocallback);
   } 
    function ellocallback(result) {
        alert(result);
    }
   
    $addHandler($get('ello'), 'click', ello);
    $addHandler($get('SayHelloPageMethod'), 'click', elloWorldPageMethod);
</script>

</asp:Content>


