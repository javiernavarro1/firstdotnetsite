<%@ Page Title="add reviews" Language="VB" MasterPageFile="~/masterpages/backEnd.master" AutoEventWireup="false" CodeFile="Default2.aspx.vb" Inherits="mangement_addEditReviewHandCode" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="backendmaincontent" Runat="Server">

    <table class="style1">
        <tr>
            <td>
                <asp:Label ID="TitleTextLabel" runat="server" Text="Title" AssociatedControlID="TitleText"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TitleText" runat="server" Width= "450px" AccessKey="T"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="SummaryTextLabel" runat="server" Text="Summary" AssociatedControlID="SummaryText"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="SummaryText" runat="server" Width="450px" AccessKey="B" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="BodyTextLabel" runat="server" Text="Body" AssoicatedControlId= "BodyText"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="BodyText" runat="server" Width="450px" AccessKey="B" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="GenreListLabel" runat="server" Text="Genre" AssociatedControlID="GenreList"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="GenreList" runat="server" AccessKey="G" 
                    DataSourceID="EntityDataSource1" DataTextField="name" DataValueField="Id">
                </asp:DropDownList>
                <asp:EntityDataSource ID="EntityDataSource1" runat="server" 
                    ConnectionString="name=edoPLwrEntities" DefaultContainerName="edoPLwrEntities" 
                    EnableFlattening="False" EntitySetName="genres" Select="it.[Id], it.[name]">
                </asp:EntityDataSource>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="AuthorizedLabel" runat="server" Text="Authorized" AssociatedControlID="Authorized"></asp:Label>
            </td>
            <td>
                <asp:CheckBox ID="Authorized" runat="server" AccessKey="A"/>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="SaveButton" runat="server" Text="Save Me!"  AccessKey="S"/>
            </td>
        </tr>
    </table>

</asp:Content>

