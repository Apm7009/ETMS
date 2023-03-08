using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class CABBOOKING : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text =(string)Session["username"];
    }
    protected void Btnreg_Click(object sender, EventArgs e)
    {
        String ConnectionString = WebConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        SqlConnection con = new SqlConnection(ConnectionString);
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand(@"INSERT INTO dbo.cabbooking
           ([user],pickuplocation,dropofflocation,timing)
     VALUES
           ('" + Session["username"] + "','" + txtpl.Text + "','" + txtdl.Text + "','" + txttime.Text + "')",con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            cmd.ExecuteNonQuery();
            con.Close();
  
            status.Text = "cab booking sucessfull";
            Response.Redirect("status.aspx");
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
   public string id { get; set; }
}
