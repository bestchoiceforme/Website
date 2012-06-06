<%@ Page Title="" Language="C#" MasterPageFile="~/Account/AccountMasterPage.master" AutoEventWireup="true" CodeFile="MakePersonalOrder.aspx.cs" Inherits="MakePersonalOrder" %>
<%@ Register Src="OrderEditor.ascx" TagName="OrderEditor" TagPrefix="mko" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="server">
    <mko:OrderEditor ID = "OrderEditor1" runat ="server">
        
    </mko:OrderEditor>

</asp:Content>

