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

public partial class Admin_Student_Semester_Updation_Applications_Whole_List : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Conn"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "Update Details")
        {
            Response.Redirect("Admin_Student_Semester_Updation_Applications_Individual_List.aspx?StdAID=" + e.CommandArgument.ToString());
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //SqlConnection con = new SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\intel\Pictures\Raj\College Management System\App_Data\College_Management_System.mdf;Integrated Security=True;User Instance=True");
        SqlDataAdapter da = new SqlDataAdapter("select * from Student_Semester_Updation_Applications where (StdAID like '%" + TextBox1.Text + "%') or (StdAnm like '%" + TextBox1.Text + "%') or (StdACSemester like '%" + TextBox1.Text + "%') or (StdAASemester like '%" + TextBox1.Text + "%') or (StdAdmissionID like '%" + TextBox1.Text + "%')", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        DataList1.DataSourceID = null;
        DataList1.DataSource = dt;
        DataList1.DataBind();
    }
}