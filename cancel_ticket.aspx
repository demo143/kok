<%@ page title="" language="C#" masterpagefile="home_MasterPage.master" autoeventwireup="true" inherits="client_side_webform_cancel_ticket, App_Web_b1lgt05p" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 136%; height: 209px;">
        <tr>
            <td style="width: 154px; text-align: left; height: 54px;">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
            <td style="text-align: left; font-weight: 700; font-size: medium; width: 246px; height: 54px">
                <h1>Cancel Ticket</h1>
            </td>
            <td style="text-align: left; font-weight: 700; font-size: medium; height: 54px"></td>
        </tr>
        <tr>
            <td style="width: 154px; height: 52px; color: #000040; font-size: medium;"><strong>Enter PRN No&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : </strong> </td>
            <td style="width: 246px; height: 52px">
                <asp:TextBox ID="TextBox1" runat="server" Height="24px" MaxLength="10" style="margin-bottom: 0px" Width="190px"></asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Only Digit Enter" ForeColor="Red" ValidationExpression="[0-9]{10}" ValidationGroup="v"></asp:RegularExpressionValidator>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="None" ErrorMessage="Please Enter Prn No" ForeColor="Red" ValidationGroup="v"></asp:RequiredFieldValidator>
                <asp:ValidatorCalloutExtender ID="RequiredFieldValidator1_ValidatorCalloutExtender" runat="server" Enabled="True" TargetControlID="RequiredFieldValidator1">
                </asp:ValidatorCalloutExtender>
            </td>
            <td style="height: 52px"></td>
        </tr>
        <tr>
            <td style="width: 154px">&nbsp;</td>
            <td style="width: 246px">
                <asp:Button ID="Button1" runat="server" BorderStyle="Solid" Height="30px" style="font-weight: 700" Text="Submit" ValidationGroup="v" Width="81px" OnClick="Button1_Click" />
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Red" Text="Invalid PNR Number" Visible="False"></asp:Label>
                <br />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 154px">&nbsp;</td>
            <td style="width: 246px">
    <table align="center" >
        <tr>
            <td  style="color: #FFFFFF" >
                <asp:GridView ID="gvResPass" runat="server" AutoGenerateColumns="False" 
                    Width="89%" 
                    HorizontalAlign="Center" style="text-align: center" 
                    onrowdeleting="gvResPass_RowDeleting" CellPadding="4" ForeColor="#333333" 
                    GridLines="None"
                  
                    DataKeyNames="Bookid" OnRowDataBound="gvResPass_RowDataBound">
                    <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField HeaderText="Passenger Name">
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# bind("passengername") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Age">
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# bind("age") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Gender">
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# bind("gender") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ButtonType="Image" ShowDeleteButton="True" 
                        DeleteImageUrl="~/image/button/delete.png" HeaderText="Cancel Ticket" />
                </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
     
            </td>
        </tr>
        </table>
        
        
     
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 154px; text-align: right;">
                &nbsp;</td>
            <td style="width: 246px; text-align: left;">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <br />
    <br />
    <asp:Panel ID="Panel1" runat="server" Height="293px" Width="748px">
        <table style="border: thick solid #800000; width: 74%" align="center">
            <tr>
                <td style="text-align: left; color: #000040; font-weight: bold; width: 225px">&nbsp;</td>
                <td style="color: #804000; font-weight: bold; width: 5px">&nbsp;</td>
                <td style="font-size: large; color: #800000; font-weight: 700; width: 156px"><strong>Ticket Summary &nbsp;</strong></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: left; height: 25px; font-weight: bold; width: 225px"><b>
                    <asp:Label ID="Label6" runat="server" style="color: #000040" Text="Total Passenger :"></asp:Label>
                    </b></td>
                <td style="height: 25px; color: #804000; font-weight: bold; width: 5px"><b>:</b></td>
                <td style="text-align: left; height: 25px; width: 156px; font-weight: 700; color: #000040;">
                    <asp:Label ID="lblpass" runat="server"></asp:Label>
                </td>
                <td style="height: 25px"></td>
            </tr>
            <tr>
                <td style="text-align: left; height: 25px; font-weight: bold; width: 225px"><b>
                    <asp:Label ID="Label7" runat="server" style="color: #000040" Text="Total Ticket Amount"></asp:Label>
                    </b></td>
                <td style="height: 25px; color: #804000; font-weight: bold; width: 5px"><b>:</b></td>
                <td style="text-align: left; height: 25px; width: 156px">
                    <asp:Label ID="lbltamount" runat="server" Text="Label" style="font-weight: 700; color: #000040"></asp:Label>
                </td>
                <td style="height: 25px"></td>
            </tr>
            <tr>
                <td style="text-align: left; height: 25px; color: #000040; font-weight: bold; width: 225px"><b>Ticket Amount </b></td>
                <td style="height: 25px; color: #804000; font-weight: bold; width: 5px"><b>:</b></td>
                <td style="text-align: left; height: 25px; width: 156px">
                    <asp:Label ID="lblticketa" runat="server" Text="Label" style="font-weight: 700; color: #000040"></asp:Label>
                </td>
                <td style="height: 25px"></td>
            </tr>
            <tr>
                <td style="text-align: left; color: #000040; font-weight: bold; width: 225px; height: 14px">
                    <asp:Label ID="Label10" runat="server" Text="After Cancel Ticket Amount"></asp:Label>
                </td>
                <td style="color: #804000; font-weight: bold; width: 5px; height: 14px"><b>:</b></td>
                <td style="text-align: left; width: 156px; height: 14px">
                    <asp:Label ID="lblacancela" runat="server" Text="0" style="color: #000040; font-weight: 700"></asp:Label>
                </td>
                <td style="height: 14px"></td>
            </tr>
            <tr>
                <td style="text-align: left; height: 25px; font-weight: bold; width: 225px"><b>
                    <asp:Label ID="Label9" runat="server" style="color: #000040" Text="Cancellation Charge"></asp:Label>
                    </b></td>
                <td style="height: 25px; color: #804000; font-weight: bold; width: 5px"><b>:</b></td>
                <td style="text-align: left; height: 25px; width: 156px">
                    <asp:Label ID="lblservice" runat="server" Text="0" style="font-weight: 700; color: #000040"></asp:Label>
                </td>
                <td style="height: 25px"></td>
            </tr>
            <tr>
                <td style="text-align: left; height: 25px; color: #000040; font-weight: bold; width: 225px">
                    <asp:Label ID="Label11" runat="server" Text="Net Ticket Amount"></asp:Label>
                    <b>&nbsp;</b></td>
                <td style="height: 25px; color: #804000; font-weight: bold; width: 5px"><b>:</b></td>
                <td style="text-align: left; height: 25px; width: 156px">
                    <asp:Label ID="lblnetamount" runat="server" style="text-align: left; font-weight: 700; color: #000040;" Text="0"></asp:Label>
                </td>
                <td style="height: 25px"></td>
            </tr>
            <tr>
                <td style="text-align: left; color: #000040; font-weight: bold; width: 225px">&nbsp;</td>
                <td style="color: #804000; font-weight: bold; width: 5px">&nbsp;</td>
                <td style="width: 156px; text-align: left">
                    <asp:Button ID="Button2" runat="server" Height="35px" style="text-align: center" Text="Sumit" Width="72px" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

