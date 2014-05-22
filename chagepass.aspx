<%@ Page Title="" Language="C#" MasterPageFile="home_MasterP.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="style15" style="height: 15px">
        <br />
        <br />&nbsp;
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Arial Black" 
                Font-Size="Medium" ForeColor="Navy" Text="Change Password "></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <span class="style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <span style="color: #FF0000">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; *</span></span>&nbsp; Mandatory
            <br />
        <br />
        <table class="style1" style="height: 190px; width: 474px; margin-left: 0px;">
            <tr>
                <td class="style3" 
                    style="color: #000040; font-weight: bold; height: 38px; width: 1324px;">
                        Enter Old password&nbsp; 
                    </td>
                <td class="style2" style="color: #FF0000; height: 38px;">
                    <asp:TextBox ID="TextBox1" runat="server" Height="26px" Width="150px" 
                            TextMode="Password"></asp:TextBox>
                    &nbsp; *<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="TextBox1" Display="None" 
                            ErrorMessage="enter old Password" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style17" 
                    style="color: #000040; font-weight: bold; height: 35px; width: 1324px;">
                        New Password
                    </td>
                <td class="style18" style="height: 35px">
                    <asp:TextBox ID="TextBox3" runat="server" Height="26px" TextMode="Password" 
                            Width="150px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="TextBox2" Display="None" 
                            ErrorMessage="Please Enter New Password" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="color: #000040; font-weight: bold; height: 30px; width: 1324px;">
                        Confirm Password
                    </td>
                <td style="height: 30px">
                    <asp:TextBox ID="TextBox2" runat="server" Height="26px" Width="150px" 
                            TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="TextBox3" Display="None" 
                            ErrorMessage="Please Enter Confirm Password" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                            ControlToCompare="TextBox2" ControlToValidate="TextBox3" Display="None" 
                            ErrorMessage="Password are not Match"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td style="color: #000040; font-weight: bold; height: 4px; width: 1324px;">
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
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                DisplayMode="List" Height="16px" ShowMessageBox="True" 
                ShowSummary="False" />
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Medium" 
                ForeColor="Red"></asp:Label>
        <br />
        <br />
        <br />
    </div>
</asp:Content>

