<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="UserManager.aspx.cs" Inherits="UserManager" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" CellPadding="4" 
                GridLines="None" OnPageIndexChanging="GridView1_PageIndexChanging" 
                OnRowDeleting="GridView1_RowDeleting" 
                OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="100%" 
                AutoGenerateColumns="False" CssClass="clear" ForeColor="#333333">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                    
                    <asp:BoundField DataField="userID" HeaderText="UserID" />
                    <asp:BoundField DataField="password" HeaderText="Password" />
                    <asp:BoundField DataField="fullname" HeaderText="fullname" />
                    <asp:BoundField DataField="lastLogin" HeaderText="lastLogin" />
                    <asp:BoundField DataField="departID" HeaderText="departID" />
                    <asp:BoundField DataField="userType" HeaderText="userType" />
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:CommandField ShowDeleteButton="True" />
            </Columns>
                
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />                
                
            </asp:GridView>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <fieldset>
                <legend>Customer Edition</legend>
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
                            <asp:TextBox ID="txtPassword" runat="server" Width="300px"></asp:TextBox></td>
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
                            <asp:DropDownList ID="dropDownListUserType" runat="server">
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
                            
                            <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update"
                                Width="70px" />
                            <asp:Button ID="btnList" runat="server" OnClick="btnList_Click" Text="List" Width="70px" /></td>
                    </tr>
                </table>
            </fieldset>
        </asp:View>
    </asp:MultiView>
</asp:Content>

