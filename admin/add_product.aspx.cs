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
    string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    string a, b;
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void B1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(cs);
        con.Open(); 
        a=Class1.GetRandomPassword(5).ToString();
        img1.SaveAs(Request.PhysicalApplicationPath + "./images/" + a + img1.FileName.ToString());
        b = "images/" + a + img1.FileName.ToString();
        string query = "insert into product values('" + p1.Text + "' ,'" + p2.Text + "' , " + p3.Text + " , '" + b.ToString() + "' , '" + RadioButtonList1.Text + "' , '" + CheckBoxList1.Text + "')";
        SqlCommand cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();
       
    }
}