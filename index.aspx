<%@ Page Title="" Language="C#" MasterPageFile="~/index.master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="AccountStore.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="_css/fancybox/jquery.fancybox-1.3.4.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
    <script src="_js/jquery.fancybox-1.3.4.pack.js" type="text/javascript"></script>
<%--    <script src="_js/jquery-1.6.2.js" type="text/javascript"></script>--%>
    <script src="_js/jquery.corner.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#content").corner();
            $("#groups").corner();
            $("#accounts").corner();
            $("#welcome").corner("bottom");
        });
    </script>
 
<script type="text/javascript">
    $(document).ready(function () {
        $("#hidden_link").fancybox({
            'hideOnOverlayClick': false,
            'hideOnContentClick': false,
            'overlayOpacity': 0.7,
            'overlayColor': '#ffffff',
            'modal' : true,
            'padding': 5
        });
    });
</script>
<a href="#by" id="hidden_link" style="display:none;"></a>
<div style="display: none;" >
    <div id="by"><b>Before you can access the Account Store you must login first.</b>&nbsp;&nbsp&nbsp;<a href="javascript:;" onclick="$.fancybox.close();" style="font-size: medium; color: #ff0000;">Login</a></div>
</div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="wrapper" style="margin-top: 9%;">
        <div id="welcome"><asp:Label ID="lblWelcome" runat="server"></asp:Label></div>
        <br />
        <div id="groups">
        <asp:DataList ID="DataList2" runat="server" ItemStyle-HorizontalAlign="Left" Caption="Groups" CaptionAlign="Top" BorderStyle="None">
            <ItemTemplate>
                <asp:LinkButton ID="lbGroup" runat="server"> <%# Eval("Name") %></asp:LinkButton>
            </ItemTemplate>
        </asp:DataList>
        </div>
        <br />
    <div id="accounts">
    <asp:DataList ID="DataList1" runat="server" Caption="Accounts" CaptionAlign="Top" 
            BorderStyle="None" GridLines="Horizontal" 
            onitemdatabound="dlAccounts_OnItemDataBound">
        <ItemTemplate>
            
        <asp:Literal ID="litAccounts" runat="server"></asp:Literal>
        </ItemTemplate>
    </asp:DataList>
    </div>
    <br />
    <%--<asp:literal runat="server"></asp:literal>--%>
<asp:Literal ID="litFancybox" runat="server"></asp:Literal>
<div id="content">
<asp:Label ID="lblIpsum" runat="server"></asp:Label>

</div>
    </div>
</asp:Content>
