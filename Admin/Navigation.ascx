<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Navigation.ascx.cs" Inherits="Admin_Navigation" %>
<asp:TreeView ID="TreeView1" runat="server" DataSourceID="SiteMapDataSource1" 
    ImageSet="Arrows" LineImagesFolder="~/TreeLineImages" ShowLines="True">
    <HoverNodeStyle Font-Underline="True" ForeColor="#5555DD" />
    <NodeStyle Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" 
        HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="0px" />
    <ParentNodeStyle Font-Bold="False" />
    <SelectedNodeStyle Font-Underline="True" ForeColor="#5555DD" 
        HorizontalPadding="0px" VerticalPadding="0px" />
</asp:TreeView>
<asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" 
    SiteMapProvider="AdminSiteMap" />

