using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Admin_principalmsg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void addpsmg_Click(object sender, EventArgs e)
    {
        string pmsgtxt = pmsg.Text;

        string query = "insert into principalmsg(msg,msgdate) values('" + pmsgtxt + "','" + DateTime.Now.ToString() + "')";

        DBConnection db = new DBConnection();
        if (db.ExecuteIUD(query))
        {
            //Response.Write("<script>alert('Save');</script>");
            perrormsg.Visible = true;
            perrormsg.Text = "Message Add Successfully";
            perrormsg.ForeColor = System.Drawing.Color.Green;
        }
        else
        {
            //Response.Write("<script>alert('Query Error');</script>");
            perrormsg.Visible = true;
            perrormsg.Text = "News add Unsuccessfully";
            perrormsg.ForeColor = System.Drawing.Color.Red;
        }
    }
}