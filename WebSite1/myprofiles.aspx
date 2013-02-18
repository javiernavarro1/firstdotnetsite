<%@ Page Title="my profiles" Language="VB" MasterPageFile="~/masterpages/Frontend.master" AutoEventWireup="false" CodeFile="myprofiles.aspx.vb" Inherits="_myprofiles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <h1>mon profil
    </h1>
    <p>
        apporter des modifications à ici votre profil</p>
    <table class="style1">
        <tr>
            <td>
                <asp:Label Text="Favorite" runat="server" /></td>
            <td>
                <asp:CheckBoxList ID="PreferenceList" runat="server" 
                    DataSourceID="EntityDataSource1" DataTextField="name" DataValueField="Id">
                </asp:CheckBoxList>
                <asp:EntityDataSource ID="EntityDataSource1" runat="server" 
                    ConnectionString="name=edoPLwrEntities" DefaultContainerName="edoPLwrEntities" 
                    EnableFlattening="False" EntitySetName="genres" OrderBy="it.name" 
                    Select="it.[Id], it.[name]">
                </asp:EntityDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="FirstNameLabel" runat="server" Text="First Name" AssociatedControlID="FirstName"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="FirstName" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="FirstName"
                   display="Dynamic" ErrorMessage="First Name is Required "></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LastNameLabel" runat="server" Text="Last Name" AssociatedControlID="LastName"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="LastName" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="LastName"
              Display="Dynamic"  ErrorMessage="Last Name is Required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="DateOfBirthLabel" runat="server" Text="DateOfBirth" AssociatedControlID="DateOfBirth"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="DateOfBirth" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" controltovalidate="DateOfBirth"
display="Dynamic" ErrorMessage="Date of birth is required"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    display="Dynamic" ErrorMessage="Please enter a valid date" Controltovalidate="DateOfBirth" Operator="DataTypeCheck" Type ="Date"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="BioLabel" runat="server" Text="Biography" AssociatedControlID="Biography"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="Biography" runat="server" Height="80px" TextMode="MultiLine" 
                    Width="320px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="SaveButton" runat="server" Text="Save ME!!!" />
                 </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
  
  <br />

   <asp:ChangePassword ID="ChangePassword1" runat="server">
    </asp:ChangePassword>
</asp:Content>

