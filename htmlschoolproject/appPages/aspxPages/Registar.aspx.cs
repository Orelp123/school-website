using htmlschoolproject.Helpers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace htmlschoolproject
{
    public partial class Registar : System.Web.UI.Page
    {
        public string message;//גלובאליים
        public int s;

        string fileName = general.FileName;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (this.IsPostBack)//הסבר נוסף יבוא
            {
                s = this.Insert();//s is success
                if (s > 0)
                {
                    message = "Register success";
                    //  Response.Redirect("Admin.aspx");
                    Response.Redirect("WelcomePage.aspx");
                }
                else

                {
                    message = "Register failed";
                }
            }
        }

        private int Insert()
        {
            int success = -1;//מקומי
            string mail = Request.Form["emailId"].ToString();//לדייק מול הטופס
            string isAdmin = "0";
            string fname = Request.Form["firstNameId"];//לדייק מול הטופס
            string password = Request.Form["passwordId"].ToString();
           // int byear = int.Parse(Request.Form["byear"].ToString());//לא רלוונטי
            if (mail != null && password != null)
            {
                string sql = "INSERT INTO RegisterTable (Name,Mail,Password,IsAdmin) VALUES('" + fname + "','" + mail + "','" + password + "','" + isAdmin + "' )";//לדייק מול טבלת הנתונים 
                Helper.DoQuery(fileName, sql);
                success = 1;
            }
            return success;
        }
    }
}