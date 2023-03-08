using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class homepage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("default.aspx");
        }
        else
        {
            Response.Write("Hello " + Session["username"].ToString());
        }
     
    }
    protected void logout_Click(object sender, EventArgs e)
    {
        Session.Abandon(); 
        Response.Redirect("default.aspx");
    }
}
