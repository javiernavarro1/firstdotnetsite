<%@ Page Title="Generes backend" Language="VB" MasterPageFile="~/masterpages/backEnd.master" AutoEventWireup="false" CodeFile="genres.aspx.vb" Inherits="mangement_Genres" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="backendmaincontent" Runat="Server">
   
    <asp:Label ID="ErrorM" runat="server" CssClass="ErrorM" 
        EnableViewState="False" ></asp:Label>
   
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
    AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" 
    DataSourceID="SqlDataSource1" 
    EmptyDataText="There are no data records to display." CellPadding="4" 
        ForeColor="#333333" GridLines="None">
       
    <Columns>
        <asp:TemplateField ShowHeader="False">
            <EditItemTemplate>
                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" 
                    CommandName="Update" Text="Update"></asp:LinkButton>
                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                    CommandName="Cancel" Text="Cancel"></asp:LinkButton>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                    CommandName="Edit" Text="Edit"></asp:LinkButton>
                &nbsp;<asp:LinkButton ID="deleteLink" runat="server" CausesValidation="False" 
                    CommandName="Delete" Text="Delete"></asp:LinkButton>
            </ItemTemplate>
            <ItemStyle Width="100px" />
        </asp:TemplateField>
        
        <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" 
            ItemStyle-width="200px" >
<ItemStyle Width="200px"></ItemStyle>
        </asp:BoundField>
        <asp:BoundField DataField="Sorder" HeaderText="Sort Order" 
            SortExpression="Sorder" />
    </Columns>
       </asp:GridView>


    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        DataKeyNames="Id" DataSourceID="SqlDataSource1" DefaultMode="Insert" 
        Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" 
                ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="Sorder" HeaderText="Sorder" 
                SortExpression="Sorder" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>


<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:testsampleConnectionString1 %>" 
    DeleteCommand="DELETE FROM [genres] WHERE [Id] = @Id" 
    InsertCommand="INSERT INTO [genres] ([name], [Sorder]) VALUES (@name, @Sorder)" 
    ProviderName="<%$ ConnectionStrings:testsampleConnectionString1.ProviderName %>" 
    SelectCommand="SELECT genres.Id, genres.name, genres.Sorder, COUNT (reviews.Id) As NumberOfReviews FROM genres LEFT OUTER JOIN reviews ON genres.Id = reviews.genreId GROUP BY genres.Id, genres.name, genres.Sorder" 
    UpdateCommand="UPDATE [genres] SET [name] = @name, [Sorder] = @Sorder WHERE [Id] = @Id">
    <DeleteParameters>
        <asp:Parameter Name="Id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="name" Type="String" />
        <asp:Parameter Name="Sorder" Type="Int32" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="name" Type="String" />
        <asp:Parameter Name="Sorder" Type="Int32" />
        <asp:Parameter Name="Id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
 
 <!-- this provides the odd coloring in the table-->
   <script type="text/javascript">
       $(function () {
           $('.gridView tr:odd:not(.gridViewPager)').addClass('GridViewAlternatingRowStyle');
       });
   
   </script>

   
</asp:Content>

