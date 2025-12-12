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
    public partial class UserList : System.Web.UI.Page
    {

        public string msg = " ";//טבלת הנתונים
        public string msg1 = " ";//הודעת שגיאה
        public string sqlSelect;//פקודה לביצוע      

        protected void Page_Load(object sender, EventArgs e)
        {
            // if (Session["admin"].ToString() == "1")
            //{
            string fileName = general.FileName;//שם מסד נתונים
            string tableName = "RegisterTable";//שם טבלה
            sqlSelect = "SELECT * FROM " + tableName;
            DataTable table = Helper.ExecuteDataTable(fileName, sqlSelect);
            int length = table.Rows.Count;
            if (length == 0) msg1 = "אין נרשמים";
            else
            {
                GetAllUsers(table, length);
                msg1 = " אנשים נרשמו " + length;
            }
            //}
            //else
            //{
            //    msg1 = " sorry, you are not admin! ";
            //}


        }
        private void GetAllUsers(DataTable table, int length)
        {


            msg = "<table border = '2' class='tables'> <tr>";
            msg += "<td> firstname</td>";
            msg += "<td> mail</td>";
            msg += "<td> password </td>";
            msg += "<td> admin</td>";
            msg += "</tr>";
            for (int i = 0; i < length; i++)
            {
                msg += "<tr>";
                msg += "<td>" + table.Rows[i]["Name"].ToString() + "</td>";
                msg += "<td>" + table.Rows[i]["Mail"].ToString() + "</td>";
                msg += "<td>" + table.Rows[i]["Password"].ToString() + "</td>";
                msg += "<td>" + table.Rows[i]["IsAdmin"].ToString() + "</td>";
                //  msg += "<td> <a href = 'DelMngr.aspx?pass=" + table.Rows[i]("password"] + "'>del
                msg += "</tr>";
            }
            msg += "</table>";

        }
    }
}