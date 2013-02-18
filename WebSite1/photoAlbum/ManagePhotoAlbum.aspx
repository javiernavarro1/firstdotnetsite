<%@ Page Title="Manage PHoto al" Language="VB" MasterPageFile="~/masterpages/Frontend.master" AutoEventWireup="false" CodeFile="ManagePhotoAlbum.aspx.vb" Inherits="reviews_ManagePhotoAlbum" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" 
        DataSourceID="EntityDataSource1" InsertItemPosition="LastItem">
        
        <InsertItemTemplate>
            <li style="">
                Description:
                <!--validators-->
                <asp:RequiredFieldValidator ID="reqDesc" ControlToValidate="DescriptionTextBox"
                runat ="server" ErrorMessage="Please enter a description" />
                <asp:TextBox ID="DescriptionTextBox" runat="server" 
                    Text='<%# Bind("Description") %>' />
                
                <br />ToolTip:
                 <asp:RequiredFieldValidator ID="reqTooltip" ControlToValidate="ToolTipTextBox"
                runat ="server" ErrorMessage="Please enter a description for the tool tip" />
                <asp:TextBox ID="ToolTipTextBox" runat="server" Text='<%# Bind("ToolTip") %>' />
                
                <asp:FileUpload ID="FileUpload1" runat="server" />
                <asp:CustomValidator id="cusValImage" runat="server"
                     ErrorMessage="sorry but select a valid .jpg or .png file " />

                <br />
               
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                    Text="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                    Text="Clear" CausesValidation="false" />
            </li>
        </InsertItemTemplate>
        <ItemTemplate>
            <li style="">
                
                 Description:
                <asp:Label ID="DescriptionLabel" runat="server" 
                    Text='<%# Eval("Description") %>' />
                <br />
                ToolTip:
                <asp:Label ID="ToolTipLabel" runat="server" Text='<%# Eval("ToolTip") %>' />
                <br />
                <!--if it crashes change the id to ImageUrl-->
                <asp:Image ID="urlImage" runat="server" ImageUrl='<%# Eval("ImageUrl") %>' />
                  <br />
                
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                    Text="Delete"  CausesValidation="false"/>
            </li>
        </ItemTemplate>
        <LayoutTemplate>
            <ul class ="ItemContainer">
                <li runat="server" id="itemPlaceholder" />
            </ul>
            
            <div style="">
            </div>
            
        </LayoutTemplate>
    </asp:ListView>

    <!--make sure that the auto generated code adds the name to the query string parameter field correctly if not, it will crash.
      also get rid of any blank ""auto generated  code, if not it will cause it to crash as well-->
    <asp:EntityDataSource ID="EntityDataSource1" runat="server" 
        ConnectionString="name=edoPLwrEntities" DefaultContainerName="edoPLwrEntities" 
        EnableDelete="True" EnableFlattening="False" EnableInsert="True" 
        EntitySetName="Pictures" 
        Where="it.PhotoAlbum.Id = @photoAlbumId">
        <WhereParameters>
        
            <asp:QueryStringParameter Name="PhotoAlbumId" QueryStringField="PhotoAlbumId" 
                Type="Int32" />
        </WhereParameters>
    </asp:EntityDataSource>
</asp:Content>

