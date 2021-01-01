using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class user_Default : System.Web.UI.Page
{
    string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    int id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["Id"] == null)
        {
            Response.Redirect("display_logo.aspx");
        }
        else
        {
            SqlConnection con = new SqlConnection(cs);

            con.Open();

            SqlDataAdapter adapter;
            DataSet ds = new DataSet();
            id = Convert.ToInt32(Request.QueryString["Id"].ToString());
            String query = "select product_images from product where id=" + id + "";
            adapter = new SqlDataAdapter(query, con);
            adapter.Fill(ds);
            d1.DataSource = ds;
            d1.DataBind();
            con.Close();
        }
    }

}