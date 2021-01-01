using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class user_display_logo : System.Web.UI.Page
{
    string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection(cs);
        con.Open();
        SqlDataAdapter adapter;
        DataSet ds = new DataSet();
        String query = "select * from product where catogary1='" + Session["logoname"] + "' and catogary1='" + Session["slogan"] + "'  ";
        adapter = new SqlDataAdapter(query, con);
        adapter.Fill(ds);
        d2.DataSource = ds;
        d2.DataBind();
        con.Close();
    }
}