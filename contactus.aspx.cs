﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class CONTACTUS : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void send_Click(object sender, EventArgs e)
    {
        String today = DateTime.Now.ToLongDateString().ToString();
        String ConnectionString = WebConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        SqlConnection con = new SqlConnection(ConnectionString);
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand(@"INSERT INTO dbo.contactus
           (name,emailid,phoneno,message,messagedate)
     VALUES
           ('" + txtname.Text + "','" + txtemail.Text + "','" + txtno.Text + "','" + txtmsg.Text + "','" + today + "')", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            cmd.ExecuteNonQuery();
            con.Close();
            status.Text = "complaint submited sucessful";
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}
