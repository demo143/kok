<%@ page title="" language="C#" masterpagefile="home_MasterPage.master" autoeventwireup="true" inherits="client_side_webform_Prn_Detail, App_Web_b1lgt05p" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <table style="width: 100%">
        <tr>
            <td style="font-size: x-large; " class="style1"><strong>Enter PNR your Below to get Current Status</strong></td>
        </tr>
        <tr>
            <td>
    <table style="border: thick double #800000; width: 78%; margin-left: 75px; height: 213px; margin-top: 1px; ">
        <tr>
            <td style="width: 175px; height: 31px;">
        <span style="color: #000040"><strong style="text-align: left">Enter PNR Number :</strong></span></td>
            <td style="height: 31px">
                <asp:TextBox 
            ID="TextBox2" runat="server" Height="25px" MaxLength="10" Width="150px"></asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Only Required Digit" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^[0-9]{10}" style="font-weight: 700"></asp:RegularExpressionValidator>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" 
                    ErrorMessage="Please Enter Ten Digit PRN Number" SetFocusOnError="True" 
                    ValidationGroup="a" ForeColor="Red" style="font-weight: 700"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td style="width: 175px; height: 8px;">
                &nbsp;</td>
            <td style="height: 8px">
        <asp:Label ID="Label2" runat="server" ForeColor="Red" Font-Bold="True" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 175px; height: 37px;">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                    ShowMessageBox="True" ShowSummary="False" ValidationGroup="v" />
                <br />
                </td>
            <td style="height: 37px; text-align: left;">
        <asp:Button ID="Button1" runat="server" Text="Get Status" BorderStyle="None" 
            CssClass="b2" Height="30px" Width="90px" ValidationGroup="a" 
                    onclick="Button1_Click"   />
        &nbsp; <asp:Button ID="Button2" runat="server" Text="Clear" BorderStyle="None" 
            CssClass="b2" Height="30px" Width="50px" onclick="Button2_Click"  />
                <br />
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
        </tr>
    </table>
            </td>
        </tr>
    </table>
 
</asp:Content>

