<%@ page title="" language="C#" masterpagefile="home_MasterPage.master" autoeventwireup="true" inherits="client_side_webform_FindTrain, App_Web_b1lgt05p" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td>
        <span class="style1" style="font-size: xx-large; "><strong>Travelling Plan</strong></span></td>
        </tr>
        <tr>
            <td style="text-align: right">
                <asp:Label ID="Label9" runat="server" style="font-weight: 700; font-size: medium; color: #800000"></asp:Label>
                </td>
        </tr>
        <tr>
            <td>
    <table style="border: thick double #800000; width: 72%; margin-left: 75px; height: 237px;">
        <tr>
            <td style="color: #000040; height: 35px;">
                <b>From&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="color: #FF0000">*</span></b></td>
            <td style="height: 35px; text-align: left;">
                <asp:TextBox ID="txtfromstation" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtfromstation" Display="None" 
                    ErrorMessage="Please Enter From Station " 
                    ValidationGroup="v"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td style="color: #000040; height: 35px;">
                <b>To&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<span 
                    style="color: #FF0000"> 
                *</span></b></td>
            <td style="height: 35px; text-align: left;">
                <asp:TextBox ID="txtendstation" runat="server"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtendstation" Display="None" 
                    ErrorMessage="Please Enter To Station" 
                    ValidationGroup="v"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td style="color: #000040; height: 35px; font-weight: bold;">
                <b>Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b><span 
                    style="color: #FF0000; font-weight: bold;"> *</span></td>
            <td style="height: 35px; text-align: left;">
                <asp:TextBox ID="txtdate" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtdate" ErrorMessage="Please Enter Date" ValidationGroup="v"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="color: #000040; height: 35px; text-align: left;">
                </td>
            <td style="height: 35px; text-align: left;">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="color: #000040; height: 31px; text-align: left;">
               
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
               
            </td>
            <td style="height: 31px; text-align: left;">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnfindtrain" runat="server" Text="Find Train " 
                    onclick="Button1_Click" BorderStyle="None" CssClass="b2" Height="33px" 
                    ValidationGroup="v" />
                &nbsp;</td>
        </tr>
        <tr>
            <td style="color: #000040; height: 31px;">
               
                &nbsp;</td>
            <td style="height: 31px; text-align: left;">
                <asp:Label ID="Label7" runat="server"></asp:Label>
            </td>
        </tr>
    </table>

            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label8" runat="server" style="font-size: x-large; font-weight: 700; color: #800000"></asp:Label>
                &nbsp;<br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        HorizontalAlign="Center" CellPadding="4" ForeColor="#333333" 
        GridLines="None" 
        Width="378px" onselectedindexchanging="GridView1_SelectedIndexChanging" 
        DataKeyNames="Train_no">
        <AlternatingRowStyle BackColor="White" />

        <Columns>
            
            <asp:CommandField ShowSelectButton="True" />
            
            <asp:TemplateField HeaderText="Train No">
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# bind("Train_no") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Train Name">
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# bind("train_name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Train Type">
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# bind("train_type") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Arrival Time">
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# bind("Arrival_time") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Departure Time">
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# bind("Departure_time") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
            </td>
        </tr>
        </table>
</asp:Content>

