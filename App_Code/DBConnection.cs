using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

/// <summary>
/// Summary description for DBConnection
/// </summary>
public class DBConnection
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["rdsingh"].ToString());

    public bool ExecuteIUD(string query)
    {
        SqlCommand cmd = new SqlCommand(query, con);
        int x = 0;
        try
        {
            con.Open();
            x = cmd.ExecuteNonQuery();
        }
            catch(Exception ex)
        {

            x = 0;
        }
        finally
        {
            con.Close();
        }
        if (x > 0)
        {
            return true;
        }
        else
        {
            return false;
        }
    }
    public DataTable ExecuteSelect(string query)
    {
        SqlDataAdapter sda = new SqlDataAdapter(query, con);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        return dt;
    }
}