<%@ page title="" language="C#" masterpagefile="home_MasterP.master" autoeventwireup="true" inherits="admin_side_webform_changepas, App_Web_b1lgt05p" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Arial Black" 
                Font-Size="Medium" ForeColor="Navy" Text="Change Password " 
            style="text-align: left"></asp:Label>
            &nbsp;</p>
    <p>
        <span class="style6"><span style="color: #FF0000">*</span></span>Mandatory&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
    <p>
        <table class="style1" style="height: 257px; width: 463px; margin-left: 0px;">
            <tr>
                <td class="style3" 
                    style="color: #000040; font-weight: bold; height: 38px; width: 2273px;">
                        Enter Old password&nbsp; 
                    </td>
                <td class="style2" style="color: #FF0000; height: 38px;">
                    <asp:TextBox ID="TextBox1" runat="server" Height="26px" Width="150px" 
                            TextMode="Password"></asp:TextBox>
                    &nbsp; *<br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="TextBox1" Display="None" 
                            ErrorMessage="enter old Password" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style17" 
                    style="color: #000040; font-weight: bold; height: 35px; width: 2273px;">
                        New Password
                    </td>
                <td class="style18" style="height: 35px">
                    <asp:TextBox ID="TextBox3" runat="server" Height="26px" TextMode="Password" 
                            Width="150px"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="TextBox2" Display="None" 
                            ErrorMessage="Please Enter New Password" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="color: #000040; font-weight: bold; width: 2273px;">
                        Confirm Password
                    </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="26px" Width="150px" 
                            TextMode="Password"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="TextBox3" Display="None" 
                            ErrorMessage="Please Enter Confirm Password" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                            ControlToCompare="TextBox2" ControlToValidate="TextBox3" Display="None" 
                            ErrorMessage="Password are not Match"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td style="color: #000040; font-weight: bold; height: 4px; width: 2273px;">
                    &nbsp;</td>
                <td style="height: 4px">
                    &nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button5" runat="server" Text="Ok " />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button6" runat="server" Text="cancel" />
                </td>
            </tr>
        </table>
        <span class="style6"><span style="color: #FF0000">&nbsp;&nbsp;&nbsp; </span></span>&nbsp;<br />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                DisplayMode="List" Height="16px" ShowMessageBox="True" 
                ShowSummary="False" />
        </asp:Content>

