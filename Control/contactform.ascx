<%@ Control Language="VB" AutoEventWireup="false" CodeFile="contactform.ascx.vb" Inherits="Control_contactform" %>
<% If False Then%>
<script src="../scripts/jquery-1.4.1-vsdoc.js" type="text/javascript"></script>
    <%End If%>

<style type="text/css">
    .style1
    {
        width: 100%;
    }
    .style2
    {
        height: 43px;
    }
    .style3
    {}
    .style4
    {
        height: 43px;
        width: 61px;
    }
    .style5
    {
        width: 61px;
        height: 25px;
    }
    .style6
    {
        height: 25px;
    }
    /*this is for chapter 11 */
    .watermarks
    {
        font-style:italic;
        color:Gray;
    }
</style>
<!--checks before it submits-->
<script type="text/javascript">
//this is AJAX call structure
    function validatePhoneNumber(source, args) 
    {
        var phoe = document.getElementById('<%=phoe.ClientID %>');
        var busphone = document.getElementById('<%= busphone.ClientID %>');
        if (phoe.value != '' || busphone.value != '') {
            args.IsValid = true;
        }
        else {
            args.IsValid = false;
        }
    }

</script>


<asp:UpdatePanel  ID="UpdatePanel1" runat="server">
<ContentTemplate>
<div id ="Twrapper">
<table class="style1" runat="server" id="FormTable">
    <tr>
        <td colspan="3">
            contact me for more information</td>
    </tr>
    <!--the tool tip is added  because it provides the info of what is needed when mousedover. it also interacts with the special
        jquery DOM for the watermark-->
    <tr>
        <td class="style3">
            name</td>
        
        <td>
            <asp:TextBox ID="name" runat="server" ToolTip="enter your name" CssClass="inputbox"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="name" CssClass="errorMessage" Display="Dynamic" 
                ErrorMessage="required field">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style3">
            Email</td>
        <td>
            <asp:TextBox ID="emailadd" runat="server" ToolTip="enter your email" CssClass="inputbox"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="emailadd" CssClass="errorMessage" Display="Dynamic" 
                ErrorMessage="required field email">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="emailadd" CssClass="errorMessage" Display="Dynamic" 
                ErrorMessage="enter actual email" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="style5">
            email again</td>
        <td class="style6">
            <asp:TextBox ID="emailagain" runat="server" ToolTip="enter your email again" CssClass="inputbox"></asp:TextBox>
        </td>
        <td class="style6">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="emailagain" CssClass="errorMessage" Display="Dynamic" 
                ErrorMessage="required field">*</asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                CssClass="errorMessage" Display="Dynamic" ErrorMessage="required field" 
                ControlToCompare="emailadd" ControlToValidate="emailagain">*</asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="style3">
            phonebus</td>
        <td>
            <asp:TextBox ID="busphone" runat="server" ToolTip="enter your business phone" CssClass="inputbox"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style4">
            phone</td>
        <td class="style2">
            <asp:TextBox ID="phoe" runat="server" ToolTip="enter your home phone" CssClass="inputbox"></asp:TextBox>
        </td>
        <td class="style2">
            <asp:CustomValidator ID="CustomValidator1" runat="server" 
                ClientValidationFunction="validatePhoneNumber" CssClass="errorMessage" 
                Display="Dynamic" ErrorMessage="enter your home phone">*</asp:CustomValidator>
        </td>
    </tr>
    <tr>
        <td class="style3">
            &nbsp;</td>
        <td>
            <asp:TextBox ID="comment" runat="server" Height="80px" TextMode="MultiLine" 
                ToolTip="enter your comments" CssClass="inputbox"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                CssClass="errorMessage" Display="Dynamic" ErrorMessage="comment required" 
                ControlToValidate="comment">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style3">
            &nbsp;</td>
        <td>
            <asp:Button ID="send" runat="server" Text="sendme" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style3" colspan="3">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                CssClass="errorMessage" 
                
                HeaderText="wendy the server says that you have to correct the following mistakes:" />
        </td>
    </tr>
</table>
</div>
<asp:Label ID="Messagereply" runat="server" Text="Message Sent" CssClass="ATT"
    Visible="False" />
    <br />
    <p runat="server" id="Messa" visible="false">Thank you for your message, wendy sent your message and we will get 
    back in touch with as soon as possible.</p>
    </ContentTemplate></asp:UpdatePanel>
<asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanel1">
<ProgressTemplate>
<div class="wait">Please wait a few seconds while wendy processes your request</div>
</ProgressTemplate>
</asp:UpdateProgress>
<script src="../scripts/jquery.updnWatermark.js" type="text/javascript"></script>
<script type="text/javascript">
//this is a jQuery call structure
    $(function () {
        //this is taken out because its buggy and when you get to page 397 its no longer needed. works but is
        //buggy. it gets replaced with the plugin code
        // $(':input[type=text], textarea').each
        //     (function () {
        //         var newText = 'please enter your' +
        //        $(this).parent().prev().text().toLowerCase().trim();
        //         $(this).attr('value', newText);
        //    }).one('focus', function () {
        //             this.value = '', this.className = ''
        //            }).addClass('watermarks').css('width', '300px');
        //the following is the plugin code that replaces the grayed out code
        $.updnWatermark.attachAll({ cssClass: 'watermarks' });




        $('form').bind('submit', function () {
            if (Page_IsValid) {
                $('#Twrapper').slideUp(3050);
            }
        });

    });
    //do not put a call to function pageLoad() on inside of Get/$(function  pageload is a hook to call the ajax framework that also fires after a partial page update
    //its similar to (document).ready(function)(). its part of jquerys ajax intergration
    //which uses a combination of ASP.NET AJAX and jQuery: refer to page 395/396
        function pageLoad() {
            $('.ATT').animate({ width: '600px' }, 3000).animate({ width: '100px' }, 3000).fadeOut('slow');
        }


   

</script>