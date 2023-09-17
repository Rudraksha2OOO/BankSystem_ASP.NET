using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class UserLogin : System.Web.UI.Page
{
    SqlDataAdapter da;
    SqlCommand cmd;
    DataTable dt;
    string gender, query, occup, city;
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        try
        {
            string uid;
            string pass;
            uid = txtuname.Text;
            pass = txtpassword.Text;
            con.Open();
            string qry = "select * from register where uname='" + uid + "' and password='" + pass + "'";
            SqlCommand cmd = new SqlCommand(qry, con);
            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                lblmsg.Text = "Login Sucessfull......!!";
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Login Sucessfull');", true);


                lblamt.Visible = true;
                txtamt.Visible = true;
                btnb.Visible = true;
                btnd.Visible = true;
                btnw.Visible = true;
                btne.Visible = true;
            }
            else
            {
                lblmsg.Text = "UserId & Password Is not correct Try again..!!";
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('User credentials not exist');", true);
                lblamt.Visible = false;
                txtamt.Visible = false;
                btnb.Visible = false;
                btnd.Visible = false;
                btnw.Visible = false;
                btne.Visible = false;

            }
            con.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }

    protected void btnd_Click(object sender, EventArgs e)
    {
        int amt1;
        amt1 = Int32.Parse(txtamt.Text);
        string uid;
        string pass;
        uid = txtuname.Text;
        pass = txtpassword.Text;
        string mycon = @"Data Source=DESKTOP-MCRROAJ\SQLEXPRESS;Initial Catalog=Rudraksha;Integrated Security=True";
        con = new SqlConnection(mycon);
        query = "update register set amt = amt +" + amt1 + " where uname = '" + uid + "' and password='" + pass + "' ";
        try
        {
            con.Open();
            da = new SqlDataAdapter();
            da.InsertCommand = new SqlCommand(query, con);
            da.InsertCommand.ExecuteNonQuery();
            lblmsg12.Text = amt1 +" Amount Deposited " ;
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert(amt1 +'Rs Deposited ');", true);
            //con.Close();
        }
        catch (Exception ex)
        {
            lblmsg12.Text = "Error : " + ex;
        }
    }
    protected void btnw_Click(object sender, EventArgs e)
    {
        string uid ;
        string pass;
        String amt12 ="";
        uid = txtuname.Text;
        pass = txtpassword.Text;
        int amt1;
        amt1 = Int32.Parse(txtamt.Text);
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        con.Open();
        string query = "select  amt  from register where uname=@uid  ";
        cmd = new SqlCommand(query, con);
        cmd.Parameters.AddWithValue("@uid",uid);
        da = new SqlDataAdapter(cmd);
        dt = new DataTable();
        da.Fill(dt);
        using (SqlDataReader sdr = cmd.ExecuteReader())
        {

            if (sdr.Read())
            {
                amt12 =   sdr["amt"].ToString();
            }

        }
        int amtfinal;
        amtfinal = Int32.Parse(amt12);
        if (amtfinal < amt1)
        {
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Insufficient Balance');", true);
        }
        else
        {
            if (amt1 > 10000)
            {
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Withdraw Limit is Rs 10000  ');", true);
            }
            else
            {
                query = "update register set amt = amt -" + amt1 + " where uname = '" + uid + "' and password='" + pass + "' ";
            }
        }
          



        string mycon = @"Data Source=DESKTOP-MCRROAJ\SQLEXPRESS;Initial Catalog=Rudraksha;Integrated Security=True";
        con = new SqlConnection(mycon);
        
        try
        {
            con.Open();
            da = new SqlDataAdapter();
            da.InsertCommand = new SqlCommand(query, con);
            da.InsertCommand.ExecuteNonQuery();
            lblmsg12.Text = amt1 + " Amount Withdrawn ";
            ;
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert(amt1 +'Rs Withdrawn ');", true);

            //con.Close();
            //Response.Redirect("UserLogin.aspx");
        }
        catch (Exception ex)
        {
            //lblmsg12.Text = "Error : " + ex;
        }
    }
    protected void btnb_Click(object sender, EventArgs e)
    {
        string uid;
        string pass;
        uid = txtuname.Text;
        pass = txtpassword.Text;
        String bal="";

        con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        con.Open();
        string query = "select  amt  from register where uname=@uid   ";
        cmd = new SqlCommand(query, con);
        cmd.Parameters.AddWithValue("@uid", uid);
        da = new SqlDataAdapter(cmd);
        dt = new DataTable();
        da.Fill(dt);
        using (SqlDataReader sdr = cmd.ExecuteReader())
        {

            if (sdr.Read())
            {
                bal = sdr["amt"].ToString();
            }
           
        }
        lblmsg12.Text = " Your  Account  Balance is :" + bal;
        ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Your Account Balance is :'+amt);", true);
    }
    protected void btne_Click(object sender, EventArgs e)
    {
        Response.Redirect("HomePage.aspx");
    }
}
