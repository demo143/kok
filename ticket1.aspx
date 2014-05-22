<%@ page language="C#" autoeventwireup="true" inherits="client_side_webform_ticket1, App_Web_o00qpjiz" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            text-decoration: underline;
            font-size: x-large;
        }
        .style2
        {
            width: 100%;
        }
        .style3
        {
            text-align: left;
            width: 131px;
        }
        .style4
        {
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
    
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ImageButton ID="ImageButton1" runat="server" Height="53px" 
            ImageUrl="~/Wallpaper/PDF.jpg" onclick="ImageButton1_Click" Width="80px" 
            style="text-align: center" ToolTip="click here" />
        <br />
        <asp:DataList ID="DataList1" runat="server" 
            BorderColor="#999966" BorderStyle="Dotted" BorderWidth="7px" 
            Height="16px" HorizontalAlign="Center" 
            RepeatDirection="Horizontal" 
            style="margin-right: 0px; margin-bottom: 0px; margin-left: 0px;" 
            Width="284px" BackColor="Maroon"  
            ForeColor="White" EnableViewState="False" CellPadding="0" RepeatColumns="5">
            
            <HeaderTemplate>
                <span class="style1">Reservation Ticket</span>
            </HeaderTemplate>
            
            <ItemTemplate>
                <table class="style2">
                    <tr>
                        <td class="style3">
                            Train No&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td class="style4">
                            <asp:Label ID="Label1" runat="server" Text='<%# bind("Train_no") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            Train Name&nbsp;&nbsp;&nbsp;</td>
                        <td class="style4">
                            <asp:Label ID="Label2" runat="server" Text='<%# bind("train_name") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            From Station&nbsp;&nbsp;</td>
                        <td class="style4">
                            <asp:Label ID="Label3" runat="server" Text='<%# bind("from_station") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            End Station&nbsp;&nbsp;&nbsp;</td>
                        <td class="style4">
                            <asp:Label ID="Label4" runat="server" Text='<%# bind("end_station") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            Travelling Date</td>
                        <td class="style4">
                            <asp:Label ID="Label5" runat="server" Text='<%# bind("travelling_Date") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            Total Member&nbsp;&nbsp;</td>
                        <td class="style4">
                            <asp:Label ID="Label6" runat="server" Text='<%# bind("Total_Member") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            Total Amount&nbsp;&nbsp;&nbsp;</td>
                        <td class="style4">
                            <asp:Label ID="Label7" runat="server" Text='<%# bind("ticket_amount") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">Ticket Amount</td>
                        <td class="style4">
                            <asp:Label ID="Label8" runat="server" Text='<%# bind("Total_Ticket") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            PRN Number
                        </td>
                        <td class="style4">
                            <asp:Label ID="prnno" runat="server" Text='<%# bind("prno") %>'> </asp:Label>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
        <br />
    
    </div>
    </form>
</body>
</html>
