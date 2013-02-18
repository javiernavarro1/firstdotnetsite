<%@ Page Title="demos" Language="VB" MasterPageFile="~/masterpages/Frontend.master" AutoEventWireup="false" CodeFile="jquerydemos.aspx.vb" Inherits="demo_jquerydemos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
 <h1 title="First Header">First Header</h1>
  <table id="DemoTable">
    <tr><td>Row 1 Cell 1</td><td>Row 1 Cell 2</td></tr>
    <tr><td>Row 2 Cell 1</td><td>Row 2 Cell 2</td></tr>
    <tr><td>Row 3 Cell 1</td><td>Row 3 Cell 2</td></tr>
    <tr><td>Row 4 Cell 1</td><td>Row 4 Cell 2</td></tr>
    <tr><td>Row 5 Cell 1</td><td>Row 5 Cell 2</td></tr>
  </table>
  <h2>Second <span style="font-style: italic; font-weight: bold;">Header</span></h2>
  <input id="Button1" type="button" value="button" />
  <input id="Text1" type="text" />
  <input id="Checkbox1" type="checkbox" />
  <input id="Checkbox2" type="checkbox" />

</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="clientscript">
<script type="text/javascript">
    $(function () {

        // $('#DemoTable').css('background-color', 'green');
        // $('#DemoTable tr:first').css('background-color', 'red');
        // $('#DemoTable tr:last').css('background-color', 'red');
        //$('#DemoTable tr:odd').css('background-color', 'red');
        //$('#DemoTable tr:even').css('background-color', 'blue');
        // $('#DemoTable tr:eq(0)').css('color', 'green');
        //$('#DemoTable tr:gt(2)').css('color', 'green');
        //$('#DemoTable tr:lt(3)').css('color', 'blue');
        //$(':header').css('color', 'green');
        //$('td:contains("Row 3")').css('color', 'blue');
        //$(':header:has("span")').css('color', 'orange');
        //$('[type]').css('color', 'orange');
        //$('[type=text]').css('color', 'brown');
        //$(':button, :text').css('color', 'green');
        //$(':checkbox').attr('checked', true);
        // $('#DemoTable td').bind('mouseover', function ()
        //{ $(this).css('background-color', 'yellow') }).bind('mouseout', function ()
        ///{ $(this).css('background-color', '') });
        //$('#DemoTable td').each(function(){ alert(this.innerHTML)});

        //alert($('#DemoTable td:contains("Row 1 Cell 2")').prev()[0].innerHTML);
        //alert($('#DemoTable td:contains("Row 1 Cell 2")').parent()[0].innerHTML);
        // $('h1').hide(1001);
        //$('h1').show(2001);
        //$('h1').toggle(4000);
        //$('h1').slideUp(1000);
        //$('h1').slideDown(2000);
        //  $('h1').slideToggle(1000);
        $('h1').fadeOut(1050);
        $('h1').fadeIn(1000);
        $('h1').fadeTo(2320, 0.3);
        $('h2').animate({ opacity: 0.4, marginLeft: '60px',
         fontSize: '59px' }, 1500);

    });
</script>
</asp:Content>


