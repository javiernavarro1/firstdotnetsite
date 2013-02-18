<%@ Page Language="VB" AutoEventWireup="false" CodeFile="container.aspx.vb" Inherits="demo_container" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <asp:Panel ID="Panel1" runat="server" Visible="False">
        <asp:Wizard ID="Wizard1" runat="server" Height="170px" Width="526px" 
            ActiveStepIndex="0">
            <WizardSteps>
                <asp:WizardStep runat="server" title="About you">
                    Type your name :
                    <asp:TextBox ID="TextBoxname" runat="server"></asp:TextBox>
                </asp:WizardStep>
                <asp:WizardStep runat="server" title="favorite language" StepType="Finish">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>c#</asp:ListItem>
                        <asp:ListItem>C++</asp:ListItem>
                        <asp:ListItem>vb.net</asp:ListItem>
                    </asp:DropDownList>
                </asp:WizardStep>
                <asp:WizardStep runat="server" Title="ready">
                    <asp:Label ID="result" runat="server" Text="Label"></asp:Label>
                </asp:WizardStep>
            </WizardSteps>
        </asp:Wizard>
        <br />

    </asp:Panel>
    <p>

        <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" 
            Text="click on me" />
    </p>
    </form>
</body>
</html>
