using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AccountStoreCore;


namespace AccountStore
{
  public partial class login : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {
      //// get querystring, check for invalid logins....
      //string qs = Request.QueryString["valid"].ToString();

      //if (qs == "false")
      //{
      //  // inform user that login was invalid
      //}

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
      cUser user = new cUser();
      // check the users login info, if it is valid, return a cUser object representing that user - otherwise null is returned
      user = cUser.Verify(txtEmail.Text, "a");

      // if user isn't null, we have a validated user and can proceed to the main page...
      if (user != null)
      {
        Session.Add("AccountStore.login.valid." + user.UserId.ToString(), user);
        Response.Redirect("index.aspx");
      }
      Response.Redirect("login.aspx?valid=false");

    }
  }
}