<%@ Page Title="" Language="VB" MasterPageFile="~/masterpages/backEnd.master" AutoEventWireup="false" CodeFile="reviews.aspx.vb" Inherits="mangement_reviews" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="backendmaincontent" Runat="Server">
    <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" 
        AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="name" 
        DataValueField="Id">
        <asp:ListItem Value="">Make a selection</asp:ListItem>
    </asp:DropDownList>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="Id" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:HyperLinkField DataNavigateUrlFields="id" 
                DataNavigateUrlFormatString="addEditReviewHandCode.aspx?id={0}" DataTextField="title" 
                HeaderText="title" />
            <asp:TemplateField HeaderText="authorized" SortExpression="authorized">
                
                   
                <ItemTemplate>
                    <asp:Label ID="authorizedLable" runat="server" Text='<%# GetBooleanText(Eval("authorized")) %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="createDateTime" DataFormatString="{0:g}" 
                HeaderText="createDateTime" SortExpression="createDateTime" />
            <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>
      <a href="addEditReviewHandCode.aspx">insert a new review</a>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:testsampleConnectionString1 %>" 
        DeleteCommand="DELETE FROM [reviews] WHERE [Id] = @Id" 
        InsertCommand="INSERT INTO [reviews] ([title], [authorized], [createDateTime]) VALUES (@title, @authorized, @createDateTime)" 
        SelectCommand="SELECT [Id], [title], [authorized], [createDateTime] FROM [reviews] WHERE ([genreId] = @genreId)" 
        UpdateCommand="UPDATE [reviews] SET [title] = @title, [authorized] = @authorized, [createDateTime] = @createDateTime WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="title" Type="String" />
            <asp:Parameter Name="authorized" Type="Boolean" />
            <asp:Parameter Name="createDateTime" Type="DateTime" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="genreId" 
                PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="title" Type="String" />
            <asp:Parameter Name="authorized" Type="Boolean" />
            <asp:Parameter Name="createDateTime" Type="DateTime" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
  
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:testsampleConnectionString1 %>" 
        SelectCommand="SELECT [Id], [name] FROM [genres] ORDER BY [Sorder]">
    </asp:SqlDataSource>
</asp:Content>

