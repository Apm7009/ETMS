using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class _default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        String ConnectionString = WebConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        SqlConnection con = new SqlConnection(ConnectionString);
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select count(*) from userdata where username='"+txtusername.Text+"' and password='"+txtpassword.Text+"'",con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            cmd.ExecuteNonQuery();
            if(dt.Rows[0][0].ToString()=="1")
            {
                Session["username"] = txtusername.Text;
                status.Text = "*login sucessfull.";
                Response.Redirect("homepage.aspx");
            }
            else
            {
                status.Text = "*invalid credentials.";
            }
        }
        catch(Exception ex)
        {
            Response.Write(ex.Message);
        }
    } 
}
