using htmlschoolproject.Helpers;
using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.Services.Description;
using System.Web.UI;

namespace htmlschoolproject.appPages.aspxPages
{
    public partial class DeleteUser : Page
    {
        
            public string message;//גלובאליים
            public int s;

            string fileName = general.FileName;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"].ToString() == "1")
            {


                if (this.IsPostBack)//הסבר נוסף יבוא
                {
                    s = this.DelUser();//s is success
                    if (s > 0)
                    {
                        message = "Delete success";
                        //  Response.Redirect("Admin.aspx");
                    }
                    else

                    {
                        message = "Delete failed";
                    }
                }
            }
        }

        private int DelUser()
        {
            int success = -1;

            string mail = Request.Form["emailID"];
            string password = Request.Form["PasswordID"];

            if (mail != null && password != null)
            {
                string sql = "DELETE FROM RegisterTable WHERE Mail = '" + mail + "' AND Password = '" + password + "'";
                Helper.DoQuery(fileName, sql);
                success = 1;
            }

            return success;
        }


    }
    
}
