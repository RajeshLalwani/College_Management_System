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

public partial class Admin_View_Semester_1_Students_Whole_List : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Conn"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //SqlConnection con = new SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\intel\Pictures\Raj\College Management System\App_Data\College_Management_System.mdf;Integrated Security=True;User Instance=True");
        SqlDataAdapter da = new SqlDataAdapter("select * from Student_Details where (StdAdmissionID like '%" + TextBox1.Text + "%') or (StdAfname like '%" + TextBox1.Text + "%') or (StdAmname like '%" + TextBox1.Text + "%') or (StdAlname like '%" + TextBox1.Text + "%') or (StdAdmissionDate like '%" + TextBox1.Text + "%')", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        DataList1.DataSourceID = null;
        DataList1.DataSource = dt;
        DataList1.DataBind();
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "View Details")
        {
            Response.Redirect("Admin_View_Semester_1_Students_Individual_List.aspx?StdAdmissionID=" + e.CommandArgument.ToString());
        }
    }
}