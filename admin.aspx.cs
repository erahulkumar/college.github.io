using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void login_Click(object sender, EventArgs e)
    {
        string email = txt1.Text;
        string password = txt2.Text;

        string query = "select * from rdsingh_admin where email='" + email + "'";
        
        DataTable dt = new DataTable();

        DBConnection db = new DBConnection();

        dt = db.ExecuteSelect(query);

        if (dt.Rows.Count > 0)
        {
            if (dt.Rows[0]["password"].ToString() == password)
            {
                //Response.Write("<script>alert('Login Successfully')</script>");

                Session["rdsingh_admin"] = email;

                Response.Redirect("~/admin/Control_Panel.aspx");
            }
            else
            {
                Response.Write("<script>alert('Password Incorrect or E-mail Id Incorrect')</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('Please enter your user id and Password')</script>");
        }
    }
}