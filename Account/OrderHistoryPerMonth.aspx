<%@ Page Title="" Language="C#" MasterPageFile="~/Account/AccountMasterPage.master" AutoEventWireup="true" CodeFile="OrderHistoryPerMonth.aspx.cs" Inherits="Account_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <fieldset>
        <legend>History of orders          
        </legend>
        <div class="title">

            This is history:
            <br />
            You can't change or edit it                        
        </div>    
        <br />    
        <div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" CellPadding="3" 
                OnRowDeleting="GridView1_RowDeleting" 
                OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="90%" 
                AutoGenerateColumns="False" CssClass="clear" BackColor="#DEBA84" 
                BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellSpacing="2" 
                DataSourceID="SqlDataSource1">
            <Columns>                                        
                    <asp:BoundField DataField="orderDay" HeaderText="orderDay" ReadOnly="True" 
                        SortExpression="orderDay" />
                    <asp:BoundField DataField="modTime" HeaderText="modTime" ReadOnly="True" 
                        SortExpression="modTime" />
                    <asp:BoundField DataField="fastNum" HeaderText="fastNum" ReadOnly="True" 
                        SortExpression="fastNum" />
                    <asp:BoundField DataField="lunNum" HeaderText="lunNum" ReadOnly="True" 
                        SortExpression="lunNum" />
                    <asp:BoundField DataField="dinNum" HeaderText="dinNum" ReadOnly="True" 
                        SortExpression="dinNum" />
                    <asp:BoundField DataField="MyNum" HeaderText="MyNum" ReadOnly="True" 
                        SortExpression="MyNum" />                    
                    <asp:BoundField DataField="PRICE" HeaderText="PRICE" ReadOnly="True" 
                        SortExpression="PRICE" />                    
                    <asp:BoundField DataField="FULLNAME" HeaderText="FULLNAME" ReadOnly="True" 
                        SortExpression="FULLNAME" />
            </Columns>
                
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle ForeColor="#8C4510" BackColor="#FFF7E7" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />                               
                
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="HistoryOrderOfUser" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:Parameter DefaultValue="dina" Name="ownerID" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
           </p>           
    </fieldset>
</asp:Content>

