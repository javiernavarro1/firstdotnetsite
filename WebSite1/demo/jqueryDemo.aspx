<%@ Page Title="jquery demo" Language="VB" MasterPageFile="~/masterpages/Frontend.master" AutoEventWireup="false" CodeFile="jqueryDemo.aspx.vb" Inherits="demo_jqueryDemo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <input id="Butter" type="button" value="button" />
<script type="text/javascript">
    $(document).ready(function () {
        $('#MainContent').css('background-color', 'green')

        $('#Butter').mouseover(function () {
            $('#MainContent').css('background-color', 'red')
        .animate({ width: '100px', height: '800' })
        });

    });
</script>
</asp:Content>

