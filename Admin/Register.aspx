<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Admin_Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <fieldset class="register">
    <ContentTemplate>
                    <h2>
                        Create a New Account
                    </h2>
                    <p>
                        Use the form below to create a new account.
                    </p>
                    <p>
                        Passwords are required to be a minimum of <%= Membership.MinRequiredPasswordLength %> characters in length.
                    </p>
                    <span class="failureNotification">
                        <asp:Literal ID="ErrorMessage" runat="server"></asp:Literal>
                    </span>
                    <asp:ValidationSummary ID="RegisterUserValidationSummary" runat="server" CssClass="failureNotification" 
                         ValidationGroup="RegisterUserValidationGroup"/>
                    <div class="accountInfo">
                        <fieldset class="register">
                            <legend>Account Information</legend>
                            <p>
                                <asp:Label ID="UserIDLabel" runat="server" AssociatedControlID="txtUserID">UserID:</asp:Label>
                                <asp:TextBox ID="txtUserID" runat="server" CssClass="textEntry"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="txtUserID" 
                                     CssClass="failureNotification" ErrorMessage="User ID is required." ToolTip="User ID is required." 
                                     ValidationGroup="RegisterUserValidationGroup">*</asp:RequiredFieldValidator>
                            </p>
                            <p>
                                <asp:Label ID="LabelFullName" runat="server" AssociatedControlID="txtFullName">Full name:</asp:Label>
                                <asp:TextBox ID="txtFullName" runat="server" CssClass="textEntry"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="FullNameRequired" runat="server" ControlToValidate="txtFullName" 
                                     CssClass="failureNotification" ErrorMessage="Full name is required." ToolTip="Full name is required." 
                                     ValidationGroup="RegisterUserValidationGroup">*</asp:RequiredFieldValidator>

                            </p>
                            <p>
                                <asp:Label ID="Department" runat="server" AssociatedControlID="DropDownListDepart">Department:</asp:Label>
                                <asp:DropDownList ID="DropDownListDepart" runat="server" DataSourceID="SqlDataSource1" 
                                    DataTextField="name" DataValueField="departID">

                                </asp:DropDownList>

                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT [name], [departID] FROM [Depart]"></asp:SqlDataSource>
                            </p>
                            <p>
                                <asp:Label ID="lbPassword" runat="server" AssociatedControlID="txtPassword">Password:</asp:Label>
                                <asp:TextBox ID="txtPassword" runat="server" CssClass="passwordEntry" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="txtPassword" 
                                     CssClass="failureNotification" ErrorMessage="Password is required." ToolTip="Password is required." 
                                     ValidationGroup="RegisterUserValidationGroup">*</asp:RequiredFieldValidator>
                            </p>
                            <p>
                                <asp:Label ID="ConfirmPasswordLabel" runat="server" AssociatedControlID="txtConfirmPassword">Confirm Password:</asp:Label>
                                <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="passwordEntry" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ControlToValidate="txtConfirmPassword" CssClass="failureNotification" Display="Dynamic" 
                                     ErrorMessage="Confirm Password is required." ID="ConfirmPasswordRequired" runat="server" 
                                     ToolTip="Confirm Password is required." ValidationGroup="RegisterUserValidationGroup">*</asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" 
                                     CssClass="failureNotification" Display="Dynamic" ErrorMessage="The Password and Confirmation Password must match."
                                     ValidationGroup="RegisterUserValidationGroup">*</asp:CompareValidator>
                            </p>
                            <p>                                
                                <asp:Label ID="lbUserType" runat="server" AssociatedControlID="DropDownListUserType">User Type</asp:Label>
                                <asp:DropDownList ID="DropDownListUserType" runat="server">
                                    <asp:ListItem Text="Admin" Value="0"></asp:ListItem>
                                    <asp:ListItem Text="User" Value="1"></asp:ListItem>
                                    <asp:ListItem Text="Vip-User" Value="2"></asp:ListItem>
                                    <asp:ListItem Text="Chef" Value="3"></asp:ListItem>
                                </asp:DropDownList>
                            </p>
                        </fieldset>
                        <p class="submitButton">
                            <asp:Button ID="CreateUserButton" runat="server" CommandName="MoveNext" Text="Create User" 
                                 ValidationGroup="RegisterUserValidationGroup" CssClass="submitButton" 
                                onclick="CreateUserButton_Click"/>
                        </p>
                        <p>
                            <asp:Label ID = "lbOk" Text="New user is added!" runat="server" CssClass="title" Visible="false"></asp:Label>
                        </p>
                    </div>
                </ContentTemplate>
    </fieldset>
   
   
</asp:Content>

