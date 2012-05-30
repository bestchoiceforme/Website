<%@ Page Language="C#" MasterPageFile="~/Account/AccountMasterPage.master" AutoEventWireup="true" CodeFile="MyAccount.aspx.cs" Inherits="MyAccount" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border="0" cellpadding="10" cellspacing="0" width="100%">
        <tr>
            <td>
                <fieldset>
                    <legend>Personal Information</legend>
                    <table align="center" border="0" cellpadding="5" cellspacing="0">
                        <tr>
                            <td>
                                User ID
                            </td>
                            <td>
                                :</td>
                            <td>
                                &nbsp;<asp:TextBox ID="txtCustomerID" runat="server" Width="200px" ReadOnly="True"></asp:TextBox>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                Full Name
                            </td>
                            <td>
                                :</td>
                            <td>
                                &nbsp;<asp:TextBox ID="txtFullName" runat="server" Width="200px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td>
                                Password</td>
                            <td>
                                :</td>
                            <td>
                                &nbsp;<asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="200px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td>
                                Department</td>
                            <td>
                                :</td>
                            <td>
                                &nbsp;<asp:TextBox ID="txtDepart" 
                                    runat="server" Width="200px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                                &nbsp;<asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" /></td>
                        </tr>
                    </table>
                    <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label></fieldset>
            </td>
        </tr>
        <tr>
            <td>
                <fieldset>
                    <legend>Your Order List</legend>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4"
                        ForeColor="#333333" GridLines="None" Width="100%">
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <Columns>
                            <asp:BoundField DataField="OrderID" HeaderText="ORDER ID" />
                            <asp:BoundField DataField="OrderDate" DataFormatString="{0:dd-MM-yyyy}" HeaderText="ORDER DATE"
                                HtmlEncode="False" />
                            <asp:BoundField DataField="RequiredDate" DataFormatString="{0:dd-MM-yyyy}" HeaderText="REQUIRED DATE"
                                HtmlEncode="False" />
                            <asp:BoundField DataField="ShippedDate" DataFormatString="{0:dd-MM-yyyy}" HeaderText="SHIP DATE" />
                            <asp:BoundField DataField="ShipAddress" HeaderText="SHIP ADDRESS" />
                        </Columns>
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <EditRowStyle BackColor="#999999" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    </asp:GridView>
                </fieldset>
            </td>
        </tr>
    </table>
</asp:Content>

