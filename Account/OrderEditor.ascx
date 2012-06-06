<%@ Control Language="C#" AutoEventWireup="true" CodeFile="OrderEditor.ascx.cs" Inherits="Account_MakeOrder" %>
<asp:MultiView ID="MultiView" runat="server">
        <asp:View ID="ViewChooseDate" runat="server">
            <fieldset>
            <legend>Choose day</legend>
            <asp:TextBox ID="txtDOB" Runat="server"></asp:TextBox>
            <asp:Button ID="btnDOB" Runat="server" Text="Calendar" onclick="btnDOB_Click"></asp:Button>
            <asp:Button ID="btnContinue" Runat="server" Text="Continue" Enabled="false" onclick="btnContinue_Click"></asp:Button>
            <br />
            <asp:Calendar ID="cdrCalendar" runat="server" backcolor="#ffffff" 
                bordercolor="#000000" borderwidth="2px" CssClass="myCalendar" 
                daynameformat="firsttwoletters" font-names="Arial" font-size="12px" 
                height="200px" nextprevformat="shortmonth" 
                onselectionchanged="cdrCalendar_SelectionChanged" Visible="False" width="250px">                              
            </asp:Calendar>
            </fieldset>
        </asp:View>
        <asp:View ID="ViewOrderEditor" runat="server">
            <fieldset>
                <legend>Customer Edition</legend>
                <table align="center" border="0" cellpadding="5" cellspacing="0">
                    <tr>
                        <td>
                            Date</td>
                        <td>
                            :</td>
                        <td>
                            <asp:TextBox ID="txtDate" Enabled="true" runat="server" ReadOnly="True"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>
                            Breakfast</td>
                        <td>
                            :</td>
                        <td>
                            <asp:DropDownList runat="server" ID="dropDownListBreakFast">
                                
                                <asp:ListItem Text="0" Value="0"></asp:ListItem>
                                <asp:ListItem Text="1" Value="1"></asp:ListItem>
                                <asp:ListItem Text="2" Value="2"></asp:ListItem>
                                <asp:ListItem Text="3" Value="3"></asp:ListItem>
                                
                            </asp:DropDownList>
                            </td>
                    </tr>
                    <tr>
                        <td>
                            Lunch</td>
                        <td>
                            :</td>
                        <td>
                            <asp:DropDownList ID="dropDownListLunch" runat="server">
                                <asp:ListItem Text="0" Value="0"></asp:ListItem>
                                <asp:ListItem Text="1" Value="1"></asp:ListItem>
                                <asp:ListItem Text="2" Value="2"></asp:ListItem>
                                <asp:ListItem Text="3" Value="3"></asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Dinner</td>
                        <td>
                            :</td>
                        <td>
                            <asp:DropDownList ID="dropDownListDinner" runat="server">
                                <asp:ListItem Text="0" Value="0"></asp:ListItem>
                                <asp:ListItem Text="1" Value="1"></asp:ListItem>
                                <asp:ListItem Text="2" Value="2"></asp:ListItem>
                                <asp:ListItem Text="3" Value="3"></asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            </td>
                        <td>
                            </td>
                        <td>
                            <asp:Button ID = "btnOrder" Text="Order" runat="server" 
                                onclick="btnOrder_Click"/>
                            <asp:Button ID = "btnBack" Text="Back" runat="server" 
                                onclick="btnGoBack_Click"                                 />
                         </td>
                    </tr>
                </table>
            </fieldset>
        </asp:View>
        <asp:View ID="ViewOldDay" runat ="server">
        <fieldset>
            <legend>Old day</legend>
            <p>
                You have chosen the old day.
                <br /> 
                Please choose other day!
            </p>
            <asp:Button ID="btnGoBack" Text = "Go Back" runat= "server" 
                onclick="btnGoBack_Click"/>
        </fieldset>
        </asp:View>
         <asp:View ID="ViewIsOrdered" runat ="server">
        <fieldset>
            <legend>Have ordered for this day</legend>
            <p>
                You have ordered for this day.
                <br /> 
                Please choose other day!
            </p>
            <asp:Button ID="Button1" Text = "Go Back" runat= "server" 
                onclick="btnGoBack_Click"/>
        </fieldset>
        </asp:View>
    </asp:MultiView>