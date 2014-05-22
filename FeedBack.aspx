<%@ page title="" language="C#" masterpagefile="home_MasterPage.master" autoeventwireup="true" inherits="client_side_webform_FeedBack, App_Web_b1lgt05p" %>


<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:UpdatePanel runat="server">
        <ContentTemplate>

      <table style="width: 100%">
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" style="font-size: medium; color: #FF0000"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="font-size: xx-large" class="style1"><strong>FeedBack</strong></td>
            </tr>
            <tr>
                <td>
                    <table id="t2" style="border: thick double #800000; width: 75%; height: 338px; margin-left: 80px; margin-top: 0px;">
                        <caption style="border: thick double #800000; width: 391px; height: 35px; font-weight: 700; color: #000040; font-size: medium; margin-top: 59px;">
                            Please Enter The FeedBack About your Experience</caption>
                        <tr>
                            <td style="width: 150px; color: #000040; height: 45px;"><strong>User </strong><b>&nbsp;Name&nbsp; :</b></td>
                            <td style="height: 45px">
                                <asp:TextBox ID="TextBox5" runat="server" Enabled="False" Width="180px"></asp:TextBox>
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 150px; height: 45px; color: #000040;"><b>Enter Email ID&nbsp;&nbsp;&nbsp; :</b></td>
                            <td style="height: 45px">
                                <asp:TextBox ID="TextBox6" runat="server" Width="180px"></asp:TextBox>
                                <br />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox6" Display="None" ErrorMessage="Please Enter Email ID" SetFocusOnError="True" ValidationGroup="v"></asp:RequiredFieldValidator>
                                <asp:ValidatorCalloutExtender ID="RequiredFieldValidator3_ValidatorCalloutExtender" runat="server" Enabled="True" TargetControlID="RequiredFieldValidator3">
                                </asp:ValidatorCalloutExtender>
                                <br />
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox6" ErrorMessage="Please Correct Enter Email Format" Font-Bold="False" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 150px; color: #000040; height: 80px;"><b>Enter Comments :</b></td>
                            <td style="height: 80px">
                                <asp:TextBox ID="TextBox7" runat="server" Height="75px" TextMode="MultiLine" Width="180px"></asp:TextBox>
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 150px; color: #000040; height: 80px;"><b>Enter Sugestion :</b></td>
                            <td style="height: 80px">
                                <asp:TextBox ID="TextBox8" runat="server" Height="80px" TextMode="MultiLine" Width="180px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 150px; color: #000040;">&nbsp;</td>
                            <td>&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button2" runat="server" BorderStyle="None" CssClass="b2" Height="30px" onclick="Button1_Click" Text="Submit" ValidationGroup="v" />
                                &nbsp;&nbsp; </td>
                        </tr>
                        <tr>
                            <td style="width: 150px; color: #000040;">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    <br />
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
    <br /></ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

