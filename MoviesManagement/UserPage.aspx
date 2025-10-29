<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="UserPage.aspx.cs" Inherits="MoviesManagement.UserPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebFormMoviesDBConnectionString2 %>" DeleteCommand="DELETE FROM [Movies] WHERE [MovieID] = @MovieID" InsertCommand="INSERT INTO [Movies] ([Title], [Genre], [Director], [Language], [ReleaseYear], [Rating], [BoxOfficeCollection], [Description]) VALUES (@Title, @Genre, @Director, @Language, @ReleaseYear, @Rating, @BoxOfficeCollection, @Description)" ProviderName="<%$ ConnectionStrings:WebFormMoviesDBConnectionString2.ProviderName %>" SelectCommand="SELECT [MovieID], [Title], [Genre], [Director], [Language], [ReleaseYear], [Rating], [BoxOfficeCollection], [Description] FROM [Movies]" UpdateCommand="UPDATE [Movies] SET [Title] = @Title, [Genre] = @Genre, [Director] = @Director, [Language] = @Language, [ReleaseYear] = @ReleaseYear, [Rating] = @Rating, [BoxOfficeCollection] = @BoxOfficeCollection, [Description] = @Description WHERE [MovieID] = @MovieID">
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
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="MovieID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="MovieID" HeaderText="MovieID" InsertVisible="False" ReadOnly="True" SortExpression="MovieID" />
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:BoundField DataField="Genre" HeaderText="Genre" SortExpression="Genre" />
            <asp:BoundField DataField="Director" HeaderText="Director" SortExpression="Director" />
            <asp:BoundField DataField="Language" HeaderText="Language" SortExpression="Language" />
            <asp:BoundField DataField="ReleaseYear" HeaderText="ReleaseYear" SortExpression="ReleaseYear" />
            <asp:BoundField DataField="Rating" HeaderText="Rating" SortExpression="Rating" />
            <asp:BoundField DataField="BoxOfficeCollection" HeaderText="BoxOfficeCollection" SortExpression="BoxOfficeCollection" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>
</asp:Content>

