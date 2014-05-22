<%@ Page Title="" Language="C#" MasterPageFile="home_MasterP.master" %>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            gridview(); 
        }

    }
    public void gridview()
    {
        feedback_dl fd=new feedback_dl();
        GridView1.DataSource = fd.show();
        GridView1.DataBind();
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        gridview();
    }


    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        feedback_dl fd = new feedback_dl();
        Label txtunmae = (Label)GridView1.Rows[e.RowIndex].FindControl("Label1");
      
        fd.uname = txtunmae.Text;
        fd.deletedata(txtunmae.Text);
        gridview();
    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="font-size: x-large">
        <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;FeedBack of User</strong></p>
        <asp:GridView ID="GridView1" runat="server" Height="35px" 
            HorizontalAlign="Right" Width="16px" onpageindexchanging="GridView1_PageIndexChanging" 
            AllowPaging="True" PageSize="1" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
        CellPadding="3" DataKeyNames="uname" GridLines="Vertical" 
        onrowdeleting="GridView1_RowDeleting" style="margin-left: 23px" >
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:TemplateField HeaderText="User Name">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("uname") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Email Id">
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("email_id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Comment">
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("comment") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Suggestion">
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("suggestion") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowDeleteButton="True" DeleteText="Remove" >
                <ControlStyle ForeColor="#000099" />
                </asp:CommandField>
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
    <p>
        &nbsp;</p>
    <br />
    <br />
</asp:Content>

