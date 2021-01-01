using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class user_Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\rashmi\Desktop\marketplace\App_Data\Database.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            MultiView1.ActiveViewIndex = 0;
        }
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void Button9_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 3;
       Session["logoname"] = logoname.Text;
        Session["slogan"] = slogan.Text;
        Session["category1"]= radio.SelectedValue;
        Session["category2"] = check.SelectedValue;

       
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
        
    }
    protected void d1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 4;
        con.Open();
        
        SqlDataAdapter adapter;
        DataSet ds = new DataSet();
        String query = "select * from product where catogary1='"+radio.SelectedValue+"' and catogary2='"+check.SelectedValue+"'";

        adapter = new SqlDataAdapter(query, con);
        adapter.Fill(ds);
        d2.DataSource = ds;
        d2.DataBind();
        con.Close();  
    }
}
