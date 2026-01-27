using htmlschoolproject.Helpers;
using System;
using System.Data;
using System.Web.UI;

namespace htmlschoolproject.appPages.aspxPages
{
    public partial class UserList : System.Web.UI.Page
    {
        public string msg = " ";
        public string msg1 = " ";
        public string sqlSelect;

        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Session["admin"] == null || Session["admin"].ToString() != "1")
            {
                ClientScript.RegisterStartupScript(
                       this.GetType(),
                       "alert",
                       "alert('You are not connected as an admin');",
                       true
                    );

                
                return;
            }

            
            if (!string.IsNullOrEmpty(Request.Form["deleteMail"]))
            {
                DelUser();
            }

            
            string fileName = general.FileName;
            string tableName = "RegisterTable";

            sqlSelect = "SELECT * FROM " + tableName;
            DataTable table = Helper.ExecuteDataTable(fileName, sqlSelect);

            if (table.Rows.Count == 0)
            {
                msg1 = "No Users";
                msg = "";
            }
            else
            {
                GetAllUsers(table, table.Rows.Count);
                msg1 = table.Rows.Count + " Users registered";
            }
        }


        private void GetAllUsers(DataTable table, int length)
        {
            msg = "<table class='users-table'>";
            msg += "<thead><tr>";
            msg += "<th>First name</th>";
            msg += "<th>Email</th>";
            msg += "<th>Password</th>";
            msg += "<th>Role</th>";
            msg += "<th>Delete</th>";
            msg += "</tr></thead>";
            msg += "<tbody>";

            for (int i = 0; i < length; i++)
            {
                string name = table.Rows[i]["Name"].ToString();
                string mail = table.Rows[i]["Mail"].ToString();
                string pass = table.Rows[i]["Password"].ToString();
                string isAdmin = table.Rows[i]["IsAdmin"].ToString();

                msg += "<tr>";
                msg += "<td>" + name + "</td>";
                msg += "<td class='mono'>" + mail + "</td>";
                msg += "<td class='password-cell'>" + pass + "</td>";
                msg += "<td>" + (isAdmin == "1"
                    ? "<span class='badge badge-admin'>Admin</span>"
                    : "<span class='badge badge-user'>User</span>") + "</td>";

               
                msg += "<td>";
                msg += "<form method='post' style='margin:0'>";
                msg += "<input type='hidden' name='deleteMail' value='" + mail + "' />";
                msg += "<input type='submit' value='Delete' class='delete-btn' " +
                       "onclick=\"return confirm('Are you sure you want to delete this user?');\" />";
                msg += "</form>";
                msg += "</td>";

                msg += "</tr>";
            }

            msg += "</tbody></table>";
        }
        private int DelUser()
        {
            int success = -1;

            string mail = Request.Form["deleteMail"];

            if (!string.IsNullOrEmpty(mail))
            {
                string sql = "DELETE FROM RegisterTable WHERE Mail = '" + mail + "'";
                Helper.ExecuteNonQuery(general.FileName, sql);
                success = 1;
            }

            return success;
        }

    }
}
