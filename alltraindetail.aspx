<%@ page title="" language="C#" masterpagefile="home_MasterPage.master" autoeventwireup="true" inherits="client_side_webform_alltraindetail, App_Web_b1lgt05p" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <asp:ScriptManager runat="server"></asp:ScriptManager>
    <asp:UpdatePanel runat="server">
        <ContentTemplate>
   <table style="width: 100%">
            <tr>
                <td>
        <strong><span style="font-size: xx-large; " class="style1">All Train Detail
        </span></strong>
                </td>
            </tr>
            <tr>
                <td>
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" GridLines="None" Height="143px" HorizontalAlign="Center" 
            Width="691px"  
            style="margin-left: 10px" ForeColor="#333333">
            <AlternatingRowStyle BackColor="White" />
            <FooterStyle BackColor="#990000" ForeColor="White" Font-Bold="True" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" 
                HorizontalAlign="Center" />
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
                <td> 
        <asp:Button ID="Button1" runat="server" 
            Text="Back" BorderStyle="None" 
            CssClass="b2" Height="34px"  Width="81px" onclick="Button1_Click1" />
                </td>
            </tr>
        </table>
        </ContentTemplate>

    </asp:UpdatePanel>

</asp:Content>

