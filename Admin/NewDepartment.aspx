<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="NewDepartment.aspx.cs" Inherits="NewDepartment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
      <h2>
                        Create a new department
                    </h2>
                    <p>
                        Use the form below to create a new department.
                    </p>                    
                    <span class="failureNotification">
                        <asp:Literal ID="ErrorMessage" runat="server"></asp:Literal>
                    </span>
                    <asp:ValidationSummary ID="RegisterUserValidationSummary" runat="server" CssClass="failureNotification" 
                         ValidationGroup="RegisterUserValidationGroup"/>
                    <div class="accountInfo">
                        <fieldset class="register">
                            <legend>Department Information</legend>
                            <p>
                                <asp:Label ID="lbDepartName" runat="server" AssociatedControlID="txtDepartName">Name of department:</asp:Label>
                                <asp:TextBox ID="txtDepartName" runat="server" CssClass="textEntry"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="NameRequired" runat="server" ControlToValidate="txtDepartName" 
                                     CssClass="failureNotification" ErrorMessage="Name is required." ToolTip="Name is required." 
                                     ValidationGroup="RegisterUserValidationGroup">*</asp:RequiredFieldValidator>
                            </p>
                            <p>
                                <asp:Label ID="lbDescription" runat="server" AssociatedControlID="txtDescription">Something about :</asp:Label>
                                <asp:TextBox ID="txtDescription" runat="server" CssClass="textEntry"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="DesRequired" runat="server" ControlToValidate="txtDescription" 
                                     CssClass="failureNotification" ErrorMessage="Description is required." ToolTip="Description is required." 
                                     ValidationGroup="RegisterUserValidationGroup">*</asp:RequiredFieldValidator>

                            </p>
                        </fieldset>
                        <p class="submitButton">
                            <asp:Button ID="btnCreatDepart" runat="server" CommandName="MoveNext" Text="Create Department" 
                                 ValidationGroup="RegisterUserValidationGroup" CssClass="submitButton" 
                                onclick="btnCreatDepart_Click"/>
                        </p>
                        <p>
                            <asp:Label ID = "lbOk" Text="New depart is added!" runat="server" CssClass="title" Visible="false"></asp:Label>
                        </p>
                    </div>             
</asp:Content>

