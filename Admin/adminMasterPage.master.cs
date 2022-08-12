using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class Admin_adminMasterPage : System.Web.UI.MasterPage
{
    //SqlCommand cmd=new SqlCommand();
    //SqlConnection con=new SqlConnection();
    //SqlDataAdapter sda=new SqlDataAdapter();
    //DataSet ds = new DataSet();
    
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
                //con.ConnectionString = "Data Source=DESKTOP-LSNMUCE;Initial Catalog=rdsingh;Integrated Security=True";
                //con.Open();
                //showuser();
            }

        }
        catch (Exception ex)
        {

            Response.Redirect("~/Admin.aspx");
            
        }

    }
    /*public void showuser()
    {
        cmd.CommandText = "Select * from rdsingh_admin where email='" + Session["rdsingh_admin"] + "'";
        cmd.Connection = con;
        sda.SelectCommand = cmd;
        sda.Fill(ds);
        userid.Text = ds.Tables[0].Rows[0]["email"].ToString();
    }*/
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
