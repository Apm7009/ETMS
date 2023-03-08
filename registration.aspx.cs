using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class REGISTRATION : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Btnreg_Click(object sender, EventArgs e)
    {
        String ConnectionString = WebConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        SqlConnection con = new SqlConnection(ConnectionString);
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(@"INSERT INTO dbo.userdata
           (firstname,lastname,employeeid,email,phoneno,address,username,password)
     VALUES
           ('" + Txtfirstname.Text + "','" + Txtlastname.Text + "','" + Txtempid.Text + "','" + Txtemailid.Text + "','" + Txtno.Text + "','" + Txtadd.Text + "','" + Txtuser.Text + "','" + Txtpass.Text + "')", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                cmd.ExecuteNonQuery();
                con.Close();
                status.Text = "registration successful";
                Response.Redirect("default.aspx");
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
    }
}

