<%@ Page Language="VB" AutoEventWireup="false" CodeFile="state.aspx.vb" Inherits="demo_state" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" viewstatemode="enabled" Text="Label"></asp:Label>
                     <asp:Label ID="Label2" runat="server" Text="Label" ViewStateMode="Disabled"></asp:Label>

                </td>
                <td>
                    <asp:Button ID="setdate" runat="server" Text="setdate" />
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
                        BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" 
                        ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px">
                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" 
                            VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                        <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" 
                            Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                        <TodayDayStyle BackColor="#CCCCCC" />
                    </asp:Calendar>
                </td>
                <td>
                    <asp:Button ID="postback" runat="server" BackColor="Maroon" 
                        Font-Names="Arial Black" ForeColor="#10EF85" Text="post back(plain)" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
