<%@ Page Title="" Language="C#" MasterPageFile="~/Login.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MoviesManagement.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 440px;
            border:2px  solid black;
            height: 349px;
        }
        .auto-style2 {
        }
        .auto-style3 {
        }
        .auto-style4 {
            width: 237px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" cellpadding="3" cellspacing="3" class="auto-style1">
        <tr>
            <td colspan="2" style="text-align:center"><strong>LOGIN</strong></td>
        </tr>
        <tr>
            <td class="auto-style3">User Name</td>
            <td class="auto-style4">
                <asp:TextBox ID="UserNameTextBox" runat="server" Height="39px" OnTextChanged="TextBox1_TextChanged" Width="213px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UserNameTextBox" Display="Dynamic" ErrorMessage="User Name is required" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Password</td>
            <td class="auto-style4">
                <asp:TextBox ID="PasswordTextBox" runat="server" Height="39px" TextMode="Password" Width="213px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="PasswordTextBox" Display="Dynamic" ErrorMessage="Password is Required" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                &nbsp;</td>
            <td class="auto-style2">
                <asp:Button ID="Button1" runat="server" Height="42px" OnClick="Button1_Click" Text="Login" Width="171px" /></td>
        </tr>
        <tr>
            <td class="auto-style3" colspan="2">
                
                <a href="RegistrationForm.aspx">Haven't Registered Yet.? Sign Up</a>
            </td>
        </tr>
    </table>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
</asp:Content>
