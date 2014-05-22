<%@ page title="" language="C#" masterpagefile="home_MasterPage.master" autoeventwireup="true" inherits="client_side_webform_Ticket, App_Web_b1lgt05p" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <p>
        <br />
       <table align="center" cellspacing="0" cellpadding="10" 
        
        
            
            style="border: medium groove #800000; width: 314px;">
       <caption style="font-size: x-large; " class="style1" >
           <strong>Reservation Ticket</strong></caption>
        <asp:Repeater ID="Repeater2" runat="server"  
                DataSourceID="SqlDataSource1">
        <HeaderTemplate>
        <tr>
        <th>Train No        :</th> <td><%# Eval("train_no")%></td><br />
         <th>Train Name     :</th>  <td><%# Eval("train_name")%></td><br />
        <th>Travelling Date :</th> <td> <%# Eval("travelling_Date")%></td>
            <br></br>
        </tr>
         

           <tr>
        <th>From Station    :</th>  <td><%# Eval("from_station")%></td> <br />
         <th>Train Name     :</th>   <td><%# Eval("end_station")%></td><br />
        <th>Travelling Date :</th>   <td> <%# Eval("travelling_Date")%></td>
               <br></br>
        </tr>

      
           <tr>
        <th>Ticket Fare    :</th><td><%# Eval("Total_Ticket")%></td> <br />
             <br></br>
        </tr>

        </ItemTemplate>
        </HeaderTemplate>
        </asp:Repeater>
    
    </table>
    </p>
    <p>
        <asp:ImageButton ID="ImageButton1" runat="server" Height="53px" 
            ImageUrl="~/Wallpaper/PDF.jpg" onclick="ImageButton1_Click" Width="80px" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Railway_reservation_systemConnectionString2 %>" 
            SelectCommand="SELECT train_no, train_name, from_station, end_station, travelling_Date, Total_Ticket FROM prn_detail where  prn_detail.prno=@p">
            <SelectParameters>
                <asp:QueryStringParameter Name="p" QueryStringField="prno" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>

</asp:Content>

