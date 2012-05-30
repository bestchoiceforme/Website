<%@ Control Language="C#" AutoEventWireup="true" CodeFile="AdminMenu.ascx.cs" Inherits="Admin_AdminMenu" %>
<ul>    
    <asp:Repeater ID="menu" runat="server" DataSourceID="SiteMapDataSource1">
        <ItemTemplate>
            <li>
                <asp:HyperLink ID="lnkMenuItem" runat="server" NavigateUrl='<%# Eval("Url") %>'><%# Eval("Title") %></asp:HyperLink>
                <asp:Repeater ID="submenu" runat="server" 
                    DataSource="<%# ((SiteMapNode) Container.DataItem).ChildNodes %>">
                    <HeaderTemplate>
                        <ul>
                        </ul>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <li>
                            <asp:HyperLink ID="lnkMenuItem0" runat="server" 
                                NavigateUrl='<%# Eval("Url") %>'><%# Eval("Title") %></asp:HyperLink>
                        </li>
                    </ItemTemplate>
                    <FooterTemplate>
                        </ul>
                    </FooterTemplate>
                </asp:Repeater>
            </li>
        </ItemTemplate>
    </asp:Repeater>    
    <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" 
        SiteMapProvider="AdminSiteMap" ShowStartingNode="False" 
        EnableViewState="False" />    
</ul>
