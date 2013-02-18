<%@ Page Language="VB" AutoEventWireup="false" CodeFile="list controls.aspx.vb" Inherits="demo_list_controls" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>C++</asp:ListItem>
            <asp:ListItem Value="VB.net">visualbasic</asp:ListItem>
            <asp:ListItem>C#</asp:ListItem>
        </asp:DropDownList>
        <asp:CheckBoxList ID="CheckBoxList1" runat="server">
        <asp:ListItem>C++</asp:ListItem>
            <asp:ListItem Value="VB.net">visualbasic</asp:ListItem>
            <asp:ListItem>C#</asp:ListItem>
        </asp:CheckBoxList>
    
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
&nbsp;<br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Button" />
    
    </div>
    </form>
</body>
</html>
