<%@ page title="" language="C#" masterpagefile="home_MasterPage.master" autoeventwireup="true" inherits="client_side_webform_View_Station_Master_Detail, App_Web_b1lgt05p" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel runat="server">
        <ContentTemplate>
            <center style="width: 334px; font-size: xx-large; font-weight: 700; margin-left: 192px"> <span class="style1">View Station Detail</span>  </center>
    <asp:DataList ID="Prod_List" runat="server" BorderStyle="None" 
        CaptionAlign="Left" CellPadding="0" Width="139%" Height="16px"  style="margin-top: 0px" RepeatDirection="Horizontal" RepeatColumns="3" 
       >
        <ItemStyle Font-Bold="True" Font-Size="Medium" HorizontalAlign="Justify" VerticalAlign="Middle" />
        <ItemStyle Font-Bold="True" Font-Size="Medium" HorizontalAlign="Justify" VerticalAlign="Middle" />
        <ItemTemplate>
                                <br />
                                <table style="border: thin solid #800000; width: 85%">
                                    <tr>
                                        <td style="width: 413px">Station ID:&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                        <td style="width: 147px">
                                            <asp:Label ID="Inv_IdLabel" runat="server" Font-Bold="False" Font-Size="Medium" Text='<%# Bind("Station_id") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 413px">Station Code:</td>
                                        <td style="width: 147px">
                                            <asp:Label ID="Product_NmLabel" runat="server" Font-Bold="False" Font-Size="Medium" Text='<%# Bind("station_code") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 413px">Station Name:</td>
                                        <td style="width: 147px">
                                            <asp:Label ID="La3" runat="server" Font-Bold="False" Font-Size="Medium" Text='<%# Bind("station_name") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 413px">&nbsp;</td>
                                        <td style="width: 147px">
                                            <asp:Image ID="Image1" runat="server" AlternateText="No Image" Height="180px" ImageAlign="Top" ImageUrl='<%# Bind("station_image") %>' Width="220px" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 413px">RDN: </td>
                                        <td style="width: 147px">
                                            <asp:Label ID="Product_CostLabel" runat="server" Font-Bold="False" Font-Size="Medium" Text='<%# Bind("rdn") %>' />
                                        </td>
                                    </tr>
                                </table>
            <br />
            <br />
         
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click1">Next</asp:LinkButton>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Previous</asp:LinkButton></ContentTemplate>
    </asp:UpdatePanel>
    </asp:Content>

