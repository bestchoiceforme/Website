<%@ Page Title="" Language="C#" MasterPageFile="~/Account/AccountMasterPage.master" AutoEventWireup="true" CodeFile="OrderHistory.aspx.cs" Inherits="Account_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <fieldset>
        <legend>History of orders          
        </legend>
        <p>
            This is history:
        </p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" CellPadding="4" 
                GridLines="None" 
                OnRowDeleting="GridView1_RowDeleting" 
                OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="90%" 
                AutoGenerateColumns="False" CssClass="clear" ForeColor="#333333">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>                                        
                    <asp:BoundField DataField="orderDay" HeaderText="orderDay" />
                    <asp:BoundField DataField="createTime" HeaderText="createTime" />
                    <asp:BoundField DataField="modTime" HeaderText="modTime" />
                    <asp:BoundField DataField="fastNum" HeaderText="fastNum" />
                    <asp:BoundField DataField="lunNum" HeaderText="lunNum" />
                    <asp:BoundField DataField="dinNum" HeaderText="dinNum" />                    
                    <asp:BoundField DataField="createrID" HeaderText="createrID" />                    
            </Columns>
                
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />                
                
            </asp:GridView>
    </fieldset>
</asp:Content>

