﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Account/AccountMasterPage.master" AutoEventWireup="true" CodeFile="OrderHistory.aspx.cs" Inherits="Account_Default2" %>

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
                AutoGenerateColumns="False" CssClass="clear" BackColor="White" 
                BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
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
                
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />                
                              
                
            </asp:GridView>
           </p>           
    </fieldset>
</asp:Content>

