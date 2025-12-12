using htmlschoolproject.Helpers;
using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Security.Cryptography.X509Certificates;
using System.Web.UI;

namespace htmlschoolproject.appPages.aspxPages
{
    public partial class WebForm1 : Page
    {
        public string msg;
        public int s;
        protected void Page_Load(object sender, EventArgs e)
        {
            string fileName = general.FileName;

            if (this.IsPostBack)
            {
                string mail = Request.Form["emailID"];
                string password = Request.Form["PasswordID"];

                if (mail != "" && password != "")
                {
                    string loginsql = "SELECT * FROM RegisterTable WHERE Mail = '" + mail + "' AND Password = '" + password +"'" ;
                    if (Helper.IsExist(fileName, loginsql))
                    {
                        DataTable table = Helper.ExecuteDataTable(fileName, loginsql);
                        int length = table.Rows.Count;
                        if (length == 0) 
                        {
                            msg = "no users";
                            Response.Redirect("Login.aspx");
                        }
                        else
                        {
                            Session["Name"] = table.Rows[0]["Name"].ToString();
                            Session["admin"] = table.Rows[0]["IsAdmin"].ToString();
                            if (Session["admin"].ToString()=="1") 
                            {
                                msg = "welcome admin " + Session["Name"].ToString();
                                Session["userName"] = Session["Name"].ToString();
                                Response.Redirect("WelcomePage.aspx");
                                
                            }
                            else
                            {
                                msg = "welcome " + Session["Name"].ToString();
                                Response.Redirect("WelcomePage.aspx");
                            }

                        }
                    }
                }
                else
                {
                       ClientScript.RegisterStartupScript(
                       this.GetType(),
                       "alert",
                       "alert('Please fill in both email and password fields.');",
                       true
                    );

                }

            }

            

        }
    }
}
