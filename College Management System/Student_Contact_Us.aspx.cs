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

public partial class Student_Contact_Us_Page : System.Web.UI.Page
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
            SqlCommand cmd = new SqlCommand("insert into Contact_US (cutype,cunm,cumno,cuemail,cumsg) values (@cutype,@cunm,@cumno,@cuemail,@cumsg)", con);

            cmd.Parameters.AddWithValue("cutype", "Student");
            cmd.Parameters.AddWithValue("cunm", TextBox1.Text);
            cmd.Parameters.AddWithValue("cumno", TextBox2.Text);
            cmd.Parameters.AddWithValue("cuemail", TextBox3.Text);
            cmd.Parameters.AddWithValue("cumsg", TextBox4.Text);


            cmd.ExecuteNonQuery();


            Label7.Visible = true;
            Label7.ForeColor = System.Drawing.Color.Green;
            Label7.Text = "Data Submitted Successfully...";
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
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Student_Home_Page.aspx");
    }
}