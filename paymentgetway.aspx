<%@ page title="" language="C#" masterpagefile="home_MasterPage.master" autoeventwireup="true" inherits="client_side_webform_paymentgetway, App_Web_b1lgt05p" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager runat="server"></asp:ScriptManager>
    <asp:UpdatePanel runat="server">
        <ContentTemplate>
    <p style="font-weight: 700; font-size: xx-large; font-family: 'Times New Roman', Times, serif; height: 46px; margin-bottom: 0px;">
        Payment Detail</p>
    <asp:Panel ID="Panel1" runat="server" BorderColor="Maroon" BorderStyle="Solid" 
        BorderWidth="5px">
        <table style="width: 100%; margin-top: 0px;">
            <tr>
                <td style="height: 35px; text-align: left">
                    Select&nbsp; Payment Mode
                </td>
                <td style="text-align: left; height: 35px;">
                    <asp:DropDownList ID="ddlpaymode" runat="server" AutoPostBack="True" 
                        Height="20px"
                        Width="99px" onselectedindexchanged="ddlpaymode_SelectedIndexChanged">
                        <asp:ListItem>          ~Select~</asp:ListItem>
                        <asp:ListItem>Credit Card</asp:ListItem>
                        <asp:ListItem>Direct Debit</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="height: 40px; text-align: left;">
                    <asp:Label ID="lblholdername" runat="server"></asp:Label>
                </td>
                <td style="height: 40px; text-align: left">
                    <asp:TextBox ID="txtholdername" runat="server" style="text-align: left" 
                        Visible="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="height: 36px; text-align: left;">
                    <asp:Label ID="lblCreditno" runat="server" Visible="False"></asp:Label>
                </td>
                <td style="text-align: left; height: 36px">
                    <asp:TextBox ID="txtcreditno" runat="server" 
                        ontextchanged="txtcreditno_TextChanged" Visible="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="height: 36px; text-align: left;">
                    <asp:Label ID="lblsq" runat="server" Visible="False"></asp:Label>
                </td>
                <td style="text-align: left; height: 36px">
                    <asp:TextBox ID="txtsq" runat="server" Visible="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="height: 48px; text-align: left">
                    <asp:Label ID="lblvalidity" runat="server"></asp:Label>
                </td>
                <td style="text-align: left; height: 48px;">
                    <asp:Label ID="lblmonth" runat="server" Text="MM" Visible="False"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblyear" runat="server" Text="YYYY" 
                        Visible="False"></asp:Label>
                    <br />
                    &nbsp;<asp:TextBox ID="txtmonth" runat="server" 
                        Visible="False" Width="67px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtyear" runat="server" Visible="False" Width="77px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: left">
                    <asp:Label ID="lblamount" runat="server" Visible="False"></asp:Label>
                </td>
                <td style="text-align: left">
                    <asp:TextBox ID="txtamount" runat="server" Visible="False" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td style="text-align: left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="height: 25px">
                    &nbsp;</td>
                <td style="text-align: left; height: 25px;">
                    <asp:Button ID="btnverify" runat="server" onclick="btnverify_Click" 
                        Text="Verify Data" Visible="False" />
                </td>
            </tr>
            <tr>
                <td>
                    </td>
                <td>
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="63px" 
                        ImageUrl="~/Wallpaper/pes.jpg" Width="140px" onclick="ImageButton1_Click" 
                        Visible="False" />
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
        </ContentTemplate>
    </asp:UpdatePanel>

</asp:Content>

