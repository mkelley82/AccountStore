using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AccountStore
{
  public partial class index : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {
      // check if this is a PostBack
      if (!Page.IsPostBack)
      {
        // if there is not a user logged in...
        if (Session["objUser"] == null)
          // display the login screen
          litFancybox.Text = "<script>jQuery(document).ready(function() {$(\"#hidden_link\").trigger('click');});</script>";
      }
        
    }
  }
}