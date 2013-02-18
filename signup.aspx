<%@ Page Title="signacre" Language="VB" MasterPageFile="~/masterpages/Frontend.master" AutoEventWireup="false" CodeFile="signup.aspx.vb" Inherits="_signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" 
        LoginCreatedUser="False">
        <MailDefinition BodyFileName="~/App_Data/signupconfirm.txt" 
            Subject="Thank you for joining chunky monkey">
        </MailDefinition>
        <WizardSteps>
            <asp:CreateUserWizardStep runat="server" />
            <asp:CompleteWizardStep runat="server" />
        </WizardSteps>
    </asp:CreateUserWizard>
</asp:Content>

