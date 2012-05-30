<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="DepartmentManager.aspx.cs" Inherits="_DepartmentManager" Title="Department Manager" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowDeleting="GridView1_RowDeleting" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="100%" AutoGenerateColumns="False">
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:CommandField ShowDeleteButton="True" />
                    <asp:BoundField DataField="departID" HeaderText="DepartID" />
                    <asp:BoundField DataField="name" HeaderText="Name" />                  
                </Columns>
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <AlternatingRowStyle BackColor="Gainsboro" />
            </asp:GridView>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <fieldset>
                <legend>Customer Edition</legend>
                <table align="center" border="0" cellpadding="5" cellspacing="0">
                    <tr>
                        <td>
                            Depart ID</td>
                        <td>
                            :</td>
                        <td>
                            &nbsp;<asp:TextBox ID="txtDepartID" Enabled="false" runat="server" ReadOnly="True"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>
                            Name
                        </td>
                        <td>
                            :</td>
                        <td>
                            &nbsp;<asp:TextBox ID="txtName" runat="server" Width="300px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;
                            <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update"
                                Width="70px" />
                            <asp:Button ID="btnList" runat="server" OnClick="btnList_Click" Text="List" Width="70px" /></td>
                    </tr>
                </table>
            </fieldset>
        </asp:View>
    </asp:MultiView>
</asp:Content>

