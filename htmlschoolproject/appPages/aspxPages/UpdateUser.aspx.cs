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
    public partial class UpdateUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string msg;
            string password = Request.Form["oldPasswordId"];
            string mail = Request.Form["emailId"];

            string fileName = general.FileName;
            string loginsql = "SELECT * FROM RegisterTable WHERE Mail = '" + mail + "' AND Password = '" + password + "'" ;
            if (this.IsPostBack)
            {
                if (password != "" && mail != "" || password != null && mail != password)
                {
                    Response.Write("mail=" + mail + " pass=" + password);
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
                        //    Session["Name"] = table.Rows[0]["Name"].ToString();
                        //    Session["admin"] = table.Rows[0]["IsAdmin"].ToString();
                            if (Session["admin"].ToString() == "1")
                            {
                                msg = "welcome admin " + Session["Name"].ToString();
                                Session["userName"] = Session["Name"].ToString();
                                Response.Redirect("UpdateUserChange.aspx");

                            }
                            else
                            {
                                msg = "welcome " + Session["Name"].ToString();
                                Response.Redirect("UpdateUserChange.aspx");
                            }

                        }
                        Response.Redirect("UpdateUserChange.aspx");
                    }
                    else
                    {
                        Console.WriteLine("login faild");
                    }
                }
                
             

             }
           

            }
        }

    }
