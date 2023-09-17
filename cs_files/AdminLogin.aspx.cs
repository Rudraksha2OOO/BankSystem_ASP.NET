using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        String un, pwd;
        un = txtadminname.Text;
        pwd = txtadminpass.Text;
        if (un.Equals("admin") && pwd.Equals("admin"))
        {
            Response.Redirect("AdminOperation.aspx");
        }
        else {
            lblmsg.Text = "Invalid Username and Password";
        }

       
           
        }
      

    }
