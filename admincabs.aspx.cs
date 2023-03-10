using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
public partial class admincabs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ShowData();
    }
    protected void btninsert_Click(object sender, EventArgs e)
    {
        String ConnectionString = WebConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        SqlConnection con = new SqlConnection(ConnectionString);
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand(@"INSERT INTO dbo.cabs
           (cabid,vehicleno,vehiclename,vehiclepermit,status)
     VALUES
           ('" + txtid.Text + "','" + txtvno.Text + "','" + txtvname.Text + "','" + txtvpermit.Text + "', 'available')", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            cmd.ExecuteNonQuery();
            con.Close();
            status.Text = "data inserted sucessfully";
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
    protected void btndelete_Click(object sender, EventArgs e)
    {
        String ConnectionString = WebConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        SqlConnection con = new SqlConnection(ConnectionString);
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand(@"DELETE FROM dbo.cabs
      WHERE cabid='" + txtid.Text + "'", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            cmd.ExecuteNonQuery();
            con.Close();
            status.Text = "data deleted sucessfully";
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
            SqlCommand cmd = new SqlCommand(@"UPDATE dbo.cabs
   SET cabid='" + txtid.Text + "',vehicleno='" + txtvno.Text + "',vehiclename='" + txtvname.Text + "',vehiclepermit='" + txtvpermit.Text +  "'WHERE cabid='" + txtid.Text + "'", con);
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
    void ShowData()
    {
        String ConnectionString = WebConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        SqlConnection con = new SqlConnection(ConnectionString);
        try
        {
            SqlCommand cmd = new SqlCommand(@"select * from cabs", con);
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
}