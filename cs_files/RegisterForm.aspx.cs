using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class RegisterForm : System.Web.UI.Page
{
    SqlConnection con;
    SqlDataAdapter da;
    string gender, query, occup, city;
    //DateTime reqstdate;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       string mycon = @"Data Source=DESKTOP-MCRROAJ\SQLEXPRESS;Initial Catalog=Rudraksha;Integrated Security=True";
        con = new SqlConnection(mycon);

        gender = rbtgender.SelectedItem.ToString();
        occup = ddloccup.SelectedItem.ToString();
        city = lbxcity.SelectedItem.ToString();
        int amount = 0;
        //reqstdate = CDate(txtrequestdate.Text);
        //reqstdate = Format(reqstdate, "12232006");

        query = "insert into register(name,gender,dob,uname,password,cpassword,emailid,occupation,city,mobileno,amt) values('" + txtname.Text + "','" + gender + "','" + txtdob.Text + "','" + txtuname.Text + "','" + txtpass.Text + "','" + txtcpass.Text + "','" + txtemail.Text + "','" + occup + "','" + city + "','" + txtmobileno.Text + "',"+amount+")";
        try
        {
            con.Open();
            da = new SqlDataAdapter();
            da.InsertCommand = new SqlCommand(query, con);
            da.InsertCommand.ExecuteNonQuery();
            lblmsg.Text = "Record Inserted Successfully";
            Response.Redirect("UserLogin.aspx");
        }
        catch (Exception ex)
        {
            lblmsg.Text = "Record Not Inserted...Error : " + ex;
        }

    }
    protected void btnback_Click(object sender, EventArgs e)
    {
        Response.Redirect("HomePage.aspx");
    }
}