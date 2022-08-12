using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Contant_Us : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        fdshow.Visible = false;
    }
    protected void btn1_Click(object sender, EventArgs e)
    {
        string name = fd_name.Text;
        string email = fd_mail.Text;
        string mobile = fd_mobile.Text;
        string msg = fd_msg.Text;
        string fddate = DateTime.Now.ToString();

        string query = "insert into feedback(fd_name,fd_mail,fd_mobile,fd_msg,fd_date) values('"+name+"','"+email+"','"+mobile+"','"+msg+"','"+fddate+"')";



        DBConnection db = new DBConnection();
        if (db.ExecuteIUD(query))
        {
            //Response.Write("<script> confirm('Thank You for given feedback'); </script>");
            fdshow.Visible = true;
            fdshow.Text = "Thank You for given feedback";
            fdshow.ForeColor = System.Drawing.Color.Green;
            
        }
        else
        {
            //Response.Write("<script> alert('Query Error'); </script>");
            fdshow.Visible = true;
            fdshow.Text = "feedback not send";
            fdshow.ForeColor = System.Drawing.Color.Red;
        }
    }
}