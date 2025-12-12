using htmlschoolproject.Helpers;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace htmlschoolproject
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string admin = Session["admin"].ToString();
            adminOnly.Visible = (admin == "1");

            bool isLoggedIn = Session["userName"] != null &&
                      Session["userName"].ToString() != "visitor";

            logedUserOnly.Visible = isLoggedIn;
        }
        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Abandon();                 
            Response.Redirect("Login.aspx");   
        }
    }
}