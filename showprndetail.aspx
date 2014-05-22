<%@ page title="" language="C#" masterpagefile="home_MasterPage.master" autoeventwireup="true" inherits="client_side_webform_showprndetail, App_Web_b1lgt05p" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <asp:ScriptManager runat="server"></asp:ScriptManager>
    <asp:UpdatePanel runat="server"><ContentTemplate>
    <table style="width: 100%">
        <tr>
            <td>
    <span style="font-size: xx-large; font-family: Arial, Helvetica, sans-serif">
    <span class="style1"><strong>PRN DETAIL</strong></span></span></td>
        </tr>
        <tr>
            <td><span style="font-size: xx-large; font-family: Arial, Helvetica, sans-serif">
                <span style="color: #000040"><strong>
    <asp:DetailsView ID="DetailsView1" runat="server" 
        BorderColor="Maroon" BorderStyle="Solid" BorderWidth="7px" 
        CellPadding="10" Font-Bold="False" Font-Size="Small" 
        Height="455px" HorizontalAlign="Center" Width="456px" 
        AutoGenerateRows="False" CellSpacing="10" DefaultMode="Edit">
        <Fields>
            <asp:TemplateField HeaderText="PRN Number">
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# bind("prno") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Train No">
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# bind("train_no") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Train Name">
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# bind("train_name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Travelling Date">
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# bind("travelling_Date") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="From Station">
                <ItemTemplate>
                    <asp:Label ID="Label8" runat="server" Text='<%# bind("from_station") %>'></asp:Label>
                   </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="End Station">
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# bind("end_station") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField></asp:TemplateField>
            <asp:TemplateField HeaderText="Passenger Name">
                <ItemTemplate>
                    <asp:ListBox ID="ListBox1" runat="server" DataSourceID="SqlDataSource1" 
                        DataTextField="passengername" DataValueField="passengername" 
                        EnableTheming="False" Height="160px" 
                        style="margin-left: 0px" Width="248px" Enabled="False" 
                        EnableViewState="False"></asp:ListBox>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:Railway_reservation_systemConnectionString %>" 
                        SelectCommand="SELECT [passengername] FROM [pass_detail] WHERE ([Prno] = @Prno)">
                        <SelectParameters>
                            <asp:QueryStringParameter DefaultValue="null" Name="Prno" 
                                QueryStringField="prno" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <br />
                </ItemTemplate>
            </asp:TemplateField>
        </Fields>
        <HeaderStyle HorizontalAlign="Left" VerticalAlign="Top" Wrap="True" />
        <RowStyle HorizontalAlign="Justify" VerticalAlign="Top" />
    </asp:DetailsView>
    </strong>
    </span></span></td>
        </tr>
    </table></ContentTemplate></asp:UpdatePanel>
</asp:Content>

