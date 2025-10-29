<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="MoviesManagement.AdminPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 418px;
            height: 445px;
            margin-top:50px;
            border: 5px ridge black;
        }
        .auto-style2 {}
        .auto-style3 {
            width: 135px;
        }
        .auto-style4 {
            width: 266px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="MovieID" DataSourceID="SqlDataSource1" GridLines="Vertical" AllowSorting="True" ForeColor="Black" Height="276px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:TemplateField HeaderText="MovieID" InsertVisible="False" SortExpression="MovieID">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("MovieID") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("MovieID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Title" SortExpression="Title">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Title") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter a title" ControlToValidate="TextBox1" ForeColor="Red" SetFocusOnError="true">*</asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Title") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Genre" SortExpression="Genre">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Genre") %>'></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Please enter a Genre" ControlToValidate="TextBox2" ForeColor="Red" SetFocusOnError="true">*</asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Genre") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Director" SortExpression="Director">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Director") %>'></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter a Director Name" ControlToValidate="TextBox3" ForeColor="Red" SetFocusOnError="true">*</asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("Director") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Language" SortExpression="Language">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Language") %>'></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please enter Movies Language" ControlToValidate="TextBox4" ForeColor="Red" SetFocusOnError="true">*</asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("Language") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ReleaseYear" SortExpression="ReleaseYear">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" TextMode="Number" Text='<%# Bind("ReleaseYear") %>'></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please enter Released Year" ControlToValidate="TextBox5" ForeColor="Red" SetFocusOnError="true">*</asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("ReleaseYear") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Rating" SortExpression="Rating">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Rating") %>' TextMode="Number"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please enter Rating" ControlToValidate="TextBox6" ForeColor="Red" SetFocusOnError="true">*</asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("Rating") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="BoxOfficeCollection" SortExpression="BoxOfficeCollection">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("BoxOfficeCollection") %>' TextMode="Number"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please enter a Box Office Collection" ControlToValidate="TextBox7" ForeColor="Red" SetFocusOnError="true">*</asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("BoxOfficeCollection") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Description" SortExpression="Description">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("Description") %>' TextMode="MultiLine"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Please enter a title" ControlToValidate="TextBox8" ForeColor="Red" SetFocusOnError="true">*</asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label9" runat="server" Text='<%# Bind("Description") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FBFBF2" />
        <SortedAscendingHeaderStyle BackColor="#848384" />
        <SortedDescendingCellStyle BackColor="#EAEAD3" />
        <SortedDescendingHeaderStyle BackColor="#575357" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebFormMoviesDBConnectionString2 %>" DeleteCommand="DELETE FROM [Movies] WHERE [MovieID] = @MovieID" InsertCommand="INSERT INTO [Movies] ([Title], [Genre], [Director], [Language], [ReleaseYear], [Rating], [BoxOfficeCollection], [Description]) VALUES (@Title, @Genre, @Director, @Language, @ReleaseYear, @Rating, @BoxOfficeCollection, @Description)" SelectCommand="SELECT [MovieID], [Title], [Genre], [Director], [Language], [ReleaseYear], [Rating], [BoxOfficeCollection], [Description] FROM [Movies]" UpdateCommand="UPDATE [Movies] SET [Title] = @Title, [Genre] = @Genre, [Director] = @Director, [Language] = @Language, [ReleaseYear] = @ReleaseYear, [Rating] = @Rating, [BoxOfficeCollection] = @BoxOfficeCollection, [Description] = @Description WHERE [MovieID] = @MovieID">
        <DeleteParameters>
            <asp:Parameter Name="MovieID" Type="Int64" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Genre" Type="String" />
            <asp:Parameter Name="Director" Type="String" />
            <asp:Parameter Name="Language" Type="String" />
            <asp:Parameter Name="ReleaseYear" Type="Int32" />
            <asp:Parameter Name="Rating" Type="Decimal" />
            <asp:Parameter Name="BoxOfficeCollection" Type="Decimal" />
            <asp:Parameter Name="Description" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Genre" Type="String" />
            <asp:Parameter Name="Director" Type="String" />
            <asp:Parameter Name="Language" Type="String" />
            <asp:Parameter Name="ReleaseYear" Type="Int32" />
            <asp:Parameter Name="Rating" Type="Decimal" />
            <asp:Parameter Name="BoxOfficeCollection" Type="Decimal" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="MovieID" Type="Int64" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:Panel ID="Panel1" runat="server" Height="627px" Width="1321px">
        <table align="center" cellpadding="3" cellspacing="3" class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="2">INSERT MOVIES&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Movies Title</td>
                <td class="auto-style4">
                    <asp:TextBox ID="MoviesTitleTextBox" runat="server" Height="37px" Width="196px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="MoviesTitleTextBox" Display="Dynamic" ErrorMessage="Please enter Movie Title" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Genre</td>
                <td class="auto-style4">
                    <asp:TextBox ID="GenreTextBox" runat="server" Height="37px" Width="196px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="GenreTextBox" Display="Dynamic" ErrorMessage="Please enter Movie Genre" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Director</td>
                <td class="auto-style4">
                    <asp:TextBox ID="DirectorTextBox1" runat="server" Height="37px" Width="196px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="DirectorTextBox1" Display="Dynamic" ErrorMessage="Please enter Director Name" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Language</td>
                <td class="auto-style4">
                    <asp:TextBox ID="LangTextBox" runat="server" Height="37px" Width="196px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="LangTextBox" Display="Dynamic" ErrorMessage="Please enter Movie language" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Relese Year</td>
                <td class="auto-style4">
                    <asp:TextBox ID="YearTextBox" runat="server" Height="37px" TextMode="Number" Width="196px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="YearTextBox" Display="Dynamic" ErrorMessage="Please enter Movie Year" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Rating</td>
                <td class="auto-style4">
                    <asp:TextBox ID="RatingTextBox" runat="server" Height="37px" TextMode="Number" Width="196px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="RatingTextBox" Display="Dynamic" ErrorMessage="Please enter Movie Rating" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Box Office Collection</td>
                <td class="auto-style4">
                    <asp:TextBox ID="BoxTextBox" runat="server" Height="37px" TextMode="Number" Width="196px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="BoxTextBox" Display="Dynamic" ErrorMessage="Please enter Movie Collection" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Description</td>
                <td class="auto-style4">
                    <asp:TextBox ID="DescriptionTextBox" runat="server" Height="37px" TextMode="MultiLine" Width="196px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="MoviesTitleTextBox" Display="Dynamic" ErrorMessage="Please enter Movie Description" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Insert" Width="151px" />
                </td>
            </tr>
        </table>
    </asp:Panel>
    <br />
    </asp:Content>
