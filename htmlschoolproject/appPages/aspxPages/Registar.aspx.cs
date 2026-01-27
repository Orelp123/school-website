using htmlschoolproject.appPages.aspxPages;
using htmlschoolproject.Helpers;
using System;
using System.Data;
using System.Web.Services.Description;
using System.Web.UI;

namespace htmlschoolproject
{
    public partial class Registar : System.Web.UI.Page
    {
        public string msg = "";
        private readonly string fileName = general.FileName;

        

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            int success = Insert();

            if (success > 0)
            {
               
                string userName = txtName.Text.Trim();



                ClientScript.RegisterStartupScript(
                    this.GetType(),
                         "alert",
                         $"alert('welcome {userName}');",
                         true
                );
                
            }
            else
            {
                ClientScript.RegisterStartupScript(
                   this.GetType(),
                        "alert",
                        $"alert('Register Failed');",
                        true
               );
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtEmail.Text = "";
            txtPassword.Text = "";
            txtName.Text = "";
            rbMale.Checked = true;
            rbFemale.Checked = false;
            lblMessage.Text = "";
        }

        private int Insert()
        {
            int success = -1;

            string mail = txtEmail.Text.Trim();
            string password = txtPassword.Text.Trim();
            string fname = txtName.Text.Trim();
            string isAdmin = "0";

            if (mail != "" && password != "" && fname != "")
            {
                string sql = "INSERT INTO RegisterTable (Name, Mail, Password, IsAdmin) VALUES ('" + fname + "','" + mail + "','" + password + "','" + isAdmin + "')";

                Helper.DoQuery(fileName, sql);
                success = 1;
                lblMessage.Text = "Register success";
            }
            else
            {
                //ClientScript.RegisterStartupScript(
                //    this.GetType(),
                //    "alert",
                //    "alert('Please fill in email, password and name.');",
                //    true
                //);
            }

            return success;
        }
    }
}
