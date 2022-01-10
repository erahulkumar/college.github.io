using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Admin_news : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        errormsg.Visible = false;
    }
    protected void btn1_Click(object sender, EventArgs e)
    {
        string newstxt = txt1.Text;

        string query = "insert into news(news,newsdate) values('" + newstxt + "','" + DateTime.Now.ToString() + "')";

        DBConnection db = new DBConnection();
        if (db.ExecuteIUD(query))
        {
            //Response.Write("<script>alert('Save');</script>");
            errormsg.Visible = true;
            errormsg.Text = "News Add Successfully";
            errormsg.ForeColor = System.Drawing.Color.Green;
        }
        else
        {
            //Response.Write("<script>alert('Query Error');</script>");
            errormsg.Visible = true;
            errormsg.Text = "Query Error";
            errormsg.ForeColor = System.Drawing.Color.Red;
        }
    }
}