using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Control_Panel : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    
    }
    
    protected void news_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/admin/news.aspx");
    }
    protected void msg_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/admin/principalmsg.aspx");
    }
    protected void feedback_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/admin/feedback.aspx");
    }
    protected void pass_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/admin/Changepassword.aspx");
    }
    protected void Form_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/admin/Form.aspx");
    }
}