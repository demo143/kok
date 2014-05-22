<%@ page title="" language="C#" masterpagefile="home_MasterPage.master" autoeventwireup="true" inherits="client_side_webform_reserv, App_Web_b1lgt05p" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 
      
       <table style="width: 111%">
           <tr>
               <td>
                   <span class="style1" style="font-size: x-large; "><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ticket&nbsp;Reservation&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>
                   <asp:Label ID="Label5" runat="server"></asp:Label>
                   </span></td>
           </tr>
           <tr>
               <td>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" ForeColor="#333333" GridLines="None" Height="16px" 
            style="text-align: center; margin-left: 107px" Width="496px" 
        HorizontalAlign="Center" onrowdatabound="GridView1_RowDataBound1" 
            onprerender="GridView1_PreRender" 
            onselectedindexchanged="GridView1_SelectedIndexChanged"   >
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="Train No">
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Train_no") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Train Name">
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("Train_name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="date">
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="From Station"></asp:TemplateField>
                <asp:TemplateField HeaderText="End Status"></asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
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
               <td style="height: 22px">
                   <span class="style1" style="font-size: x-large; "><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; Passanger Detaill</strong></span></td>
           </tr>
           <tr>
               <td>
    <table style="border: thick solid #400000; height: 371px; margin-left: 117px; color: #000040; font-weight: bold; margin-top: 12px;" align="center" >
        <tr>
            <td bgcolor="Maroon" style="color: #FFFFFF"> Passenger Name</td>
            <td bgcolor="Maroon" style="color: #FFFFFF;"> Age</td>
            <td bgcolor="Maroon" style="color: #FFFFFF"> 
                Gender</td>
            <td bgcolor="Maroon" style="color: #FFFFFF"> &nbsp;</td>
        </tr>
        <tr>
            <td  style="height: 6px">
                <asp:TextBox ID="txtName" runat="server" BorderStyle="Solid" />
            </td>
            <td  style="width: 154px; height: 6px;" >
                <asp:TextBox ID="txtAge" runat="server" BorderStyle="Solid" />
            </td>
            <td  style="height: 6px" >
                <asp:DropDownList ID="ddlGen" runat="server">
                    <asp:ListItem>---Select--</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td  style="height: 6px" >
                <asp:Button ID="btnAdd" runat="server" onclick="btnAdd_Click1" Text="Add" 
                    ValidationGroup="v" />
            </td>
        </tr>
        <tr>
            <td colspan="4"  style="color: #FFFFFF" >
                <asp:GridView ID="gvResPass" runat="server" AutoGenerateColumns="False" 
                    Width="100%" 
                    HorizontalAlign="Center" style="text-align: center" 
                    onrowdeleting="gvResPass_RowDeleting" CellPadding="4" ForeColor="#333333" 
                    GridLines="None" onrowediting="gvResPass_RowEditing" 
                  
                    onrowcancelingedit="gvResPass_RowCancelingEdit">
                    <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="name" HeaderText="Name" />
                    <asp:BoundField DataField="age" HeaderText="Age" >
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Top" />
                    </asp:BoundField>
                    <asp:BoundField DataField="gen" HeaderText="Gender" />
                    <asp:CommandField ButtonType="Image" ShowEditButton="True" 
                        EditImageUrl="~/image/button/edit.png" />
                    <asp:CommandField ButtonType="Image" ShowDeleteButton="True" 
                        DeleteImageUrl="~/image/button/delete.png" />
                </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
     
            </td>
        </tr>
        <tr>
            <td style="height: 16px" > </td>
            <td colspan="3" style="height: 16px" > 
                <br/>
                <asp:Button ID="btncount" runat="server" Height="33px" onclick="btncount_Click" 
                    Text="Count Ticket Amount" Enabled="False" />
            </td>
        </tr>
        <tr >
            <td style="height: 19px; text-align: left">
                Rate&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
            </td>
            <td colspan="3" style="height: 19px; text-align: left" >
                <asp:Label ID="lblRate" runat="server" Text="0.00" />
            </td>
        </tr>
        <tr >
            <td style="height: 19px; text-align: left;"> Person&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp; </td>
            <td colspan="3" style="height: 19px; text-align: left;"> <asp:Label runat="server" ID="lblPerson" Text="0" /> 
                &nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtName" Display="None" 
                    ErrorMessage="Please Enter Passenger Name" ValidationGroup="v"></asp:RequiredFieldValidator>
                <cc1:ValidatorCalloutExtender ID="RequiredFieldValidator1_ValidatorCalloutExtender" 
                    runat="server" Enabled="True" TargetControlID="RequiredFieldValidator1">
                </cc1:ValidatorCalloutExtender>
            </td>
        </tr>
        <tr >
            <td style="height: 19px; text-align: left;" > Amount&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp; </td>
            <td colspan="3" style="height: 19px; text-align: left;" > <asp:Label runat="server" ID="lblAmount" 
                    Text="0.00" /> 
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtAge" Display="None" ErrorMessage="Please Enter Age " 
                    ValidationGroup="v"></asp:RequiredFieldValidator>
                <cc1:ValidatorCalloutExtender ID="RequiredFieldValidator2_ValidatorCalloutExtender" 
                    runat="server" Enabled="True" TargetControlID="RequiredFieldValidator2">
                </cc1:ValidatorCalloutExtender>
            </td>
        </tr>
        <tr >
            <td style="text-align: left" > Tax&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : </td>
            <td style="width: 154px" > <asp:Label runat="server" ID="lblTaxAmount" Text="0.00" /> 
                <asp:RangeValidator ID="RangeValidator1" runat="server" 
                    ControlToValidate="txtAge" Display="None" ErrorMessage="Only Digit Enter" 
                    MaximumValue="50" MinimumValue="1" SetFocusOnError="True" Type="Integer" 
                    ValidationGroup="v"></asp:RangeValidator>
                <cc1:ValidatorCalloutExtender ID="RangeValidator1_ValidatorCalloutExtender" 
                    runat="server" Enabled="True" TargetControlID="RangeValidator1">
                </cc1:ValidatorCalloutExtender>
            </td>
        </tr>
        <tr>
            <td style="text-align: left" > Final Amount&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp; </td>
            <td style="width: 154px; text-align: left;" > <asp:Label runat="server" ID="lblFinalAmount" Text="0.00" /> 
                &nbsp;<asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                <br />
            </td>
        </tr>

         <tr >
             <td >
                 &nbsp;</td>
             <td style="width: 154px">
                 <asp:Button ID="btnpayment" runat="server" BackColor="#8080FF" Font-Bold="True" 
                     ForeColor="White" Text="Make Payment" onclick="btnpayment_Click" 
                     Enabled="False" />
             </td>
        </tr>
    </table>
        
        
     
       </td>
           </tr>
       </table> 
</asp:Content>

