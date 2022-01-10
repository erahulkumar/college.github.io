using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
public partial class Admin_Changepassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        msgshow.Visible = false;

    }

    protected void btn1_Click(object sender, EventArgs e)
    {

        string opass = txt1.Text;
        string npass = txt2.Text;
        string rpass = txt3.Text;
        string email = Session["rdsingh_admin"].ToString();

        string query1 = "select * from rdsingh_admin where email='" + email + "'";

        DataTable dt = new DataTable();

        DBConnection db = new DBConnection();
        dt = db.ExecuteSelect(query1);

        if (dt.Rows[0]["password"].ToString() == opass)
        {
            if (npass == rpass)
            {
                string query2 = "update rdsingh_admin set password='" + npass + "' where email='" + email + "'";
                if (db.ExecuteIUD(query2))
                {
                    //Response.Write("<script>alert('Password Successfully Changed');</script>");
                    msgshow.Visible = true;
                    msgshow.Text = "Password Successfully Changed";
                    msgshow.ForeColor = System.Drawing.Color.Green;

                }
                else
                {
                    //Response.Write("<script>alert('query error');</script>");
                    msgshow.Visible = true;
                    msgshow.Text = "query error";
                    msgshow.ForeColor = System.Drawing.Color.Red;
                }
            }
            else
            {
                //Response.Write("<script>alert('New Password not matched');</script>");
                msgshow.Visible = true;
                msgshow.Text = "New Password not matched";
                msgshow.ForeColor = System.Drawing.Color.Red;
            }
        }
        else
        {
            //Response.Write("<script>alert('Old Password Not Matched');</script>");
            msgshow.Visible = true;
            msgshow.Text = "Old Password Not Matched";
            msgshow.ForeColor = System.Drawing.Color.Red;
        }
    }
}