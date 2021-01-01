using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class admin_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(cs);
        con.Open();
        string query = "select Count(*) from admin where email='"+TextBox3.Text+"' and password='"+TextBox2.Text+"'";
        SqlCommand cmd = new SqlCommand(query,con);
        int temp=Convert.ToInt32(cmd.ExecuteScalar().ToString());
        con.Close();
        if (temp == 1)
        {
            con.Open();
            string checkPasswordQuery = "select password from admin where email='" + TextBox3.Text + "'";
            SqlCommand passcon = new SqlCommand(checkPasswordQuery, con);
            string password = passcon.ExecuteScalar().ToString().Replace(" ","");
            if (password == TextBox2.Text )
            {
                Session["new"] = TextBox2.Text;
                Response.Write("correct");
                Response.Redirect("admin.master");
            }
            else
            {
                Response.Write("incorrect");
            }
        }
        else
        {
             Response.Write("user name is not correct");
        }
            con.Close();
    }
}