<%@ Page Title="" Language="VB" MasterPageFile="~/masterpages/backEnd.master" AutoEventWireup="false" CodeFile="EAreview.aspx.vb" Inherits="mangement_EAreview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="backendmaincontent" Runat="Server">
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        DataKeyNames="Id" DataSourceID="SqlDataSource1" DefaultMode="Insert" 
        Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="updateDateTime" HeaderText="updateDateTime" 
                SortExpression="updateDateTime" Visible="False" />
            <asp:TemplateField HeaderText="title" SortExpression="title">
                <EditItemTemplate>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBox1" runat="server" 
                        ErrorMessage="Enter A title"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("title") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("title") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2"  ControlToValidate="TextBox1" runat="server" 
                        ErrorMessage="Enter A title"></asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("title") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="summary" SortExpression="summary">
                <EditItemTemplate>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="TextBox2" runat="server" 
                        ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="TextBox2"  TextMode="MultiLine"  Width="500" Height="100" runat="server" Text='<%# Bind("summary") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="TextBox2" runat="server" 
                        ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="TextBox2" TextMode="MultiLine"  Width="500" Height="100" runat="server" Text='<%# Bind("summary") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("summary") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="body" SortExpression="body">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" TextMode="MultiLine"  Width="500" Height="100" runat="server" Text='<%# Bind("body") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox3" TextMode="MultiLine"  Width="500" Height="100" runat="server" Text='<%# Bind("body") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("body") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="genreId" SortExpression="genreId">
                <EditItemTemplate>
                  <asp:DropDownList ID="dropdownlist1" runat="server" 
                        DataSourceID="genresDataSource" DataTextField="name" DataValueField="Id" 
                        SelectedValue='<%# Bind("genreId") %>'></asp:DropDownList>
                
                </EditItemTemplate>
                <InsertItemTemplate>
                   <asp:DropDownList ID="dropdownlist1" runat="server" 
                        DataSourceID="genresDataSource" DataTextField="name" DataValueField="Id" 
                        SelectedValue='<%# Bind("genreId") %>'></asp:DropDownList>
                   </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("genreId") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CheckBoxField DataField="authorized" HeaderText="authorized" 
                SortExpression="authorized" />
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" 
                ReadOnly="True" SortExpression="Id" />
            <asp:CommandField ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:testsampleConnectionString1 %>" 
        DeleteCommand="DELETE FROM [reviews] WHERE [Id] = @Id" 
        InsertCommand="INSERT INTO [reviews] ([updateDateTime], [authorized], [genreId], [body], [summary], [title]) VALUES (@updateDateTime, @authorized, @genreId, @body, @summary, @title)" 
        SelectCommand="SELECT [updateDateTime], [authorized], [genreId], [body], [summary], [title], [Id] FROM [reviews] WHERE ([Id] = @Id)" 
        UpdateCommand="UPDATE [reviews] SET [updateDateTime] = @updateDateTime, [authorized] = @authorized, [genreId] = @genreId, [body] = @body, [summary] = @summary, [title] = @title WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="updateDateTime" Type="DateTime" />
            <asp:Parameter Name="authorized" Type="Boolean" />
            <asp:Parameter Name="genreId" Type="Int32" />
            <asp:Parameter Name="body" Type="String" />
            <asp:Parameter Name="summary" Type="String" />
            <asp:Parameter Name="title" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="Id" QueryStringField="Id" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="updateDateTime" Type="DateTime" />
            <asp:Parameter Name="authorized" Type="Boolean" />
            <asp:Parameter Name="genreId" Type="Int32" />
            <asp:Parameter Name="body" Type="String" />
            <asp:Parameter Name="summary" Type="String" />
            <asp:Parameter Name="title" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="genresDataSource" runat="server" 
        ConnectionString="<%$ ConnectionStrings:testsampleConnectionString1 %>" 
        SelectCommand="SELECT [Id], [name] FROM [genres] ORDER BY [Sorder]">
    </asp:SqlDataSource>
</asp:Content>

