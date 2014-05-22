<%@ page title="" language="C#" masterpagefile="home_MasterPage.master" autoeventwireup="true" inherits="client_side_webform_ViewProfile, App_Web_b1lgt05p" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <asp:ScriptManager runat="server" ></asp:ScriptManager>
    <asp:UpdatePanel runat="server">
        <ContentTemplate>
            <table style="width: 100%">
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" ForeColor="Red" style="font-size: medium"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="font-size: xx-large" class="style1"><strong>Profile</strong></td>
                </tr>
                <tr>
                    <td>
                        <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="Username" Font-Bold="False" Font-Size="10pt" ForeColor="Black" Height="427px" HorizontalAlign="Center" onitemupdating="DetailsView1_ItemUpdating" onmodechanging="DetailsView1_ModeChanging" Width="370px">
                            <EditRowStyle BackColor="White" Font-Bold="True" ForeColor="#000040" />
                            <Fields>
                                <asp:TemplateField HeaderText="Personal Information">
                                    <ControlStyle BackColor="Maroon" BorderColor="Navy" BorderWidth="5px" Font-Bold="True" Font-Size="Medium" ForeColor="White" />
                                    <ControlStyle Font-Bold="True" Font-Size="Medium" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="First Name">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox7" runat="server" Text='<%# bind("firstname") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label13" runat="server" Text='<%# bind("firstname") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Middle Name">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox8" runat="server" BorderStyle="Solid" Text='<%# bind("middlename") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label14" runat="server" Text='<%# Bind("middlename") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Last Name">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox9" runat="server" BorderStyle="Solid" Text='<%# bind("last_name") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label15" runat="server" Text='<%# bind("last_name") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Birth Date">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox10" runat="server" BorderStyle="Solid" Text='<%# bind("birth_date") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label16" runat="server" Text='<%# bind("birth_date") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Gender">
                                    <EditItemTemplate>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatDirection="Horizontal" SelectedValue='<%# bind("gender") %>' Width="94px">
                                            <asp:ListItem>Male </asp:ListItem>
                                            <asp:ListItem>Female</asp:ListItem>
                                        </asp:RadioButtonList>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label17" runat="server" Text='<%# bind("gender") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Mobile No">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox11" runat="server" BorderStyle="Solid" Text='<%# bind("mobileno") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label18" runat="server" Text='<%# bind("mobileno") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Email ID">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox12" runat="server" BorderStyle="Solid" Text='<%# BIND("email_id") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label19" runat="server" Text='<%# BIND("email_id") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:CommandField ShowEditButton="True" />
                                <asp:HyperLinkField NavigateUrl="~/client side webform/Changepassword.aspx" Text="Change Password" />
                            </Fields>
                            <FooterStyle BackColor="#CCCCCC" />
                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                            <RowStyle BackColor="White" />
                        </asp:DetailsView>
                    </td>
                </tr>
            </table>
       </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

