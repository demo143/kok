<%@ page title="" language="C#" masterpagefile="home_MasterPage.master" autoeventwireup="true" inherits="client_side_webform_View_Train_Schedule, App_Web_b1lgt05p" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager runat="server" ID="one">

    </asp:ScriptManager>
    <asp:UpdatePanel runat="server">
        <ContentTemplate>


       
    <table style="width: 133%; margin-top: 0px">
           <tr>
               <td>
        <table style="border: thick double #800000; width: 99%; height: 194px; margin-top: 13px; margin-left: 0px; ">
            <tr>
                <td style="height: 69px; width: 222px">
                    </td>
                <td style="text-align: left; font-weight: 700; font-size: xx-large; height: 69px" class="style1">
                    Train Schedule</td>
            </tr>
            <tr>
                <td style="height: 48px; font-weight: 700; color: #000040; width: 222px;">
                    Enter Train Number
                </td>
                <td style="height: 48px; text-align: left">
                    <asp:TextBox ID="TextBox1" runat="server" Height="30px" 
                        style="text-align: left" Width="140px" MaxLength="5"></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" 
                        ErrorMessage="Only Digit Enter" Font-Bold="True" ForeColor="Red" 
                        MaximumValue="99999" MinimumValue="1" SetFocusOnError="True" 
                        Type="Integer" ControlToValidate="TextBox1" ValidationGroup="a"></asp:RangeValidator>
                    <br />
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="Please Enter The Train Number" 
                        Font-Bold="True" ForeColor="Red" SetFocusOnError="True" ValidationGroup="a"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 222px">
                    &nbsp;</td>
                <td style="text-align: left">
                    <asp:Button ID="Button1" runat="server" Text="Get Schedule" Height="35px" 
                        Width="111px" CssClass="b2"  BorderStyle="None" onclick="Button1_Click1" 
                        ValidationGroup="a" />
                    &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="Clear" 
                        Height="36px" Width="113px"  CssClass="b2" 
                        BorderStyle="None" onclick="Button2_Click" />
                </td>
            </tr>
        </table>
               </td>
           </tr>
           <tr>
               <td>
    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="XX-Large" 
        ForeColor="Maroon">Individual Train Schedule</asp:Label>
               </td>
           </tr>
           <tr>
               <td>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" GridLines="None" HorizontalAlign="Center" 
        style="margin-left: 12px; margin-top: 0px" Width="681px" ForeColor="#333333">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:TemplateField HeaderText="Schedule ID">
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Schedule_id") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Train Number">
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("Train_no") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Station Name">
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("Start_station") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Arrival Time">
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("Arrival_time") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Departure Time">
                <ItemTemplate>
                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("Departure_time") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Day">
                <ItemTemplate>
                    <asp:Label ID="Label9" runat="server" Text='<%# Bind("day") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#990000" ForeColor="White" Font-Bold="True" />
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
           <tr>
               <td>&nbsp;</td>
           </tr>
           <tr>
               <td>&nbsp;</td>
           </tr>
       </table>  </ContentTemplate>
    </asp:UpdatePanel>  
</asp:Content>

