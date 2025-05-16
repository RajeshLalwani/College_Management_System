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

public partial class home : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Conn"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uid"] != null)
        {
            con.Open();
            //Show Data
            SqlCommand cmd2 = new SqlCommand("select * from Student_Details where StdAdmissionID='" + Session["uid"].ToString() + "' ", con);

            SqlDataReader dr = cmd2.ExecuteReader();
            dr.Read();
            //Label1.Text = "Welcome " + dr["StdASalutation"].ToString() + " " + dr["StdAfname"].ToString() + " " + dr["StdAlname"].ToString();


            Response.Write("<script LANGUAGE='JavaScript' >alert('\\tWelcome " + dr["StdASalutation"].ToString()  + " " + dr["StdAfname"].ToString() + " " + dr["StdAlname"].ToString()+"')</script>");
            dr.Close();
            con.Close();
        }
        else
        {

            Response.Redirect("Pre_Login_Home_Page.aspx");
        }
    }
}