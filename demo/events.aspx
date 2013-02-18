<%@ Page Title="events demo" Language="VB" MasterPageFile="~/masterpages/Frontend.master" AutoEventWireup="false" CodeFile="events.aspx.vb" Inherits="demo_events" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
   <table>
   <tr>
   <td><h1>no postback</h1><asp:Label ID="nopostback" runat="server"></asp:Label></td>
   <td><h1>postback</h1><asp:Label ID="postback" runat="server" /></td>
 
   </tr>
   </table>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="Id" DataSourceID="EntityDataSource1" AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" 
                SortExpression="Id" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="Sorder" HeaderText="Sorder" 
                SortExpression="Sorder" />
        </Columns>
    </asp:GridView>
    <asp:Button ID="Button1" runat="server" Text="Button" />
    <asp:EntityDataSource ID="EntityDataSource1" runat="server" 
        ConnectionString="name=edoPLwrEntities" DefaultContainerName="edoPLwrEntities" 
        EnableFlattening="False" EntitySetName="genres">
    </asp:EntityDataSource>
</asp:Content>

