<%@ Page Title="" Language="C#" MasterPageFile="home_MasterP.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <span style="font-size: medium"><strong>View Book Ticket Detail</strong></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="prno" DataSourceID="SqlDataSource1" Height="203px" 
        style="margin-left: 0px" Width="112px" 
         CellPadding="3" GridLines="Vertical" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
       >
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" ButtonType="Button" />
            <asp:BoundField DataField="train_name" HeaderText="train name" 
                SortExpression="train_name" />
            <asp:BoundField DataField="from_station" HeaderText="From" 
                SortExpression="from_station" />
            <asp:BoundField DataField="end_station" HeaderText="To" 
                SortExpression="end_station" />
            <asp:BoundField DataField="travelling_Date" HeaderText="Date" 
                SortExpression="travelling_Date" />
            <asp:BoundField DataField="prno" HeaderText="PRNNO" ReadOnly="True" 
                SortExpression="prno" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Railway_reservation_systemConnectionString %>" 
        SelectCommand="SELECT * FROM [prn_detail]" 
    DeleteCommand="DELETE FROM [prn_detail] WHERE [prno] = @prno" 
    InsertCommand="INSERT INTO [prn_detail] ([train_no], [train_name], [from_station], [end_station], [travelling_Date], [prno], [loginid], [Total_Member], [Total_Ticket]) VALUES (@train_no, @train_name, @from_station, @end_station, @travelling_Date, @prno, @loginid, @Total_Member, @Total_Ticket)" 
    UpdateCommand="UPDATE [prn_detail] SET [train_no] = @train_no, [train_name] = @train_name, [from_station] = @from_station, [end_station] = @end_station, [travelling_Date] = @travelling_Date, [loginid] = @loginid, [Total_Member] = @Total_Member, [Total_Ticket] = @Total_Ticket WHERE [prno] = @prno">
        <DeleteParameters>
            <asp:Parameter Name="prno" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="train_no" Type="Int32" />
            <asp:Parameter Name="train_name" Type="String" />
            <asp:Parameter Name="from_station" Type="String" />
            <asp:Parameter Name="end_station" Type="String" />
            <asp:Parameter Name="travelling_Date" Type="String" />
            <asp:Parameter Name="prno" Type="String" />
            <asp:Parameter Name="loginid" Type="String" />
            <asp:Parameter Name="Total_Member" Type="Int32" />
            <asp:Parameter Name="Total_Ticket" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="train_no" Type="Int32" />
            <asp:Parameter Name="train_name" Type="String" />
            <asp:Parameter Name="from_station" Type="String" />
            <asp:Parameter Name="end_station" Type="String" />
            <asp:Parameter Name="travelling_Date" Type="String" />
            <asp:Parameter Name="loginid" Type="String" />
            <asp:Parameter Name="Total_Member" Type="Int32" />
            <asp:Parameter Name="Total_Ticket" Type="Int32" />
            <asp:Parameter Name="prno" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="Bookid" DataSourceID="SqlDataSource2" CellPadding="3" GridLines="Vertical" Width="455px" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:BoundField DataField="Bookid" HeaderText="Bookid" InsertVisible="False" 
                ReadOnly="True" SortExpression="Bookid" />
            <asp:BoundField DataField="passengername" HeaderText="Passenger Name" 
                SortExpression="passengername" />
            <asp:BoundField DataField="age" HeaderText="Age" SortExpression="age" />
            <asp:BoundField DataField="gender" HeaderText="Gender" 
                SortExpression="gender" />
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Railway_reservation_systemConnectionString %>" 
        
    
    SelectCommand="SELECT [Bookid], [passengername], [age], [gender] FROM [pass_detail] WHERE ([Prno] = @Prno)" 
    DeleteCommand="DELETE FROM [pass_detail] WHERE [Bookid] = @Bookid" 
    InsertCommand="INSERT INTO [pass_detail] ([passengername], [age], [gender]) VALUES (@passengername, @age, @gender)" 
    UpdateCommand="UPDATE [pass_detail] SET [passengername] = @passengername, [age] = @age, [gender] = @gender WHERE [Bookid] = @Bookid">
        <DeleteParameters>
            <asp:Parameter Name="Bookid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="passengername" Type="String" />
            <asp:Parameter Name="age" Type="Int32" />
            <asp:Parameter Name="gender" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="Prno" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="passengername" Type="String" />
            <asp:Parameter Name="age" Type="Int32" />
            <asp:Parameter Name="gender" Type="String" />
            <asp:Parameter Name="Bookid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <br />
    <br />
</asp:Content>


