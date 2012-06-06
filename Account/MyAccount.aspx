<%@ Page Language="C#" MasterPageFile="AccountMasterPage.master" AutoEventWireup="true" CodeFile="MyAccount.aspx.cs" Inherits="Account_MyAccount" Title="Edit User Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">    
                <fieldset>                    
                <legend>User Edition</legend>
                <table align="center" border="0" cellpadding="5" cellspacing="0">
                    <tr>
                        <td>
                            User ID</td>
                        <td>
                            :</td>
                        <td>
                            <asp:TextBox ID="txtUserID" Enabled="false" runat="server" ReadOnly="True"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>
                            Password</td>
                        <td>
                            :</td>
                        <td>
                            <asp:TextBox ID="txtPassword" runat="server" Width="300px" TextMode="Password" Enabled="false"></asp:TextBox></td>
                            

                    </tr>
                    <tr>
                            <td></td>
                            <td></td>
                            <td><asp:Button ID = "btChangePassword" Text="Change" runat="server" 
                                    onclick="btChangePassword_Click"/> 
                    <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="txtPassword" 
                                     CssClass="failureNotification" ErrorMessage="Password is required." ToolTip="Password is required." 
                                     ValidationGroup="RegisterUserValidationGroup">*</asp:RequiredFieldValidator>


                                    </td>
                           </tr>
                    <tr>
                        <td>
                            Full Name
                        </td>
                        <td>
                            :</td>
                        <td>
                            <asp:TextBox ID="txtFullName" runat="server" Width="300px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>
                            Department
                         </td>
                        <td>
                            :</td>
                        <td>
                            <asp:DropDownList runat="server" ID="DropDownListDepart" DataSourceID="SqlDataSource1" 
                                DataTextField="name" DataValueField="departID">
                                
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                SelectCommand="SELECT [name], [departID] FROM [Depart]"></asp:SqlDataSource>
                            </td>
                    </tr>
                    <tr>
                        <td>
                            User Type</td>
                        <td>
                            :</td>
                        <td>
                            <asp:DropDownList ID="dropDownListUserType" runat="server" Enabled="false">
                                <asp:ListItem Text="Admin" Value="0"></asp:ListItem>
                                <asp:ListItem Text="User" Value="1"></asp:ListItem>
                                <asp:ListItem Text="Vip-User" Value="2"></asp:ListItem>
                                <asp:ListItem Text="Chef" Value="3"></asp:ListItem>
                            </asp:DropDownList>
                                
                            </td>
                    </tr>
                    <tr>
                        <td>
                            </td>
                        <td>
                            </td>
                        <td>
                            
                            <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update" Width="70px" />                                                                          
                            </td>
                    </tr>
                    <tr>
                    <asp:Label ID="lblError" CssClass="failureNotification" runat="server" Visible="true"> </asp:Label>
                    </tr>
                </table>
            </fieldset>    
</asp:Content>

