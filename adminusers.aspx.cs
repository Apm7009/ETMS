using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class adminusers : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ShowData();
    }

    protected void btndelete_Click(object sender, EventArgs e)
    {
        String ConnectionString = WebConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        SqlConnection con = new SqlConnection(ConnectionString);
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand(@"DELETE FROM dbo.userdata
      WHERE username='" + txtuser.Text + "'", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            cmd.ExecuteNonQuery();
            con.Close();
            status.Text = "user data deleted sucessfully";
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
    void ShowData()
    {
        String ConnectionString = WebConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        SqlConnection con = new SqlConnection(ConnectionString);
        try
        {
            SqlCommand cmd = new SqlCommand(@"select * from dbo.userdata", con);
            con.Open();
            SqlDataReader sdr = cmd.ExecuteReader();
            GridView1.DataSource = sdr;
            GridView1.DataBind();
            con.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        String ConnectionString = WebConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        SqlConnection con = new SqlConnection(ConnectionString);
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand(@"UPDATE dbo.userdata
   SET username='" + txtuser.Text + "',firstname='" + txtname.Text + "',phoneno='" + txtphone.Text + "',address='" + txtadd.Text + "'WHERE username='" + txtuser.Text + "'", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            cmd.ExecuteNonQuery();
            con.Close();
            status.Text = "data updated sucessfully";
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}
