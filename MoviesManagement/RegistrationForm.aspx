<%@ Page Title="" Language="C#" MasterPageFile="~/Login.Master" AutoEventWireup="true" CodeBehind="RegistrationForm.aspx.cs" Inherits="MoviesManagement.RegistrationForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin: auto;
            width: 559px;
            border-style: solid;
            border-width: 1px;
            height: 731px;
        }
        .auto-style2 {
        }
        .auto-style3 {
            height: 30px;
        }
        .auto-style4 {
            width: 200px;
            height: 46px;
        }
        .auto-style5 {
            height: 46px;
        }
        .auto-style6 {
            height: 61px;
        }
        .auto-style7 {
            height: 71px;
        }
    </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellpadding="3" cellspacing="3" class="auto-style1">
        <tr>
            <td colspan="2" style="text-align:center; font-size:large; " class="auto-style3">  REGISTRATION</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;First Name</td>
            <td>
                <asp:TextBox ID="FirstNameTextBox" runat="server" Height="40px" Width="221px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="FirstNameTextBox" Display="Dynamic" ErrorMessage="Please Enter Your First Name" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="FirstNameTextBox" Display="Dynamic" ErrorMessage="Enter Valid First Name" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^[A-Za-z]+$">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Last Name</td>
            <td>
                <asp:TextBox ID="LastNameTextBox" runat="server" Height="40px" Width="221px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="LastNameTextBox" Display="Dynamic" ErrorMessage="Please Enter Your Last Name" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="LastNameTextBox" Display="Dynamic" ErrorMessage="Enter Valid Last Name" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^[A-Za-z]+$">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">E-mail</td>
            <td>
                <asp:TextBox ID="EmailTextBox" runat="server" Height="40px" TextMode="Email" Width="221px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="EmailTextBox" Display="Dynamic" ErrorMessage="Please Enter Your Email" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="EmailTextBox" ErrorMessage="Enter Valid Email" ForeColor="Red" ValidationExpression="(?i)^[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Age</td>
            <td>
                <asp:TextBox ID="AgeTextBox" runat="server" Height="40px" TextMode="Number" Width="221px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="AgeTextBox" Display="Dynamic" ErrorMessage="Please Enter Your age" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="AgeTextBox" ErrorMessage="Age should be above 18 below 100" ForeColor="Red" MaximumValue="100" MinimumValue="18" SetFocusOnError="True" Type="Integer">*</asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Gender</td>
            <td>
                <asp:RadioButton ID="MaleRadioButton" runat="server" GroupName="Gender" Text="Male" />
                <br />
                <asp:RadioButton ID="FemaleRadioButton" runat="server" GroupName="Gender" Text="Female" />
                <asp:CustomValidator ID="CustomValidator1" runat="server" Display="Dynamic" ErrorMessage="Select Your Gender" ForeColor="Red" OnServerValidate="CustomValidator1_ServerValidate" SetFocusOnError="True">*</asp:CustomValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Phone Number</td>
            <td class="auto-style6">
                <asp:TextBox ID="PhoneNumberTextBox" runat="server" Height="40px" TextMode="Phone" Width="221px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="PhoneNumberTextBox" Display="Dynamic" ErrorMessage="Please Enter Your Phone Number" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="PhoneNumberTextBox" Display="Dynamic" ErrorMessage="Enter valid number" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^[0-9]{10}$">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">User Name</td>
            <td>
                <asp:TextBox ID="UserNameTextBox" runat="server" Height="40px" Width="221px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="UserNameTextBox" Display="Dynamic" ErrorMessage="Please Enter Your User Name" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="UserNameTextBox" ErrorMessage="Enter Valid Username" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^[A-Za-z][A-Za-z0-9._-]*[A-Za-z0-9]$">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Password</td>
            <td>
                <asp:TextBox ID="PasswordTextBox" runat="server" Height="40px" Width="221px" MaxLength="10" ToolTip="password should contain an upper case , an lowercase , number and a special character "></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="PasswordTextBox" Display="Dynamic" ErrorMessage="Please Enter a Password" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="PasswordTextBox" Display="Dynamic" ErrorMessage="The password should have atleast one 1 special character,number , lowercase and uppercase alphabet with max length of 8 to 10 characters" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[@$!%*?&amp;])[A-Za-z\d@$!%*?&amp;]{8,}$">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Confirm Password</td>
            <td>
                <asp:TextBox ID="ConfirmTextBox" runat="server" Height="40px" TextMode="Password" Width="221px"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="PasswordTextBox" ControlToValidate="ConfirmTextBox" Display="Dynamic" ErrorMessage="Password Does not match" ForeColor="Red" SetFocusOnError="True">*</asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Terms &amp; Conditions</td>
            <td>
                <asp:CheckBox ID="TermsCheckBox" runat="server" Text="I agree the terms &amp; Conditions" />

            &nbsp;<asp:CustomValidator ID="CustomValidator2" runat="server" Display="Dynamic" ErrorMessage="agree to terms and conditions" ForeColor="Red" OnServerValidate="CustomValidator2_ServerValidate" SetFocusOnError="True">*</asp:CustomValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4"></td>
            <td class="auto-style5">
                <asp:Button ID="Button1" runat="server" Height="37px" Text="Register" Width="190px" OnClick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style7" colspan="2">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Size="Large" ForeColor="Red" />
            </td>
        </tr>
    </table>
</asp:Content>
