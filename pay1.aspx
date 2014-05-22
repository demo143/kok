<%@ page title="" language="C#" masterpagefile="home_MasterPage.master" autoeventwireup="true" inherits="client_side_webform_pay1, App_Web_b1lgt05p" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="height: 10px">
        &nbsp;</p>
    <p style="width: 682px; height: 0px; font-weight: 700; color: #400000">
        Congratulation&nbsp; ! You have Succefully Booked a Ticket. Print The Ticket 
        Below click Print Button.&nbsp;</p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <table cellspacing="0" cellpadding="7" frame="border" 
            
            
            style="border: thick solid #800000; ">
         <caption style="font-size: x-large; " class="style1" ><strong>Ticket Reservation  </strong>  </caption>
     
        <asp:Repeater ID="Repeater1" runat="server">
       
        <HeaderTemplate>
        <tr>
        <th>Train No</th>
        <th>Train Name</th>
        <th>Date OF Journey</th>


         <th>From Station </th>
        <th>End Station</th>
        

         <th>PNR No  </th>
        <th>Total Fare </th>
       
        </tr>
        </HeaderTemplate>
        <ItemTemplate>
        <tr>
        <td><%# Eval("train_no")%></td>
        <td><%# Eval("train_name")%></td>
        <td> <%# Eval("travelling_Date")%></td>
        
          <td><%# Eval("from_station")%></td>
          <td><%# Eval("end_station")%></td>
          <td> <%# Eval("prno")%></td>
         <td><%# Eval("Total_Ticket")%></td>
         
        
        </tr>
        </ItemTemplate>
        </asp:Repeater>
    
    </table>
    </p>
       <table align="center" cellspacing="0" cellpadding="10" 
        
        style="border: thick solid #800000; ">
       <caption style="font-size: x-large; " class="style1" ><strong>Details Pessenger </strong> </caption>
        <asp:Repeater ID="Repeater2" runat="server">
        <HeaderTemplate>
        <tr>
        <th>Name </th>
         <th>Age</th>
        <th>Gender</th>
        </tr>
        </HeaderTemplate>
        <ItemTemplate>
        <tr>
        <td><%# Eval("passengername")%></td>
        <td> <%# Eval("age")%></td>
         <td> <%# Eval("gender")%></td>
        </tr>
        </ItemTemplate>
        </asp:Repeater>
    
    </table>
    <p style="color: #400000; font-size: medium">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Print Ticket" ToolTip="Click" 
            Width="198px" CssClass="b2" onclick="Button1_Click" />
    </p>
</asp:Content>

