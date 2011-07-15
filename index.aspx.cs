using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AccountStoreCore;

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
        {
          // trigger fancybox
          litFancybox.Text = "<script>jQuery(document).ready(function() {$(\"#hidden_link\").trigger('click');});</script>";

          // display the login screen
          Response.Redirect("login.aspx");
        }
        lblWelcome.Text = "Welcome, " + Session["Email"].ToString();
        // we have a valid user....
        // load some Ipsum

        cUser user = (cUser)Session["objUser"];
        List<cGroup> groups = cGroup.ListAllGroupsByUser(user.UserId);

        Session.Add("UserGroups", groups);

        DataList2.DataSource = groups;
        DataList2.DataBind();

        //foreach (cGroup group in groups)
        //  if (groups.Count() == 1)
        //    lblGroups.Text += group.Name + ".";
        //  else
        //  {
        //    if (group.Name != groups.Last().Name)
        //      lblGroups.Text += group.Name + ", ";
        //    else
        //      lblGroups.Text += group.Name + ".";
        //  }

        List<cAccount> accounts = cAccount.ListAllAccountsByUserId(user.UserId);

        Session.Add("UserAccounts", accounts);

        DataList1.DataSource = accounts;
        DataList1.DataBind();
        lblIpsum.Text = Ipsum.GetPhrase(250);
      }
        
    }

    public void FilterByGroup(int iGroupId)
    {
 
    }

    public void Show(int iAccountId)
    {
      List<cAccount> accounts = (List<cAccount>)Session["UserAccounts"];
      
      cAccount currAccount = accounts.Where(a => a.AccountId == iAccountId).SingleOrDefault();
      lblIpsum.Text += "Username: " + currAccount.Username + System.Environment.NewLine;
      lblIpsum.Text += "Password: " + currAccount.Password + System.Environment.NewLine;
      lblIpsum.Text += System.Environment.NewLine;
      lblIpsum.Text += System.Environment.NewLine;
      lblIpsum.Text += "NOTES: " + System.Environment.NewLine;
      lblIpsum.Text += "Password: " + currAccount.Notes + System.Environment.NewLine;


    }

    protected void dlAccounts_OnItemDataBound(object sender, DataListItemEventArgs e)
    {
      litAccount.Text = e.Item["AccountId"].ToString();
    }
  }
}