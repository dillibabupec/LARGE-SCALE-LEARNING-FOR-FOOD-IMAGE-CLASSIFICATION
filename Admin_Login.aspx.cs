using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void lgn_Click(object sender, EventArgs e)
    {
        if (uname.Text.Trim() == "Admin" && pwd.Text.Trim() == "123")
        {
            Response.Redirect("Admin_wrk.aspx");
        }
        else
        {
            Label1.Text = "Login Failed";
            
        }
    }
}