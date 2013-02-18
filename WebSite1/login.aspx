<%@ Page Title="noerror" Language="VB" MasterPageFile="~/masterpages/Frontend.master" AutoEventWireup="false" CodeFile="login.aspx.vb" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <h1>Login now
        </h1>
    
    <asp:LoginView ID="LoginView1" runat="server">
        <AnonymousTemplate>
            <asp:Login ID="Login1" runat="server" CreateUserUrl="~/signup.aspx" 
             CreateUserText="sign up for an account" ></asp:Login>
             <br />
            <br />
            <asp:PasswordRecovery ID="PasswordRecovery1" runat="server">
            <MailDefinition  Subject="password recovery from dumb dumb.com" 
                    BodyFileName="~/App_Data/TextFile.txt"></MailDefinition>
            </asp:PasswordRecovery>
        </AnonymousTemplate>
        <LoggedInTemplate>
            You are now logged in
        </LoggedInTemplate>
    </asp:LoginView>
    
  <asp:LoginStatus ID="LoginStatus1" runat="server" />
</asp:Content>

