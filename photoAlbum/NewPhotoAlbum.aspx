<%@ Page Title="create photo album" Language="VB" MasterPageFile="~/masterpages/Frontend.master" AutoEventWireup="false" CodeFile="NewPhotoAlbum.aspx.vb" Inherits="reviews_NewPhotoAlbum" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
   <!--make sure that entity is called correctly, if i change it, change the.edmx file in app code as well if not you will crash it
   since it will not know what it is calling as a foreign key in the database, instead it will refer to the same primary not the foreign key and 
   it will try to change it, the constraint will deny it and it will crash when it redirects to the other page and you try to save it-->
   
   
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        DataKeyNames="Id" DataSourceID="EntityDataSource1" DefaultMode="Insert" 
        Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" 
                SortExpression="Id" insertVisible ="False"></asp:BoundField>
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name">
            </asp:BoundField>
          
            <asp:CommandField ShowInsertButton="True" />
          
        </Fields>
    </asp:DetailsView>
    <asp:EntityDataSource ID="EntityDataSource1" runat="server" 
        ConnectionString="name=edoPLwrEntities" DefaultContainerName="edoPLwrEntities" 
        EnableFlattening="False" EnableInsert="True" EntitySetName="PhotoAlbums">
    </asp:EntityDataSource>
</asp:Content>

