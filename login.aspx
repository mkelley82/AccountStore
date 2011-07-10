<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="AccountStore.login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>PassStore - Login</title>
    
    <link href="_css/dialog/dialog.css" rel="stylesheet" type="text/css" />
    <script src="_js/jquery-1.6.2.js" type="text/javascript"></script>
    <script src="_js/jquery.corner.js" type="text/javascript"></script>
    <script type="text/javascript">
        // test auto-ready logic - call corner before DOM is ready
        $('#txtEmail').corner();
        $('#txtPassword').corner();
        $('#btnLogin').corner();
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="wrap">
    <div class="dialog">
        <div class="hd">
            <div class="c">
            </div>
        </div>
        <div class="bd">
            <div class="c">
                <div class="s">
                    <!-- content area -->
                    <h1>PassStore User Login...</h1>
                    <br />
                    <br />
                    <table>
                    <tr>
                    <td><p><b>Email:&nbsp;&nbsp;</b></td></p><td><asp:TextBox ID="txtEmail"                           
                            style="margin-left: 10px;" runat="server" 
                            Width="220px" Height="20px" BorderStyle="None">mkelley82@gmail.com</asp:TextBox><br /></td>
                    
                    </tr>
                    <tr>
                    
                    <td><p><b>Password:</b></p></td><td><asp:TextBox ID="txtPassword" 
                            style="margin-left: 10px;" 
                            runat="server" Width="220px" Height="20px" BorderStyle="None"></asp:TextBox>
                    <br />
                    <br />
                    </td>
                    </table>
                    <asp:Button ID="btnLogin" runat="server" Text="Login" 
                        style="margin-left: 250px;" onclick="btnLogin_Click" /> 
                                     
                    <br />
                    <br />
                    <br />
                    <br />
                    <center>
                    <blockquote style="width: 67%;">Use of this system is for the expressed use of authorized Chexys, Inc. Personell only. While using this system you will be subject to monitoring and logging of your activities.  Unauthorized access of this system will be prosecuted to the fullest extent of the law.  We also reserve the right to use waterboarding on aforementioned unauthorized users.  That is all.</blockquote></center>
                    <!-- content area -->
                </div>
            </div>
        </div>
        <div class="ft">
            <div class="c">
            </div>
        </div>
    </div>
    </div>
    </form>
</body>
</html>
