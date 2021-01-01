using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class user_logo_description : System.Web.UI.Page
{
    string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
   
    int id;
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(cs);
        if (Request.QueryString["Id"] == null)
        {
          Response.Redirect("display_logo.aspx");
        }
        else
        {
        con.Open();
        id = Convert.ToInt32(Request.QueryString["Id"].ToString());
        SqlDataAdapter adapter;
        DataSet ds = new DataSet();
        String query = "select * from product where id="+id+"";
        adapter = new SqlDataAdapter(query, con);
        adapter.Fill(ds);
        d1.DataSource = ds;
        d1.DataBind();
        con.Close();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
        SqlConnection con = new SqlConnection(cs);
        if (Request.QueryString["Id"] == null)
        {
            Response.Redirect("display_logo.aspx");
        }
        else
        {
            con.Open();
            id = Convert.ToInt32(Request.QueryString["Id"].ToString());
            SqlDataAdapter adapter;
            DataSet ds = new DataSet();
            String query = "select * from product where id=" + id + "";
            adapter = new SqlDataAdapter(query, con);
            adapter.Fill(ds);
            d2.DataSource = ds;
            d2.DataBind();
            con.Close();
        }
    }
}