<%@ page title="" language="C#" masterpagefile="home_MasterPage.master" autoeventwireup="true" inherits="client_side_webform_FareRule_Detail, App_Web_b1lgt05p" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
<asp:ScriptManager  runat="server">


</asp:ScriptManager>  
    <asp:UpdatePanel runat="server">
        <ContentTemplate>

     <table style="width: 135%">
         <tr>
             <td style="color: #000040; font-size: medium"><span class="style1" style="font-size: x-large"><strong>Enter&nbsp; Following Detail To View Fare Detail</strong></span><strong> </strong> 
</td>
         </tr>
         <tr>
             <td>
    <table style="border: thick double #800000; width: 64%; height: 271px; margin-left: 136px; margin-top: 0px;">
        <tr>
            <td style="color: #000040; height: 78px; text-align: left; width: 238px;">
                <strong style="text-align: left"><span style="font-size: medium">Train No&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong></td>
            <td style="text-align: justify; height: 78px">
                <br />
                <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 0px" MaxLength="5" 
                    ></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" 
                    ErrorMessage="Please Enter Train No" SetFocusOnError="True" 
                    ValidationGroup="v" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="click" 
                    ValidationGroup="v" CssClass="b2" Height="40px" Width="61px" />
                &nbsp;<asp:Label ID="Label13" runat="server" ForeColor="Red" Visible="False" style="font-weight: 700"></asp:Label>
                <br />
                <asp:RangeValidator ID="RangeValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Enter only Digit " 
                    MaximumValue="5555555" MinimumValue="1" SetFocusOnError="True" Type="Integer" 
                    ValidationGroup="v" Display="Dynamic" ForeColor="Red" style="font-weight: 700"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td style="color: #000040; height: 40px; text-align: left; font-size: medium; width: 238px;">
                <asp:Label ID="Label8" runat="server" Text=" From Station " 
                    style="font-weight: 700" Visible="False"></asp:Label>
            </td>
            <td style="height: 40px; text-align: left;">
                <asp:DropDownList ID="ddlfomstation" runat="server" Visible="False">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="color: #000040; height: 40px; text-align: left; width: 238px;">
                <asp:Label ID="Label9" runat="server" Text="End Station " 
                    style="font-weight: 700; font-size: medium" Visible="False"></asp:Label>
            </td>
            <td style="height: 40px; text-align: left;">
                <asp:DropDownList ID="ddlendstation" runat="server" Visible="False">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="color: #000040; height: 40px; text-align: left; font-size: medium; width: 238px;">
                <asp:Label ID="Label10" runat="server" Text="Class&nbsp;" 
                    style="font-weight: 700" Visible="False"></asp:Label>
                <strong>&nbsp;&nbsp;&nbsp;</strong></td>
            <td style="height: 40px; text-align: left;">
                <asp:DropDownList ID="ddlclasstype" runat="server" Height="25px" Width="117px" Visible="False" 
                   >
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="height: 12px; width: 238px;">
             
            </td>
            <td style="height: 12px; text-align: left;">
                <asp:Button ID="Button1" runat="server"  Text="Get Fare" 
                     Height="35px" CssClass="b2" BorderStyle="None"  
                    ValidationGroup="v" onclick="Button1_Click" Visible="False" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server"  Text="Clear" 
                    Height="35px" Width="77px" CssClass="b2" BorderStyle="None" 
                   ValidationGroup="v" Visible="False" />
            </td>
        </tr>
        <tr>
            <td style="height: 29px; width: 238px;">
                &nbsp;</td>
            <td style="height: 29px">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                    DisplayMode="List" Height="16px" ShowMessageBox="True" ShowSummary="False" />
            </td>
        </tr>
    </table>
             </td>
         </tr>
         <tr>
             <td>
    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="X-Large" 
        ForeColor="#000040" Text="Fare Rule Detail"></asp:Label>
             </td>
         </tr>
         <tr>
             <td>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        Height="226px" HorizontalAlign="Center" Width="382px" BackColor="White" 
        BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" 
        GridLines="None" CellSpacing="1">
        <EditRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:TemplateField HeaderText="Train Number ">
                <ItemTemplate>
                    <asp:Label ID="Label11" runat="server" Text='<%# Bind("Train_no") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Coach Type">
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("classtype") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Distance">
                <ItemTemplate>
                    <asp:Label ID="Label12" runat="server" Text='<%# bind("distance") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Fare Amout">
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("amount") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Fields>
        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
        <PagerStyle BorderColor="Yellow" BorderStyle="Solid" BorderWidth="5px" 
            BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#DEDFDE" ForeColor="#400000" Font-Bold="True" />
    </asp:DetailsView>
             </td>
         </tr>
     </table>
    
        </ContentTemplate>
    </asp:UpdatePanel>

</asp:Content>

