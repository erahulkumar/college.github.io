using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_adminMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

        try
        {
            if (!String.IsNullOrEmpty(Session["rdsingh_admin"].ToString()))
            {

            }
            else
            {
                Response.Redirect("~/admin.aspx");

            }

        }
        catch (Exception ex)
        {

            Response.Redirect("~/Admin.aspx");
        }

    }
    protected void Logout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("~/admin.aspx");
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
}
