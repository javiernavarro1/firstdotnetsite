<%@ Page Title="selector demo" Language="VB" MasterPageFile="~/masterpages/Frontend.master" AutoEventWireup="false" CodeFile="selectordemo.aspx.vb" Inherits="demo_selectordemo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
<h1>basic selector</h1>
<div class="sampler">im a div class</div>
</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="clientscript">
    <script type="text/javascript">
        $(function () {

            $('*').css('color', 'green');
            $('#Footer').css('border-bottom', '2px solid black');
            $('h1').bind('click', function () { alert('hello javier') });
            $('.sampler').addClass('wait').hide(4500);
            $('#Footer, #Header').slideUp('slow').slideDown('slow');
            $('#Sidebar img').fadeTo(4958, 0.1);
        });
    </script>
</asp:Content>


