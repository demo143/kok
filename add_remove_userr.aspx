<%@ Page Title="" Language="C#" MasterPageFile="home_MasterP.master" %>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        Response.Redirect("trainlist.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("alltrainlist.aspx");
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        datalayer dl = new datalayer();
       
        dl.deletedata(TextBox2.Text);
        Label1.Text = "User Succefully Deleted";
        

    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <p style="font-size: x-large">
        <strong style="text-align: center"><br />
        </strong>
    </p>
    <table style="width: 81%; height: 178px; margin-left: 76px; margin-top: 21px;">
    <caption style="font-size: xx-large; color: #000040"><strong>Remove User<br />
        </strong></caption>
        <tr>
            <td style="font-weight: 700; color: #000040; height: 45px; width: 126px;">
                Enter User Name</td>
            <td style="height: 45px">
                <asp:TextBox ID="TextBox2" runat="server" Height="30px" Width="132px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 126px">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Remove" Height="40px" 
                    Width="81px" onclick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td style="width: 126px">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
            </td>
        </tr>
    </table>
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
</asp:Content>

