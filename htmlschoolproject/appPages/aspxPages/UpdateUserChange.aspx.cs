using htmlschoolproject.Helpers;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace htmlschoolproject.appPages.aspxPages
{
    public partial class UpdateUserChange : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string fileName = general.FileName;
            string newPassword = Request.Form["newPasswordId"];
            string oldPassword = Request.Form["oldPasswordId"];
            string updatesql = "UPDATE RegisterTable SET Password = '" + newPassword + "' WHERE Mail = '" + Session["mail"] + "'";
            string loginsql = "SELECT * FROM RegisterTable WHERE Mail = '" + Session["Mail"] + "' AND Password = '" + oldPassword + "'";
            if (IsPostBack)
            {
                if (!string.IsNullOrEmpty(newPassword) && !string.IsNullOrEmpty(oldPassword))
                {
                    if (Helper.IsExist(fileName, loginsql))
                    {
                        int rows = Helper.ExecuteNonQuery(fileName, updatesql);

                        Session.Abandon();
                        Response.Redirect("Login.aspx");
                    }
                    else
                    {
                        ClientScript.RegisterStartupScript(
                        this.GetType(),
                        "alert",
                        "alert('The password is incorect please try again');",
                        true
                     );
                    }



                }
                else
                {
                    ClientScript.RegisterStartupScript(
                    this.GetType(),
                    "alert",
                    "alert('Please fill both fields and try again');",
                    true
                 );
                }

            }
        }
        protected void changeBtn_Click(object sender, EventArgs e)
        {
            string newPassword = Request.Form["newPasswordId"];
        }

    }
    
}