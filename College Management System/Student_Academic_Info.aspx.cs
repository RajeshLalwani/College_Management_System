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

public partial class Student_Academic_Info : System.Web.UI.Page
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
            Label18.Text = dr["StdASemester"].ToString();
            Label31.Text = dr["StdABatch"].ToString();

            dr.Close();
            con.Close();
        }
        else
        {
            Response.Redirect("Pre_Login_Home_Page.aspx");
        }
    }
}