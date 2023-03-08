using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class adminbooking : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ShowData();
        if (!IsPostBack)
        {
            binddropdownlist();
            binddropdownlist1();
        }
        }
    void ShowData()
    {
        String ConnectionString = WebConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        SqlConnection con = new SqlConnection(ConnectionString);
        try
        {
            SqlCommand cmd = new SqlCommand(@"select * from cabbooking", con);
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
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow gr = GridView1.SelectedRow;
        Txtbkid.Text = gr.Cells[1].Text;
        Txtusr.Text = gr.Cells[2].Text;
        Txtpl.Text = gr.Cells[3].Text;
        Txtdl.Text = gr.Cells[4].Text;
        Txttime.Text = gr.Cells[5].Text;
    }
    private void binddropdownlist1()
    {
        String ConnectionString = WebConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        SqlConnection con = new SqlConnection(ConnectionString);
        string query = "select * from drivers";
        SqlDataAdapter sda = new SqlDataAdapter(query, con);
        DataTable data = new DataTable();
        sda.Fill(data);
        Txtd.DataSource = data;
        Txtd.DataTextField = "drivername";
        Txtd.DataValueField = "drivername";
        Txtd.DataBind();
        ListItem no = new ListItem("select driver", "-1");
        no.Selected = true;
        Txtd.Items.Insert(0, no);
        
    }

    protected void Txtd_SelectedIndexChanged(object sender, EventArgs e)
    {
        string selectedDriver = Txtd.SelectedItem.Text;
        string connectionString = WebConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        SqlConnection con = new SqlConnection(connectionString);
        string query = "SELECT driverphoneno FROM drivers WHERE drivername = @drivername";
        SqlCommand cmd = new SqlCommand(query, con);
        cmd.Parameters.AddWithValue("@drivername", selectedDriver);
        con.Open();
        string driverPhoneNo = (string)cmd.ExecuteScalar();
        con.Close();
        Txtdpno.Text = driverPhoneNo;
    }

    private void binddropdownlist()
    {
        String ConnectionString = WebConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        SqlConnection con = new SqlConnection(ConnectionString); 
        string query = "select * from cabs";
        SqlDataAdapter sda = new SqlDataAdapter(query, con);
        DataTable data = new DataTable();
        sda.Fill(data);
        Txtvn.DataSource = data;
        Txtvn.DataTextField = "vehicleno";
        Txtvn.DataValueField = "vehicleno";
        Txtvn.DataBind();

        ListItem no = new ListItem("select vehicle no", "-1");
        no.Selected = true;
        Txtvn.Items.Insert(0, no);
    }

    protected void Btnconf_Click(object sender, EventArgs e)
    {
        
        String ConnectionString = WebConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        SqlConnection con = new SqlConnection(ConnectionString);
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand(@"INSERT INTO etms.dbo.cabbookinghistory
             (username,bookingid,pickuplocation,dropofflocation,timing,vehicleno,drivername,driverphoneno,status)
     VALUES
           ('" + Txtusr.Text + "','" + Txtbkid.Text + "','" + Txtpl.Text + "','" + Txtdl.Text + "','" + Txttime.Text + "','" + Txtvn.Text + "','" + Txtd.Text + "','" + Txtdpno.Text + "','confirm')", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            cmd.ExecuteNonQuery();
            //con.Close();
            status.Text = "booking confirm";

            SqlCommand cmdv = new SqlCommand(@"UPDATE cabs SET status = 'not available' WHERE vehicleno = @vehicleno", con);
            cmdv.Parameters.AddWithValue("@vehicleno", Txtvn.Text);
            cmdv.ExecuteNonQuery();

            SqlCommand cmdd = new SqlCommand(@"UPDATE drivers SET status = 'not available' WHERE drivername = @drivername", con);
            cmdd.Parameters.AddWithValue("@drivername", Txtd.Text);
            cmdd.ExecuteNonQuery();
            con.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}
