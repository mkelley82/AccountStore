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
        });
    </script>
<script type="text/javascript">
    $(document).ready(function () {
        $("#hidden_link").fancybox({
//            'title': 'Login',
//            'titleShow': true,
//            'titlePosition': 'over',
//            'titleFormat': 'formatTitle',
//            'type': 'iframe',
//            'href' : 'login.aspx',
////            'width': '67%',
////            'height': '67%',
//            'hideOnOverlayClick': false,
//            'hideOnContentClick': false,
            'overlayOpacity': 0.7,
            'overlayColor': '#ffffff',
            'enableEscapeButton': true,
            'showCloseButton' : true,
            //'modal' : true,
            'padding': 5
        });
    });
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<a href="#by" id="hidden_link" style="display:none;"></a>
<div style="display: none;" >
    <div id="by"><b>Hello, welcome to AccountStore!</b><%--&nbsp;&nbsp&nbsp;<a href="javascript:;" onclick="$.fancybox.close();" style="font-size: medium; color: #ff0000;">Close</a>--%></div>
</div>
    <asp:literal runat="server"></asp:literal>
<asp:Literal ID="litFancybox" runat="server"></asp:Literal>
<div id="content">
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas et purus quis metus sollicitudin pretium. Sed sed eros est. Quisque mi nisl, ultrices vel gravida a, ullamcorper nec lorem. Vivamus mattis faucibus odio ut tempus. Cras metus urna, adipiscing non dictum sit amet, pellentesque vel sapien. Phasellus a quam eget elit scelerisque condimentum a quis libero. Vestibulum in dolor in mauris rutrum molestie pulvinar fermentum diam. Curabitur ultricies ullamcorper urna in consequat. Nam vulputate faucibus fermentum. Sed commodo ante ac leo ornare non interdum sapien ornare. 
</div>
</asp:Content>
