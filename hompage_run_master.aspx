<%@ Page Title="" Language="C#" MasterPageFile="home_MasterPage.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="width: 700px; height: 61px; margin-left: 28px; text-align: right;">
      &nbsp;<marquee direction="left" style="height: 59px; width: 508px"> <asp:ImageButton ID="ImageButton1" runat="server" Height="52px" 
            ImageUrl="~/image/button/NEWSTAR.GIF" 
            PostBackUrl="~/client side webform/advertiesment.aspx" AlternateText="New Advertiesment"  ToolTip="New Adevertiesment"/></marquee></p>
    <p style="width: 723px; height: 402px; margin-left: 0px; margin-top: 0px;">
    <asp:Image ID="Image1" runat="server" Height="267px" 
        ImageUrl="~/image/sliderimage.gif" 
        Width="391px" 
            style="margin-left: 0px; margin-top: 0px; margin-bottom: 0px" />
</p>
</asp:Content>

