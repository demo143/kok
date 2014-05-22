<%@ page title="" language="C#" masterpagefile="home_MasterPage.master" autoeventwireup="true" inherits="client_side_webform_Changepassword, App_Web_b1lgt05p" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

   <p style="text-align: center">
        <br />
    <table  style="border: thick double #800000; width: 79%; margin-left: 67px; height: 213px;">
    <caption style="border: thick double #800000; font-size: xx-large; font-weight: 700; color: #000040; width: 457px;">
        Change Password<br/>
        <asp:Label ID="Label5" runat="server" ForeColor="Red" style="font-size: medium"></asp:Label>
        </caption>
        <tr>
            <td style="color: #000040; text-align: left; width: 172px; background-color: #FEFFFF; height: 26px;">
                <strong>&nbsp;Old
                Password
            </strong>
            </td>
            <td style="text-align: left; background-color: #FEFFFF; height: 26px; color: #FF0000;">
                <asp:TextBox ID="TextBox1" runat="server" TextMode="Password"></asp:TextBox>
                &nbsp;*<br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Please Enter Old Password" 
                    Font-Bold="False" Font-Italic="False" Font-Size="Small" ForeColor="Red" 
                    SetFocusOnError="True" ValidationGroup="v"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td style="color: #000040; text-align: left; width: 172px; background-color: #FEFFFF; height: 2px;">
                <asp:Label ID="Label3" runat="server" Text="New Password " 
                    style="font-weight: 700"></asp:Label>
            </td>
            <td style="text-align: left; background-color: #FEFFFF; height: 2px;">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="Please Enter New Password" ControlToValidate="TextBox2" 
                    SetFocusOnError="True" ForeColor="Red" ValidationGroup="v"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td style="color: #000040; text-align: left; width: 172px; background-color: #FEFFFF;">
                <asp:Label ID="Label4" runat="server" Text="Confirm Password " 
                    style="font-weight: 700"></asp:Label>
            </td>
            <td style="height: 25px; text-align: left; background-color: #FEFFFF;">
                <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ErrorMessage="Please Enter Confirm Password" ControlToValidate="TextBox3" 
                    SetFocusOnError="True" ForeColor="Red" ValidationGroup="v"></asp:RequiredFieldValidator>
                <br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TextBox2" ControlToValidate="TextBox3" 
                    ErrorMessage="Do Not Match password " Font-Bold="False" Font-Size="Small" 
                    ForeColor="Red" SetFocusOnError="True" ValidationGroup="v"></asp:CompareValidator>
                <br style="color: #FEFFFF" />
                
            </td>
        </tr>
        <tr>
            <td style="color: #000040; width: 172px; background-color: #FEFFFF;">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                </td>
            <td style="height: 41px; text-align: left; background-color: #FEFFFF;">
                <asp:Button ID="Button1" runat="server" Text="Submit" 
                    BorderStyle="None" CssClass="b2" onclick="Button1_Click" Height="30px" 
                    style="color: #FEFFFF" ValidationGroup="v" />
                <span style="color: #FEFFFF">&nbsp;&nbsp;&nbsp;
                </span>
                <asp:Button ID="Button2" runat="server" Text="Cancel" CssClass="b2" 
                    BorderStyle="None" Height="30px" style="color: #FEFFFF" />
            </td>
        </tr>
    </table>
    </p>
    <br />
</asp:Content>

