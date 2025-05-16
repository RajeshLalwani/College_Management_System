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

public partial class Pre_Login_FeedBack : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Conn"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        Label7.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into FeedBack (futype,funm,fumno,fuemail,fumsg) values (@futype,@funm,@fumno,@fuemail,@fumsg)", con);

            cmd.Parameters.AddWithValue("futype", "Guest");
            cmd.Parameters.AddWithValue("funm", TextBox1.Text);
            cmd.Parameters.AddWithValue("fumno", TextBox2.Text);
            cmd.Parameters.AddWithValue("fuemail", TextBox3.Text);
            cmd.Parameters.AddWithValue("fumsg", TextBox4.Text);


            cmd.ExecuteNonQuery();
            con.Close();

            Label7.Visible = true;
            Label7.ForeColor = System.Drawing.Color.Green;
            Label7.Text = "Feed Back Submitted Successfully...";
            Label7.Focus();
        }
        catch (Exception ex)
        {
            Label7.Visible = true;
            Label7.ForeColor = System.Drawing.Color.Red;
            Label7.Text = "Error : " + ex.ToString();
            Label7.Focus();
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Pre_Login_Home_Page.aspx");
    }
}