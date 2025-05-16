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

public partial class Student_Personal_Info : System.Web.UI.Page
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
            Image5.ImageUrl = "Images/Student Details/Passport Size Photos/" + dr["StdAPassSizePhoto"].ToString();
            Label15.Text = dr["StdASalutation"].ToString() + " " + dr["StdAfname"].ToString() + " " + dr["StdAmname"].ToString() + " " + dr["StdAlname"].ToString();
            Label16.Text = dr["StdAbdate"].ToString();
            Label17.Text = dr["StdAGen"].ToString();
            Label18.Text = dr["StdACasteCat"].ToString();
            Label19.Text = dr["StdAPrmntAddr"].ToString();
            Label20.Text = dr["StdAPrmntAddrCity"].ToString();
            Label21.Text = dr["StdAPrmntAddrPinCode"].ToString();
            Label22.Text = dr["StdAPrmntAddrState"].ToString();
            Label23.Text = "India";
            Label24.Text = dr["StdAEmail"].ToString();
            Label25.Text = dr["StdAMNo"].ToString();
            Label26.Text = "Indian";
            Label27.Text = dr["StdABldgroup"].ToString();
            //Label.Text = dr[""].ToString();

            dr.Close();
            con.Close();
        }
        else
        {
            Response.Redirect("Pre_Login_Home_Page.aspx");
        }
    }
}