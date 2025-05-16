using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Reset_Password : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Conn"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        Label7.Visible = false;
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Log in.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Request.QueryString["utype"].ToString() == "Student")
        {


            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("update Student_Login  set LoginPassword=@LoginPassword where LoginID=@LoginID", con);

                cmd.Parameters.AddWithValue("LoginPassword", TextBox2.Text);
                cmd.Parameters.AddWithValue("LoginID", Request.QueryString["uid"].ToString());

                cmd.ExecuteNonQuery();
                con.Close();

                Label7.Visible = true;
                Label7.ForeColor = System.Drawing.Color.Green;
                Label7.Text = "Password Changed Successfully...";
                Label7.Focus();
                con.Close();
                Response.Write("<script tytpe='text/JavaScript' >alert('\\talert('\\tPassword Changed Successfully...')</script>");
                ClientScript.RegisterClientScriptBlock(this.GetType(), "k", "swal('Successful','Password Changed Successfully...','success')", true);
            }
            catch (Exception ex)
            {
                Label7.Visible = true;
                Label7.ForeColor = System.Drawing.Color.Red;
                Label7.Text = "Error : " + ex.ToString();
                Label7.Focus();
            }



        }

        else if (Request.QueryString["utype"].ToString() == "Admin")
        {

            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("update Admin_Login  set LoginPassword=@LoginPassword where LoginID=@LoginID", con);

                cmd.Parameters.AddWithValue("LoginPassword", TextBox2.Text);
                cmd.Parameters.AddWithValue("LoginID", Request.QueryString["uid"].ToString());

                cmd.ExecuteNonQuery();
                con.Close();

                Label7.Visible = true;
                Label7.ForeColor = System.Drawing.Color.Green;
                Label7.Text = "Password Changed Successfully...";
                Label7.Focus();
                con.Close();
            }
            catch (Exception ex)
            {
                Label7.Visible = true;
                Label7.ForeColor = System.Drawing.Color.Red;
                Label7.Text = "Error : " + ex.ToString();
                Label7.Focus();
            }

        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Log in.aspx");
    }
}