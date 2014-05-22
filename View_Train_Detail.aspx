<%@ page title="" language="C#" masterpagefile="home_MasterPage.master" autoeventwireup="true" inherits="client_side_webform_View_Train_Detail, App_Web_b1lgt05p" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager runat="server"></asp:ScriptManager>
    <asp:UpdatePanel runat="server">
        <ContentTemplate>

      <table style="width: 138%">
          <tr>
              <td>
      <table style="border: thick double #800000; width: 83%; height: 237px; margin-top: 0px; margin-left: 15px; " align="center">
            <tr>
                <td style="height: 47px; width: 278px">
                    &nbsp;</td>
                <td style="text-align: justify; font-size: xx-large; height: 47px; width: 456px;" class="style1">
                    <strong>Train Detail</strong></td>
            </tr>
            <tr>
                <td style="height: 73px; font-weight: 700; color: #000040; width: 278px; text-align: justify;">
                    Enter Train Number
                </td>
                <td style="height: 73px; text-align: left; width: 456px;">
                    <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="140px" 
                        ValidationGroup="a" MaxLength="5"></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="Only Digit Enter" Font-Bold="True" 
                        ForeColor="Red" MaximumValue="99999" MinimumValue="1" SetFocusOnError="True" 
                        Type="Integer" ValidationGroup="a"></asp:RangeValidator>
                    <br />
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" 
                        ErrorMessage="Please Enter Train Number" Font-Bold="True" ForeColor="Red" 
                        SetFocusOnError="True" ValidationGroup="a"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    <asp:Label ID="ll1" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 278px">
                    &nbsp;</td>
                <td style="text-align: left; width: 456px;">
                    <br />
                    <asp:Button ID="Button1" runat="server" Text="Find" Height="40px" 
                        Width="73px" BorderStyle="None" onclick="Button1_Click2" 
                        ValidationGroup="a" CssClass="b2"  />
                    &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="All Train List" 
                        Height="42px" Width="113px" 
                        BorderStyle="None" onclick="Button2_Click1" CssClass="b2" />
                </td>
            </tr>
        </table>
              </td>
          </tr>
          <tr>
              <td>
    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="XX-Large" 
        ForeColor="Maroon" Text="Individual Train Detail"></asp:Label>
              </td>
          </tr>
          <tr>
              <td>
    <asp:GridView ID="GridView1" runat="server" CellPadding="4" GridLines="None" HorizontalAlign="Center" Width="684px" 
        style="margin-left: 0px; margin-bottom: 0px;" 
        AutoGenerateColumns="False" Height="53px" ForeColor="#333333" 
       >
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:TemplateField HeaderText="Train Number">
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("Train_no") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle Height="30px" Width="30px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Train Name">
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("train_name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Train Type">
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("train_type") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Class A1">
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("a1") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Class A2">
                <ItemTemplate>
                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("a2") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Class A3">
                <ItemTemplate>
                    <asp:Label ID="Label9" runat="server" Text='<%# Bind("a3") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Sleeper Class">
                <ItemTemplate>
                    <asp:Label ID="Label10" runat="server" Text='<%# Bind("sl") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="General">
                <ItemTemplate>
                    <asp:Label ID="Label11" runat="server" Text='<%# Bind("gn") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Total Coach">
                <ItemTemplate>
                    <asp:Label ID="Label12" runat="server" Text='<%# Bind("all") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#990000" ForeColor="White" Font-Bold="True" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" 
            Height="5px" Width="100px" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" 
            Font-Names="Batang" Height="5px" HorizontalAlign="Justify" 
            VerticalAlign="Middle" Width="5px" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
              </td>
          </tr>
      </table>
        </ContentTemplate>

    </asp:UpdatePanel>
</asp:Content>

