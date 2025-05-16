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

public partial class Admin_Student_Semester_Updation_Applications_Individual_List : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Conn"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        Label19.Visible = false;

        Panel4.Visible = false;
        Panel14.Visible = false;


        Panel5.Visible = false;
        Panel15.Visible = false;


        Panel6.Visible = false;
        Panel16.Visible = false;


        Panel7.Visible = false;
        Panel17.Visible = false;


        Panel8.Visible = false;
        Panel18.Visible = false;


        Label154.Visible = false;

        if (Session["uid"] != null)
        {
            con.Open();



            SqlCommand cmddispdata = new SqlCommand("select * from Student_Semester_Updation_Applications where StdAID='" + Request.QueryString["StdAID"] + "' ", con);

            SqlDataReader drd = cmddispdata.ExecuteReader();

            drd.Read();

            SqlCommand cmddispimg = new SqlCommand("select * from Student_Details where StdAdmissionID='" + drd["StdAdmissionID"].ToString() + "' ", con);
            drd.Close();
            SqlDataReader drimg = cmddispimg.ExecuteReader();

            drimg.Read();
            Image5.ImageUrl = "Images/Student Details/Passport Size Photos/" + drimg["StdAPassSizePhoto"].ToString();
            drimg.Close();

            SqlCommand cmddispdata1 = new SqlCommand("select * from Student_Semester_Updation_Applications where StdAID='" + Request.QueryString["StdAID"] + "' ", con);
            SqlDataReader dr = cmddispdata1.ExecuteReader();
            dr.Read();
            Label158.Text = dr["StdAID"].ToString();
            Label160.Text = dr["StdAdate"].ToString();
            Label156.Text = dr["StdAdmissionID"].ToString();
            Label15.Text = dr["StdAnm"].ToString();
            Label16.Text = dr["StdACSemester"].ToString();
            Label18.Text = dr["StdAASemester"].ToString();

            if (Label16.Text == "Semester 1")
            {

                Panel4.Visible = true;
                Panel14.Visible = true;


            }
            if (Label16.Text == "Semester 2")
            {

                Panel5.Visible = true;
                Panel15.Visible = true;
            }
            if (Label16.Text == "Semester 3")
            {

                Panel6.Visible = true;
                Panel16.Visible = true;
            }
            if (Label16.Text == "Semester 4")
            {

                Panel7.Visible = true;
                Panel17.Visible = true;
            }
            if (Label16.Text == "Semester 5")
            {

                Panel8.Visible = true;
                Panel18.Visible = true;
            }

            //Label.Text = dr[""].ToString();



            // Semester 1
            TextBox36.Text = dr["StdASICollege"].ToString();
            TextBox37.Text = dr["StdASIUniversity"].ToString();
            TextBox38.Text = dr["StdASICity"].ToString();
            TextBox40.Text = dr["StdASIYearOfPassing"].ToString();
            TextBox41.Text = dr["StdASIPerGPA"].ToString();

            // Semester 2
            TextBox43.Text = dr["StdASIICollege"].ToString();
            TextBox44.Text = dr["StdASIIUniversity"].ToString();
            TextBox45.Text = dr["StdASIICity"].ToString();
            TextBox47.Text = dr["StdASIIYearOfPassing"].ToString();
            TextBox48.Text = dr["StdASIIPerGPA"].ToString();

            // Semester 3
            TextBox50.Text = dr["StdASIIICollege"].ToString();
            TextBox51.Text = dr["StdASIIIUniversity"].ToString();
            TextBox52.Text = dr["StdASIIICity"].ToString();
            TextBox54.Text = dr["StdASIIIYearOfPassing"].ToString();
            TextBox55.Text = dr["StdASIIIPerGPA"].ToString();

            // Semester 4
            TextBox57.Text = dr["StdASIVCollege"].ToString();
            TextBox58.Text = dr["StdASIVUniversity"].ToString();
            TextBox59.Text = dr["StdASIVCity"].ToString();
            TextBox61.Text = dr["StdASIVYearOfPassing"].ToString();
            TextBox62.Text = dr["StdASIVPerGPA"].ToString();

            // Semester 5
            TextBox64.Text = dr["StdASVCollege"].ToString();
            TextBox65.Text = dr["StdASVUniversity"].ToString();
            TextBox66.Text = dr["StdASVCity"].ToString();
            TextBox68.Text = dr["StdASVYearOfPassing"].ToString();
            TextBox69.Text = dr["StdASVPerGPA"].ToString();

            // drimg.Close();
            dr.Close();
            con.Close();
        }
        else
        {
            Response.Redirect("Pre_Login_Home_Page.aspx");
        }


    }
    protected void Button16_Click(object sender, EventArgs e)
    {
        con.Open();
        ////Show Data
        //SqlCommand cmd = new SqlCommand("select * from Student_Details where StdAdmissionID='" + Request.QueryString["StdAdmissionID"].ToString() + "' ", con);
        ////cmd2.ExecuteNonQuery();
        //SqlDataReader dr = cmd.ExecuteReader();
        SqlCommand cmddispdata = new SqlCommand("select * from Student_Semester_Updation_Applications where StdAID='" + Request.QueryString["StdAID"] + "' ", con);

        SqlDataReader dr = cmddispdata.ExecuteReader();
        dr.Read();
        string filename = dr["StdASIMarksheet"].ToString();

        string filepath = Server.MapPath("Images/Student Semester Updation Applications/Semester 1 Marksheets/" + filename);
        Response.Clear();
        Response.ClearHeaders();
        Response.ClearContent();
        Response.AddHeader("Content-Disposition", "attachment; filename=" + filename);
        Response.Flush();
        Response.TransmitFile(filepath);
        Response.End();
        con.Close();
    }
    protected void Button17_Click(object sender, EventArgs e)
    {
        con.Open();
        ////Show Data
        //SqlCommand cmd = new SqlCommand("select * from Student_Details where StdAdmissionID='" + Request.QueryString["StdAdmissionID"].ToString() + "' ", con);
        //////cmd2.ExecuteNonQuery();
        //SqlDataReader dr = cmd.ExecuteReader();
        SqlCommand cmddispdata = new SqlCommand("select * from Student_Semester_Updation_Applications where StdAID='" + Request.QueryString["StdAID"] + "' ", con);

        SqlDataReader dr = cmddispdata.ExecuteReader();
        dr.Read();
        string filename = dr["StdASIIMarksheet"].ToString();

        string filepath = Server.MapPath("Images/Student Semester Updation Applications/Semester 2 Marksheets/" + filename);
        Response.Clear();
        Response.ClearHeaders();
        Response.ClearContent();
        Response.AddHeader("Content-Disposition", "attachment; filename=" + filename);
        Response.Flush();
        Response.TransmitFile(filepath);
        Response.End();
        con.Close();
    }
    protected void Button18_Click(object sender, EventArgs e)
    {
        con.Open();
        //////Show Data
        //SqlCommand cmd = new SqlCommand("select * from Student_Details where StdAdmissionID='" + Request.QueryString["StdAdmissionID"].ToString() + "' ", con);
        //////cmd2.ExecuteNonQuery();
        //SqlDataReader dr = cmd.ExecuteReader();
        SqlCommand cmddispdata = new SqlCommand("select * from Student_Semester_Updation_Applications where StdAID='" + Request.QueryString["StdAID"] + "' ", con);

        SqlDataReader dr = cmddispdata.ExecuteReader();
        dr.Read();
        string filename = dr["StdASIIIMarksheet"].ToString();

        string filepath = Server.MapPath("Images/Student Semester Updation Applications/Semester 3 Marksheets/" + filename);
        Response.Clear();
        Response.ClearHeaders();
        Response.ClearContent();
        Response.AddHeader("Content-Disposition", "attachment; filename=" + filename);
        Response.Flush();
        Response.TransmitFile(filepath);
        Response.End();
        con.Close();
    }
    protected void Button19_Click(object sender, EventArgs e)
    {
        con.Open();
        //////Show Data
        //SqlCommand cmd = new SqlCommand("select * from Student_Details where StdAdmissionID='" + Request.QueryString["StdAdmissionID"].ToString() + "' ", con);
        //////cmd2.ExecuteNonQuery();
        //SqlDataReader dr = cmd.ExecuteReader();
        SqlCommand cmddispdata = new SqlCommand("select * from Student_Semester_Updation_Applications where StdAID='" + Request.QueryString["StdAID"] + "' ", con);

        SqlDataReader dr = cmddispdata.ExecuteReader();
        dr.Read();
        string filename = dr["StdASIVMarksheet"].ToString();

        string filepath = Server.MapPath("Images/Student Semester Updation Applications/Semester 4 Marksheets/" + filename);
        Response.Clear();
        Response.ClearHeaders();
        Response.ClearContent();
        Response.AddHeader("Content-Disposition", "attachment; filename=" + filename);
        Response.Flush();
        Response.TransmitFile(filepath);
        Response.End();
        con.Close();
    }
    protected void Button20_Click(object sender, EventArgs e)
    {
        con.Open();
        //////Show Data
        //SqlCommand cmd = new SqlCommand("select * from Student_Details where StdAdmissionID='" + Request.QueryString["StdAdmissionID"].ToString() + "' ", con);
        //////cmd2.ExecuteNonQuery();
        //SqlDataReader dr = cmd.ExecuteReader();
        SqlCommand cmddispdata = new SqlCommand("select * from Student_Semester_Updation_Applications where StdAID='" + Request.QueryString["StdAID"] + "' ", con);

        SqlDataReader dr = cmddispdata.ExecuteReader();
        dr.Read();
        string filename = dr["StdASVMarksheet"].ToString();

        string filepath = Server.MapPath("Images/Student Semester Updation Applications/Semester 5 Marksheets/" + filename);
        Response.Clear();
        Response.ClearHeaders();
        Response.ClearContent();
        Response.AddHeader("Content-Disposition", "attachment; filename=" + filename);
        Response.Flush();
        Response.TransmitFile(filepath);
        Response.End();
        con.Close();
    }
    protected void Button13_Click(object sender, EventArgs e)
    {
        con.Open();
        try
        {

            SqlCommand cmddf = new SqlCommand("select * from Student_Semester_Updation_Applications where StdAID=" + Label158.Text + " ", con);  //Request.QueryString["StdAID"].ToString()
            ////cmd2.ExecuteNonQuery();

            SqlDataReader drdf = cmddf.ExecuteReader();
            drdf.Read();





            if (Label16.Text == "Semester 1")
            {
                // Semester 1 Marksheet  File Deletion
                DirectoryInfo sourceStdASIMarksheet = new DirectoryInfo(MapPath("~/Images/Student Semester Updation Applications/Semester 1 Marksheets/"));
                File.Delete(sourceStdASIMarksheet + drdf["StdASIMarksheet"].ToString());

            }


            else if (Label16.Text == "Semester 2")
            {
                // Semester 2 Marksheet  File Deletion
                DirectoryInfo sourceStdASIIMarksheet = new DirectoryInfo(MapPath("~/Images/Student Semester Updation Applications/Semester 2 Marksheets/"));
                File.Delete(sourceStdASIIMarksheet + drdf["StdASIIMarksheet"].ToString());

            }



            else if (Label16.Text == "Semester 3")
            {
                // Semester 3 Marksheet  File Deletion
                DirectoryInfo sourceStdASIIIMarksheet = new DirectoryInfo(MapPath("~/Images/Student Semester Updation Applications/Semester 3 Marksheets/"));
                File.Delete(sourceStdASIIIMarksheet + drdf["StdASIIIMarksheet"].ToString());

            }

            else if (Label16.Text == "Semester 4")
            {
                // Semester 4 Marksheet  File Deletion
                DirectoryInfo sourceStdASignature = new DirectoryInfo(MapPath("~/Images/Student Semester Updation Applications/Semester 4 Marksheets/"));
                File.Delete(sourceStdASignature + drdf["StdASIVMarksheet"].ToString());

            }

            else if (Label16.Text == "Semester 5")
            {
                // Semester 5 Marksheet  File Deletion
                DirectoryInfo sourceStdASVMarksheet = new DirectoryInfo(MapPath("~/Images/Student Semester Updation Applications/Semester 5 Marksheets/"));
                File.Delete(sourceStdASVMarksheet + drdf["StdASVMarksheet"].ToString());

            }


            drdf.Close();



            SqlCommand cmddel = new SqlCommand("delete from Student_Semester_Updation_Applications where StdAID=@StdAID", con);
            cmddel.Parameters.AddWithValue("StdAID", Label158.Text);

            cmddel.ExecuteNonQuery();

            Label154.Visible = true;
            Label154.ForeColor = System.Drawing.Color.Green;
            Label154.Text = "<center>" + "Student Application Deleted Successfully....." + "<br/>" + "Thank You....." + "<br/>" + "Visit Again....." + "</center>";
            Label154.Focus();


            Response.Write("<script type='JavaScript' >alert('\\tStudent Application Deleted Successfully.....\\n\\tThank You.....\\n\\tVisit Again.....')</script>");

            Response.Redirect("Admin_Student_Admission_Application_Whole_List.aspx");



            con.Close();

        }
        catch (Exception ex)
        {
            Response.Write("Error" + ex.ToString());
            Response.Write("<script LANGUAGE='JavaScript' >alert('\tError : " + ex.ToString() + "')</script>");


        }
    }
    protected void Button12_Click(object sender, EventArgs e)
    {
        try
        {


            //SqlCommand cmd = new SqlCommand("insert into Student_Details (StdAdate,StdAPassSizePhoto,StdASalutation,StdAfname,StdAmname,StdAlname,StdAbdate,StdABldgroup,StdAEmail,StdAMNo,StdAGen,StdAMaritalStatus,StdAReligion,StdACasteCat,StdAFatherSpouseName,StdAFatherSpouseMNo,StfAMotherName,StfAMotherMNo,StdAFatherSpouseOccupation,StdAAnnualIncome,StdAPresentAddr,StdAPresentAddrCity,StdAPresentAddrPinCode,StdAPresentAddrState,StdAPrmntAddr,StdAPrmntAddrCity,StdAPrmntAddrPinCode,StdAPrmntAddrState,StdACourse,StdAMedOfInstrctn,StdASemester,StdAClsXSchool,StdAClsXBoard,StdAClsXCity,StdAClsXMedOfInstrctn,StdAClsXYearOfPassing,StdAClsXPercentage,StdAClsXMarksheet,StdAClsXIISchool,StdAClsXIIBoard,StdAClsXIICity,StdAClsXIIMedOfInstrctn,StdAClsXIIYearOfPassing,StdAClsXIIStreamDiscipline,StdAClsXIIPercentage,StdAClsXIIMarksheet,StdASICollege,StdASIUniversity,StdASICity,StdASIYearOfPassing,StdASIPerGPA,StdASIMarksheet,StdASIICollege,StdASIIUniversity,StdASIICity,StdASIIYearOfPassing,StdASIIPerGPA,StdASIIMarksheet,StdASIIICollege,StdASIIIUniversity,StdASIIICity,StdASIIIYearOfPassing,StdASIIIPerGPA,StdASIIIMarksheet,StdASIVCollege,StdASIVUniversity,StdASIVCity,StdASIVYearOfPassing,StdASIVPerGPA,StdASIVMarksheet,StdASVCollege,StdASVUniversity,StdASVCity,StdASVYearOfPassing,StdASVPerGPA,StdASVMarksheet,StdASignature,StdASecQue,StdASecAns) values (@StdAdate,@StdAPassSizePhoto,@StdASalutation,@StdAfname,@StdAmname,@StdAlname,@StdAbdate,@StdABldgroup,@StdAEmail,@StdAMNo,@StdAGen,@StdAMaritalStatus,@StdAReligion,@StdACasteCat,@StdAFatherSpouseName,@StdAFatherSpouseMNo,@StfAMotherName,@StfAMotherMNo,@StdAFatherSpouseOccupation,@StdAAnnualIncome,@StdAPresentAddr,@StdAPresentAddrCity,@StdAPresentAddrPinCode,@StdAPresentAddrState,@StdAPrmntAddr,@StdAPrmntAddrCity,@StdAPrmntAddrPinCode,@StdAPrmntAddrState,@StdACourse,@StdAMedOfInstrctn,@StdASemester,@StdAClsXSchool,@StdAClsXBoard,@StdAClsXCity,@StdAClsXMedOfInstrctn,@StdAClsXYearOfPassing,@StdAClsXPercentage,@StdAClsXMarksheet,@StdAClsXIISchool,@StdAClsXIIBoard,@StdAClsXIICity,@StdAClsXIIMedOfInstrctn,@StdAClsXIIYearOfPassing,@StdAClsXIIStreamDiscipline,@StdAClsXIIPercentage,@StdAClsXIIMarksheet,@StdASICollege,@StdASIUniversity,@StdASICity,@StdASIYearOfPassing,@StdASIPerGPA,@StdASIMarksheet,@StdASIICollege,@StdASIIUniversity,@StdASIICity,@StdASIIYearOfPassing,@StdASIIPerGPA,@StdASIIMarksheet,@StdASIIICollege,@StdASIIIUniversity,@StdASIIICity,@StdASIIIYearOfPassing,@StdASIIIPerGPA,@StdASIIIMarksheet,@StdASIVCollege,@StdASIVUniversity,@StdASIVCity,@StdASIVYearOfPassing,@StdASIVPerGPA,@StdASIVMarksheet,@StdASVCollege,@StdASVUniversity,@StdASVCity,@StdASVYearOfPassing,@StdASVPerGPA,@StdASVMarksheet,@StdASignature,@StdASecQue,@StdASecAns)", con);

            con.Open();

            SqlCommand cmd = new SqlCommand("update Student_Details set Gen,StdAMaritalStatus,StdAReligion,StdACasteCat,StdAFatherSpouseName,StdAFatherSpouseMNo,StdAMotherName,StdAMotherMNo,StdAFatherSpouseOccupation,StdAAnnualIncome,StdAPresentAddr,StdAPresentAddrCity,StdAPresentAddrPinCode,StdAPresentAddrState,StdAPrmntAddr,StdAPrmntAddrCity,StdAPrmntAddrPinCode,StdAPrmntAddrState,StdACourse,StdAMedOfInstrctn,StdASemester,StdABatch,StdAClsXSchool,StdAClsXBoard,StdAClsXCity,StdAClsXMedOfInstrctn,StdAClsXYearOfPassing,StdAClsXPercentage,StdAClsXMarksheet,StdAClsXIISchool,StdAClsXIIBoard,StdAClsXIICity,StdAClsXIIMedOfInstrctn,StdAClsXIIYearOfPassing,StdAClsXIIStreamDiscipline,StdAClsXIIPercentage,StdAClsXIIMarksheet,StdASICollege,StdASIUniversity,StdASICity,StdASIYearOfPassing,StdASIPerGPA,StdASIMarksheet,StdASIICollege,StdASIIUniversity,StdASIICity,StdASIIYearOfPassing,StdASIIPerGPA,StdASIIMarksheet,StdASIIICollege,StdASIIIUniversity,StdASIIICity,StdASIIIYearOfPassing,StdASIIIPerGPA,StdASIIIMarksheet,StdASIVCollege,StdASIVUniversity,StdASIVCity,StdASIVYearOfPassing,StdASIVPerGPA,StdASIVMarksheet,StdASVCollege,StdASVUniversity,StdASVCity,StdASVYearOfPassing,StdASVPerGPA,StdASVMarksheet,StdASignature,StdASecQue,StdASecAns) values (@StdAdmissionDate,@StdAStatus,@StdApplicationID,@StdApplicationDate,@StdAPassSizePhoto,@StdASalutation,@StdAfname,@StdAmname,@StdAlname,@StdAbdate,@StdABldgroup,@StdAEmail,@StdAMNo,@StdAGen,@StdAMaritalStatus,@StdAReligion,@StdACasteCat,@StdAFatherSpouseName,@StdAFatherSpouseMNo,@StdAMotherName,@StdAMotherMNo,@StdAFatherSpouseOccupation,@StdAAnnualIncome,@StdAPresentAddr,@StdAPresentAddrCity,@StdAPresentAddrPinCode,@StdAPresentAddrState,@StdAPrmntAddr,@StdAPrmntAddrCity,@StdAPrmntAddrPinCode,@StdAPrmntAddrState,@StdACourse,@StdAMedOfInstrctn,@StdASemester,@StdABatch,@StdAClsXSchool,@StdAClsXBoard,@StdAClsXCity,@StdAClsXMedOfInstrctn,@StdAClsXYearOfPassing,@StdAClsXPercentage,@StdAClsXMarksheet,@StdAClsXIISchool,@StdAClsXIIBoard,@StdAClsXIICity,@StdAClsXIIMedOfInstrctn,@StdAClsXIIYearOfPassing,@StdAClsXIIStreamDiscipline,@StdAClsXIIPercentage,@StdAClsXIIMarksheet,@StdASICollege,@StdASIUniversity,@StdASICity,@StdASIYearOfPassing,@StdASIPerGPA,@StdASIMarksheet,@StdASIICollege,@StdASIIUniversity,@StdASIICity,@StdASIIYearOfPassing,@StdASIIPerGPA,@StdASIIMarksheet,@StdASIIICollege,@StdASIIIUniversity,@StdASIIICity,@StdASIIIYearOfPassing,@StdASIIIPerGPA,@StdASIIIMarksheet,@StdASIVCollege,@StdASIVUniversity,@StdASIVCity,@StdASIVYearOfPassing,@StdASIVPerGPA,@StdASIVMarksheet,@StdASVCollege,@StdASVUniversity,@StdASVCity,@StdASVYearOfPassing,@StdASVPerGPA,@StdASVMarksheet,@StdASignature,@StdASecQue,@StdASecAns)", con);   //(StdAdate,StdAPassSizePhoto,StdASalutation,StdAfname,StdAmname,StdAlname,StdAbdate,StdABldgroup,StdAEmail,StdAMNo,StdAGen,StdAMaritalStatus,StdAReligion,StdACasteCat,StdAFatherSpouseName,StdAFatherSpouseMNo,StfAMotherName,StfAMotherMNo,StdAFatherSpouseOccupation,StdAAnnualIncome,StdAPresentAddr,StdAPresentAddrCity,StdAPresentAddrPinCode,StdAPresentAddrState,StdAPrmntAddr,StdAPrmntAddrCity,StdAPrmntAddrPinCode,StdAPrmntAddrState,StdACourse,StdAMedOfInstrctn,StdASemester,StdAClsXSchool,StdAClsXBoard,StdAClsXCity,StdAClsXMedOfInstrctn,StdAClsXYearOfPassing,StdAClsXPercentage,StdAClsXMarksheet,StdAClsXIISchool,StdAClsXIIBoard,StdAClsXIICity,StdAClsXIIMedOfInstrctn,StdAClsXIIYearOfPassing,StdAClsXIIStreamDiscipline,StdAClsXIIPercentage,StdAClsXIIMarksheet,StdASICollege,StdASIUniversity,StdASICity,StdASIYearOfPassing,StdASIPerGPA,StdASIMarksheet,StdASIICollege,StdASIIUniversity,StdASIICity,StdASIIYearOfPassing,StdASIIPerGPA,StdASIIMarksheet,StdASIIICollege,StdASIIIUniversity,StdASIIICity,StdASIIIYearOfPassing,StdASIIIPerGPA,StdASIIIMarksheet,StdASIVCollege,StdASIVUniversity,StdASIVCity,StdASIVYearOfPassing,StdASIVPerGPA,StdASIVMarksheet,StdASVCollege,StdASVUniversity,StdASVCity,StdASVYearOfPassing,StdASVPerGPA,StdASVMarksheet,StdASignature,StdASecQue,StdASecAns)


            //cmd.Parameters.AddWithValue("StdAdmissionDate", .Text);   //  dt.ToString(format)    Label149.Text  dt


            cmd.Parameters.AddWithValue("StdASemester", Label18.Text);




            cmd.Parameters.AddWithValue("StdASICollege", TextBox36.Text);
            cmd.Parameters.AddWithValue("StdASIUniversity", TextBox37.Text);
            cmd.Parameters.AddWithValue("StdASICity", TextBox38.Text);
            cmd.Parameters.AddWithValue("StdASIYearOfPassing", TextBox40.Text);
            cmd.Parameters.AddWithValue("StdASIPerGPA", TextBox41.Text);




            cmd.Parameters.AddWithValue("StdASIICollege", TextBox43.Text);
            cmd.Parameters.AddWithValue("StdASIIUniversity", TextBox44.Text);
            cmd.Parameters.AddWithValue("StdASIICity", TextBox45.Text);
            cmd.Parameters.AddWithValue("StdASIIYearOfPassing", TextBox47.Text);
            cmd.Parameters.AddWithValue("StdASIIPerGPA", TextBox48.Text);



            cmd.Parameters.AddWithValue("StdASIIICollege", TextBox50.Text);
            cmd.Parameters.AddWithValue("StdASIIIUniversity", TextBox51.Text);
            cmd.Parameters.AddWithValue("StdASIIICity", TextBox52.Text);
            cmd.Parameters.AddWithValue("StdASIIIYearOfPassing", TextBox54.Text);
            cmd.Parameters.AddWithValue("StdASIIIPerGPA", TextBox55.Text);



            cmd.Parameters.AddWithValue("StdASIVCollege", TextBox57.Text);
            cmd.Parameters.AddWithValue("StdASIVUniversity", TextBox58.Text);
            cmd.Parameters.AddWithValue("StdASIVCity", TextBox59.Text);
            cmd.Parameters.AddWithValue("StdASIVYearOfPassing", TextBox61.Text);
            cmd.Parameters.AddWithValue("StdASIVPerGPA", TextBox62.Text);





            cmd.Parameters.AddWithValue("StdASVCollege", TextBox64.Text);
            cmd.Parameters.AddWithValue("StdASVUniversity", TextBox65.Text);
            cmd.Parameters.AddWithValue("StdASVCity", TextBox66.Text);
            cmd.Parameters.AddWithValue("StdASVYearOfPassing", TextBox68.Text);
            cmd.Parameters.AddWithValue("StdASVPerGPA", TextBox69.Text);





            // File Moving 




            SqlCommand cmd1 = new SqlCommand("select * from Student_Semester_Updation_Applications where StdAID=" + Label158.Text + " ", con);  //Request.QueryString["StdAID"].ToString()
            ////cmd2.ExecuteNonQuery();

            SqlDataReader dr1 = cmd1.ExecuteReader();
            dr1.Read();






            if (Label16.Text == "Semester 1")
            {

                // StdASIMarksheet
                cmd.Parameters.AddWithValue("StdASIMarksheet", Label158.Text + "_" + Label15.Text + "_Semester_I_Marksheet" + ".pdf");


                cmd.Parameters.AddWithValue("StdASIIMarksheet", "");
                cmd.Parameters.AddWithValue("StdASIIIMarksheet", "");
                cmd.Parameters.AddWithValue("StdASIVMarksheet", "");
                cmd.Parameters.AddWithValue("StdASVMarksheet", "");

            }


            else if (Label16.Text == "Semester 2")
            {
                cmd.Parameters.AddWithValue("StdASIMarksheet", "");

                // StdASIIMarksheet
                cmd.Parameters.AddWithValue("StdASIIMarksheet", Label158.Text + "_" + Label15.Text + "_Semester_II_Marksheet" + ".pdf");

                cmd.Parameters.AddWithValue("StdASIIIMarksheet", "");
                cmd.Parameters.AddWithValue("StdASIVMarksheet", "");
                cmd.Parameters.AddWithValue("StdASVMarksheet", "");

            }



            else if (Label16.Text == "Semester 3")
            {

                cmd.Parameters.AddWithValue("StdASIMarksheet", "");
                cmd.Parameters.AddWithValue("StdASIIMarksheet", "");

                // StdASIIIMarksheet
                cmd.Parameters.AddWithValue("StdASIIIMarksheet", Label158.Text + "_" + Label15.Text + "_Semester_III_Marksheet" + ".pdf");

                cmd.Parameters.AddWithValue("StdASIVMarksheet", "");
                cmd.Parameters.AddWithValue("StdASVMarksheet", "");

            }

            else if (Label16.Text == "Semester 4")
            {


                cmd.Parameters.AddWithValue("StdASIMarksheet", "");
                cmd.Parameters.AddWithValue("StdASIIMarksheet", "");
                cmd.Parameters.AddWithValue("StdASIIIMarksheet", "");
                cmd.Parameters.AddWithValue("StdASIVMarksheet", "");
                cmd.Parameters.AddWithValue("StdASVMarksheet", "");


            }

            else if (Label16.Text == "Semester 5")
            {





                // StdASIVMarksheet
                cmd.Parameters.AddWithValue("StdASIVMarksheet", Label158.Text + "_" + Label15.Text + "_Semester_IV_Marksheet" + ".pdf");


                // StdASIVMarksheet
                cmd.Parameters.AddWithValue("StdASVMarksheet", Label158.Text + "_" + Label15.Text + "_Semester_V_Marksheet" + ".pdf");


            }








            //cmd.Parameters.AddWithValue("", );
            //cmd.CommandText = "insert into New_Stud_Applications values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "')";
            //cmd.Connection = con;

            dr1.Close();
            cmd.ExecuteNonQuery();




            SqlCommand cmdmf = new SqlCommand("select * from New_Student_Applications where StdAID=" + TextBox72.Text + " ", con);  //Request.QueryString["StdAID"].ToString()
            ////cmd2.ExecuteNonQuery();

            SqlDataReader drmf = cmdmf.ExecuteReader();
            drmf.Read();



            // StdAPassSizePhoto

            DirectoryInfo sourceStdAPassSizePhoto = new DirectoryInfo(MapPath("~/Images/Student Admission Applications/Passport Size Photos/")); // @"C:\Users\intel\Pictures\Raj\College Management System\Images\Student Admission Applications\Signatures\";    // @"~/Images/Student Admission Applications/Signatures/";
            DirectoryInfo destinStdAPassSizePhoto = new DirectoryInfo(MapPath("~/Images/Student Details/Passport Size Photos/")); // @"C:\Users\intel\Pictures\Raj\College Management System\Images\Student Details\Signatures\";

            File.Move(sourceStdAPassSizePhoto + drmf["StdAPassSizePhoto"].ToString(), destinStdAPassSizePhoto + drmf["StdAID"].ToString() + "_" + drmf["StdASalutation"].ToString() + drmf["StdAfname"].ToString() + "_" + drmf["StdAlname"].ToString() + "_Passport_Size_Photo" + ".jpg");
            //  cmd.Parameters.AddWithValue("StdAPassSizePhoto", TextBox72.Text + "_" + DropDownList1.Text + TextBox1.Text + "_" + TextBox2.Text + ".jpg");







            if (DropDownList5.Text == "Semester 1")
            {

                // StdAClsXMarksheet

                DirectoryInfo sourceStdAClsXMarksheet = new DirectoryInfo(MapPath("~/Images/Student Admission Applications/Class X Marksheets/")); // @"C:\Users\intel\Pictures\Raj\College Management System\Images\Student Admission Applications\Signatures\";    // @"~/Images/Student Admission Applications/Signatures/";
                DirectoryInfo destinStdAClsXMarksheet = new DirectoryInfo(MapPath("~/Images/Student Details/Class X Marksheets/")); // @"C:\Users\intel\Pictures\Raj\College Management System\Images\Student Details\Signatures\";

                File.Move(sourceStdAClsXMarksheet + drmf["StdAClsXMarksheet"].ToString(), destinStdAClsXMarksheet + drmf["StdAID"].ToString() + "_" + drmf["StdASalutation"].ToString() + drmf["StdAfname"].ToString() + "_" + drmf["StdAlname"].ToString() + "_Class_X_Marksheet" + ".pdf");
                //    cmd.Parameters.AddWithValue("StdAClsXMarksheet", TextBox72.Text + "_" + DropDownList1.Text + TextBox1.Text + "_" + TextBox2.Text + ".jpg");



                // StdAClsXIIMarksheet

                DirectoryInfo sourceStdAClsXIIMarksheet = new DirectoryInfo(MapPath("~/Images/Student Admission Applications/Class XII Marksheets/")); // @"C:\Users\intel\Pictures\Raj\College Management System\Images\Student Admission Applications\Signatures\";    // @"~/Images/Student Admission Applications/Signatures/";
                DirectoryInfo destinStdAClsXIIMarksheet = new DirectoryInfo(MapPath("~/Images/Student Details/Class XII Marksheets/")); // @"C:\Users\intel\Pictures\Raj\College Management System\Images\Student Details\Signatures\";

                File.Move(sourceStdAClsXIIMarksheet + drmf["StdAClsXIIMarksheet"].ToString(), destinStdAClsXIIMarksheet + drmf["StdAID"].ToString() + "_" + drmf["StdASalutation"].ToString() + drmf["StdAfname"].ToString() + "_" + drmf["StdAlname"].ToString() + "_Class_XII_Marksheet" + ".pdf");
                //    cmd.Parameters.AddWithValue("StdAClsXIIMarksheet", TextBox72.Text + "_" + DropDownList1.Text + TextBox1.Text + "_" + TextBox2.Text + ".jpg");


            }


            else if (DropDownList5.Text == "Semester 2")
            {

                // StdAClsXMarksheet

                DirectoryInfo sourceStdAClsXMarksheet = new DirectoryInfo(MapPath("~/Images/Student Admission Applications/Class X Marksheets/")); // @"C:\Users\intel\Pictures\Raj\College Management System\Images\Student Admission Applications\Signatures\";    // @"~/Images/Student Admission Applications/Signatures/";
                DirectoryInfo destinStdAClsXMarksheet = new DirectoryInfo(MapPath("~/Images/Student Details/Class X Marksheets/")); // @"C:\Users\intel\Pictures\Raj\College Management System\Images\Student Details\Signatures\";

                File.Move(sourceStdAClsXMarksheet + drmf["StdAClsXMarksheet"].ToString(), destinStdAClsXMarksheet + drmf["StdAID"].ToString() + "_" + drmf["StdASalutation"].ToString() + drmf["StdAfname"].ToString() + "_" + drmf["StdAlname"].ToString() + "_Class_X_Marksheet" + ".pdf");
                //    cmd.Parameters.AddWithValue("StdAClsXMarksheet", TextBox72.Text + "_" + DropDownList1.Text + TextBox1.Text + "_" + TextBox2.Text + ".jpg");



                // StdAClsXIIMarksheet

                DirectoryInfo sourceStdAClsXIIMarksheet = new DirectoryInfo(MapPath("~/Images/Student Admission Applications/Class XII Marksheets/")); // @"C:\Users\intel\Pictures\Raj\College Management System\Images\Student Admission Applications\Signatures\";    // @"~/Images/Student Admission Applications/Signatures/";
                DirectoryInfo destinStdAClsXIIMarksheet = new DirectoryInfo(MapPath("~/Images/Student Details/Class XII Marksheets/")); // @"C:\Users\intel\Pictures\Raj\College Management System\Images\Student Details\Signatures\";

                File.Move(sourceStdAClsXIIMarksheet + drmf["StdAClsXIIMarksheet"].ToString(), destinStdAClsXIIMarksheet + drmf["StdAID"].ToString() + "_" + drmf["StdASalutation"].ToString() + drmf["StdAfname"].ToString() + "_" + drmf["StdAlname"].ToString() + "_Class_XII_Marksheet" + ".pdf");
                //    cmd.Parameters.AddWithValue("StdAClsXIIMarksheet", TextBox72.Text + "_" + DropDownList1.Text + TextBox1.Text + "_" + TextBox2.Text + ".jpg");


                // StdASIMarksheet

                DirectoryInfo sourceStdASIMarksheet = new DirectoryInfo(MapPath("~/Images/Student Admission Applications/Semester 1 Marksheets/")); // @"C:\Users\intel\Pictures\Raj\College Management System\Images\Student Admission Applications\Signatures\";    // @"~/Images/Student Admission Applications/Signatures/";
                DirectoryInfo destinStdASIMarksheet = new DirectoryInfo(MapPath("~/Images/Student Details/Semester 1 Marksheets/")); // @"C:\Users\intel\Pictures\Raj\College Management System\Images\Student Details\Signatures\";

                File.Move(sourceStdASIMarksheet + drmf["StdASIMarksheet"].ToString(), destinStdASIMarksheet + drmf["StdAID"].ToString() + "_" + drmf["StdASalutation"].ToString() + drmf["StdAfname"].ToString() + "_" + drmf["StdAlname"].ToString() + "_Semester_I_Marksheet" + ".pdf");
                //   cmd.Parameters.AddWithValue("StdASIMarksheet", TextBox72.Text + "_" + DropDownList1.Text + TextBox1.Text + "_" + TextBox2.Text + ".jpg");


                //   cmd.Parameters.AddWithValue("StdASIIMarksheet", "");
                //    cmd.Parameters.AddWithValue("StdASIIIMarksheet", "");
                //    cmd.Parameters.AddWithValue("StdASIVMarksheet", "");
                //    cmd.Parameters.AddWithValue("StdASVMarksheet", "");
            }



            else if (DropDownList5.Text == "Semester 3")
            {

                // StdAClsXMarksheet

                DirectoryInfo sourceStdAClsXMarksheet = new DirectoryInfo(MapPath("~/Images/Student Admission Applications/Class X Marksheets/")); // @"C:\Users\intel\Pictures\Raj\College Management System\Images\Student Admission Applications\Signatures\";    // @"~/Images/Student Admission Applications/Signatures/";
                DirectoryInfo destinStdAClsXMarksheet = new DirectoryInfo(MapPath("~/Images/Student Details/Class X Marksheets/")); // @"C:\Users\intel\Pictures\Raj\College Management System\Images\Student Details\Signatures\";

                File.Move(sourceStdAClsXMarksheet + drmf["StdAClsXMarksheet"].ToString(), destinStdAClsXMarksheet + drmf["StdAID"].ToString() + "_" + drmf["StdASalutation"].ToString() + drmf["StdAfname"].ToString() + "_" + drmf["StdAlname"].ToString() + "_Class_X_Marksheet" + ".pdf");
                //    cmd.Parameters.AddWithValue("StdAClsXMarksheet", TextBox72.Text + "_" + DropDownList1.Text + TextBox1.Text + "_" + TextBox2.Text + ".jpg");



                // StdAClsXIIMarksheet

                DirectoryInfo sourceStdAClsXIIMarksheet = new DirectoryInfo(MapPath("~/Images/Student Admission Applications/Class XII Marksheets/")); // @"C:\Users\intel\Pictures\Raj\College Management System\Images\Student Admission Applications\Signatures\";    // @"~/Images/Student Admission Applications/Signatures/";
                DirectoryInfo destinStdAClsXIIMarksheet = new DirectoryInfo(MapPath("~/Images/Student Details/Class XII Marksheets/")); // @"C:\Users\intel\Pictures\Raj\College Management System\Images\Student Details\Signatures\";

                File.Move(sourceStdAClsXIIMarksheet + drmf["StdAClsXIIMarksheet"].ToString(), destinStdAClsXIIMarksheet + drmf["StdAID"].ToString() + "_" + drmf["StdASalutation"].ToString() + drmf["StdAfname"].ToString() + "_" + drmf["StdAlname"].ToString() + "_Class_XII_Marksheet" + ".pdf");
                //    cmd.Parameters.AddWithValue("StdAClsXIIMarksheet", TextBox72.Text + "_" + DropDownList1.Text + TextBox1.Text + "_" + TextBox2.Text + ".jpg");


                // StdASIMarksheet

                DirectoryInfo sourceStdASIMarksheet = new DirectoryInfo(MapPath("~/Images/Student Admission Applications/Semester 1 Marksheets/")); // @"C:\Users\intel\Pictures\Raj\College Management System\Images\Student Admission Applications\Signatures\";    // @"~/Images/Student Admission Applications/Signatures/";
                DirectoryInfo destinStdASIMarksheet = new DirectoryInfo(MapPath("~/Images/Student Details/Semester 1 Marksheets/")); // @"C:\Users\intel\Pictures\Raj\College Management System\Images\Student Details\Signatures\";

                File.Move(sourceStdASIMarksheet + drmf["StdASIMarksheet"].ToString(), destinStdASIMarksheet + drmf["StdAID"].ToString() + "_" + drmf["StdASalutation"].ToString() + drmf["StdAfname"].ToString() + "_" + drmf["StdAlname"].ToString() + "_Semester_I_Marksheet" + ".pdf");
                //   cmd.Parameters.AddWithValue("StdASIMarksheet", TextBox72.Text + "_" + DropDownList1.Text + TextBox1.Text + "_" + TextBox2.Text + ".jpg");


                // StdASIIMarksheet

                DirectoryInfo sourceStdASIIMarksheet = new DirectoryInfo(MapPath("~/Images/Student Admission Applications/Semester 2 Marksheets/")); // @"C:\Users\intel\Pictures\Raj\College Management System\Images\Student Admission Applications\Signatures\";    // @"~/Images/Student Admission Applications/Signatures/";
                DirectoryInfo destinStdASIIMarksheet = new DirectoryInfo(MapPath("~/Images/Student Details/Semester 2 Marksheets/")); // @"C:\Users\intel\Pictures\Raj\College Management System\Images\Student Details\Signatures\";

                File.Move(sourceStdASIIMarksheet + drmf["StdASIIMarksheet"].ToString(), destinStdASIIMarksheet + drmf["StdAID"].ToString() + "_" + drmf["StdASalutation"].ToString() + drmf["StdAfname"].ToString() + "_" + drmf["StdAlname"].ToString() + "_Semester_II_Marksheet" + ".pdf");
                //   cmd.Parameters.AddWithValue("StdASIIMarksheet", TextBox72.Text + "_" + DropDownList1.Text + TextBox1.Text + "_" + TextBox2.Text + ".jpg");




                //  cmd.Parameters.AddWithValue("StdASIIIMarksheet", "");
                //   cmd.Parameters.AddWithValue("StdASIVMarksheet", "");
                //   cmd.Parameters.AddWithValue("StdASVMarksheet", "");
            }

            else if (DropDownList5.Text == "Semester 4")
            {

                // StdAClsXMarksheet

                DirectoryInfo sourceStdAClsXMarksheet = new DirectoryInfo(MapPath("~/Images/Student Admission Applications/Class X Marksheets/")); // @"C:\Users\intel\Pictures\Raj\College Management System\Images\Student Admission Applications\Signatures\";    // @"~/Images/Student Admission Applications/Signatures/";
                DirectoryInfo destinStdAClsXMarksheet = new DirectoryInfo(MapPath("~/Images/Student Details/Class X Marksheets/")); // @"C:\Users\intel\Pictures\Raj\College Management System\Images\Student Details\Signatures\";

                File.Move(sourceStdAClsXMarksheet + drmf["StdAClsXMarksheet"].ToString(), destinStdAClsXMarksheet + drmf["StdAID"].ToString() + "_" + drmf["StdASalutation"].ToString() + drmf["StdAfname"].ToString() + "_" + drmf["StdAlname"].ToString() + "_Class_X_Marksheet" + ".pdf");
                //    cmd.Parameters.AddWithValue("StdAClsXMarksheet", TextBox72.Text + "_" + DropDownList1.Text + TextBox1.Text + "_" + TextBox2.Text + ".jpg");



                // StdAClsXIIMarksheet

                DirectoryInfo sourceStdAClsXIIMarksheet = new DirectoryInfo(MapPath("~/Images/Student Admission Applications/Class XII Marksheets/")); // @"C:\Users\intel\Pictures\Raj\College Management System\Images\Student Admission Applications\Signatures\";    // @"~/Images/Student Admission Applications/Signatures/";
                DirectoryInfo destinStdAClsXIIMarksheet = new DirectoryInfo(MapPath("~/Images/Student Details/Class XII Marksheets/")); // @"C:\Users\intel\Pictures\Raj\College Management System\Images\Student Details\Signatures\";

                File.Move(sourceStdAClsXIIMarksheet + drmf["StdAClsXIIMarksheet"].ToString(), destinStdAClsXIIMarksheet + drmf["StdAID"].ToString() + "_" + drmf["StdASalutation"].ToString() + drmf["StdAfname"].ToString() + "_" + drmf["StdAlname"].ToString() + "_Class_XII_Marksheet" + ".pdf");
                //    cmd.Parameters.AddWithValue("StdAClsXIIMarksheet", TextBox72.Text + "_" + DropDownList1.Text + TextBox1.Text + "_" + TextBox2.Text + ".jpg");


                // StdASIMarksheet

                DirectoryInfo sourceStdASIMarksheet = new DirectoryInfo(MapPath("~/Images/Student Admission Applications/Semester 1 Marksheets/")); // @"C:\Users\intel\Pictures\Raj\College Management System\Images\Student Admission Applications\Signatures\";    // @"~/Images/Student Admission Applications/Signatures/";
                DirectoryInfo destinStdASIMarksheet = new DirectoryInfo(MapPath("~/Images/Student Details/Semester 1 Marksheets/")); // @"C:\Users\intel\Pictures\Raj\College Management System\Images\Student Details\Signatures\";

                File.Move(sourceStdASIMarksheet + drmf["StdASIMarksheet"].ToString(), destinStdASIMarksheet + drmf["StdAID"].ToString() + "_" + drmf["StdASalutation"].ToString() + drmf["StdAfname"].ToString() + "_" + drmf["StdAlname"].ToString() + "_Semester_I_Marksheet" + ".pdf");
                //   cmd.Parameters.AddWithValue("StdASIMarksheet", TextBox72.Text + "_" + DropDownList1.Text + TextBox1.Text + "_" + TextBox2.Text + ".jpg");


                // StdASIIMarksheet

                DirectoryInfo sourceStdASIIMarksheet = new DirectoryInfo(MapPath("~/Images/Student Admission Applications/Semester 2 Marksheets/")); // @"C:\Users\intel\Pictures\Raj\College Management System\Images\Student Admission Applications\Signatures\";    // @"~/Images/Student Admission Applications/Signatures/";
                DirectoryInfo destinStdASIIMarksheet = new DirectoryInfo(MapPath("~/Images/Student Details/Semester 2 Marksheets/")); // @"C:\Users\intel\Pictures\Raj\College Management System\Images\Student Details\Signatures\";

                File.Move(sourceStdASIIMarksheet + drmf["StdASIIMarksheet"].ToString(), destinStdASIIMarksheet + drmf["StdAID"].ToString() + "_" + drmf["StdASalutation"].ToString() + drmf["StdAfname"].ToString() + "_" + drmf["StdAlname"].ToString() + "_Semester_II_Marksheet" + ".pdf");
                //   cmd.Parameters.AddWithValue("StdASIIMarksheet", TextBox72.Text + "_" + DropDownList1.Text + TextBox1.Text + "_" + TextBox2.Text + ".jpg");



                // StdASIIIMarksheet

                DirectoryInfo sourceStdASIIIMarksheet = new DirectoryInfo(MapPath("~/Images/Student Admission Applications/Semester 3 Marksheets/")); // @"C:\Users\intel\Pictures\Raj\College Management System\Images\Student Admission Applications\Signatures\";    // @"~/Images/Student Admission Applications/Signatures/";
                DirectoryInfo destinStdASIIIMarksheet = new DirectoryInfo(MapPath("~/Images/Student Details/Semester 3 Marksheets/")); // @"C:\Users\intel\Pictures\Raj\College Management System\Images\Student Details\Signatures\";

                File.Move(sourceStdASIIIMarksheet + drmf["StdASIIIMarksheet"].ToString(), destinStdASIIIMarksheet + drmf["StdAID"].ToString() + "_" + drmf["StdASalutation"].ToString() + drmf["StdAfname"].ToString() + "_" + drmf["StdAlname"].ToString() + "_Semester_III_Marksheet" + ".pdf");
                //  cmd.Parameters.AddWithValue("StdASIIIMarksheet", TextBox72.Text + "_" + DropDownList1.Text + TextBox1.Text + "_" + TextBox2.Text + ".jpg");



                //  cmd.Parameters.AddWithValue("StdASIVMarksheet", "");
                //  cmd.Parameters.AddWithValue("StdASVMarksheet", "");
            }

            else if (DropDownList5.Text == "Semester 5")
            {

                // StdAClsXMarksheet

                DirectoryInfo sourceStdAClsXMarksheet = new DirectoryInfo(MapPath("~/Images/Student Admission Applications/Class X Marksheets/")); // @"C:\Users\intel\Pictures\Raj\College Management System\Images\Student Admission Applications\Signatures\";    // @"~/Images/Student Admission Applications/Signatures/";
                DirectoryInfo destinStdAClsXMarksheet = new DirectoryInfo(MapPath("~/Images/Student Details/Class X Marksheets/")); // @"C:\Users\intel\Pictures\Raj\College Management System\Images\Student Details\Signatures\";

                File.Move(sourceStdAClsXMarksheet + drmf["StdAClsXMarksheet"].ToString(), destinStdAClsXMarksheet + drmf["StdAID"].ToString() + "_" + drmf["StdASalutation"].ToString() + drmf["StdAfname"].ToString() + "_" + drmf["StdAlname"].ToString() + "_Class_X_Marksheet" + ".pdf");
                //    cmd.Parameters.AddWithValue("StdAClsXMarksheet", TextBox72.Text + "_" + DropDownList1.Text + TextBox1.Text + "_" + TextBox2.Text + ".jpg");



                // StdAClsXIIMarksheet

                DirectoryInfo sourceStdAClsXIIMarksheet = new DirectoryInfo(MapPath("~/Images/Student Admission Applications/Class XII Marksheets/")); // @"C:\Users\intel\Pictures\Raj\College Management System\Images\Student Admission Applications\Signatures\";    // @"~/Images/Student Admission Applications/Signatures/";
                DirectoryInfo destinStdAClsXIIMarksheet = new DirectoryInfo(MapPath("~/Images/Student Details/Class XII Marksheets/")); // @"C:\Users\intel\Pictures\Raj\College Management System\Images\Student Details\Signatures\";

                File.Move(sourceStdAClsXIIMarksheet + drmf["StdAClsXIIMarksheet"].ToString(), destinStdAClsXIIMarksheet + drmf["StdAID"].ToString() + "_" + drmf["StdASalutation"].ToString() + drmf["StdAfname"].ToString() + "_" + drmf["StdAlname"].ToString() + "_Class_XII_Marksheet" + ".pdf");
                //    cmd.Parameters.AddWithValue("StdAClsXIIMarksheet", TextBox72.Text + "_" + DropDownList1.Text + TextBox1.Text + "_" + TextBox2.Text + ".jpg");


                // StdASIMarksheet

                DirectoryInfo sourceStdASIMarksheet = new DirectoryInfo(MapPath("~/Images/Student Admission Applications/Semester 1 Marksheets/")); // @"C:\Users\intel\Pictures\Raj\College Management System\Images\Student Admission Applications\Signatures\";    // @"~/Images/Student Admission Applications/Signatures/";
                DirectoryInfo destinStdASIMarksheet = new DirectoryInfo(MapPath("~/Images/Student Details/Semester 1 Marksheets/")); // @"C:\Users\intel\Pictures\Raj\College Management System\Images\Student Details\Signatures\";

                File.Move(sourceStdASIMarksheet + drmf["StdASIMarksheet"].ToString(), destinStdASIMarksheet + drmf["StdAID"].ToString() + "_" + drmf["StdASalutation"].ToString() + drmf["StdAfname"].ToString() + "_" + drmf["StdAlname"].ToString() + "_Semester_I_Marksheet" + ".pdf");
                //   cmd.Parameters.AddWithValue("StdASIMarksheet", TextBox72.Text + "_" + DropDownList1.Text + TextBox1.Text + "_" + TextBox2.Text + ".jpg");


                // StdASIIMarksheet

                DirectoryInfo sourceStdASIIMarksheet = new DirectoryInfo(MapPath("~/Images/Student Admission Applications/Semester 2 Marksheets/")); // @"C:\Users\intel\Pictures\Raj\College Management System\Images\Student Admission Applications\Signatures\";    // @"~/Images/Student Admission Applications/Signatures/";
                DirectoryInfo destinStdASIIMarksheet = new DirectoryInfo(MapPath("~/Images/Student Details/Semester 2 Marksheets/")); // @"C:\Users\intel\Pictures\Raj\College Management System\Images\Student Details\Signatures\";

                File.Move(sourceStdASIIMarksheet + drmf["StdASIIMarksheet"].ToString(), destinStdASIIMarksheet + drmf["StdAID"].ToString() + "_" + drmf["StdASalutation"].ToString() + drmf["StdAfname"].ToString() + "_" + drmf["StdAlname"].ToString() + "_Semester_II_Marksheet" + ".pdf");
                //   cmd.Parameters.AddWithValue("StdASIIMarksheet", TextBox72.Text + "_" + DropDownList1.Text + TextBox1.Text + "_" + TextBox2.Text + ".jpg");



                // StdASIIIMarksheet

                DirectoryInfo sourceStdASIIIMarksheet = new DirectoryInfo(MapPath("~/Images/Student Admission Applications/Semester 3 Marksheets/")); // @"C:\Users\intel\Pictures\Raj\College Management System\Images\Student Admission Applications\Signatures\";    // @"~/Images/Student Admission Applications/Signatures/";
                DirectoryInfo destinStdASIIIMarksheet = new DirectoryInfo(MapPath("~/Images/Student Details/Semester 3 Marksheets/")); // @"C:\Users\intel\Pictures\Raj\College Management System\Images\Student Details\Signatures\";

                File.Move(sourceStdASIIIMarksheet + drmf["StdASIIIMarksheet"].ToString(), destinStdASIIIMarksheet + drmf["StdAID"].ToString() + "_" + drmf["StdASalutation"].ToString() + drmf["StdAfname"].ToString() + "_" + drmf["StdAlname"].ToString() + "_Semester_III_Marksheet" + ".pdf");
                //  cmd.Parameters.AddWithValue("StdASIIIMarksheet", TextBox72.Text + "_" + DropDownList1.Text + TextBox1.Text + "_" + TextBox2.Text + ".jpg");



                // StdASIVMarksheet

                DirectoryInfo sourceStdASIVMarksheet = new DirectoryInfo(MapPath("~/Images/Student Admission Applications/Semester 4 Marksheets/")); // @"C:\Users\intel\Pictures\Raj\College Management System\Images\Student Admission Applications\Signatures\";    // @"~/Images/Student Admission Applications/Signatures/";
                DirectoryInfo destinStdASIVMarksheet = new DirectoryInfo(MapPath("~/Images/Student Details/Semester 4 Marksheets/")); // @"C:\Users\intel\Pictures\Raj\College Management System\Images\Student Details\Signatures\";

                File.Move(sourceStdASIVMarksheet + drmf["StdASIVMarksheet"].ToString(), destinStdASIVMarksheet + drmf["StdAID"].ToString() + "_" + drmf["StdASalutation"].ToString() + drmf["StdAfname"].ToString() + "_" + drmf["StdAlname"].ToString() + "_Semester_IV_Marksheet" + ".pdf");
                //  cmd.Parameters.AddWithValue("StdASIVMarksheet", TextBox72.Text + "_" + DropDownList1.Text + TextBox1.Text + "_" + TextBox2.Text + ".jpg");




                //   cmd.Parameters.AddWithValue("StdASVMarksheet", "");
            }


            else if (DropDownList5.Text == "Semester 6")
            {

                // StdAClsXMarksheet

                DirectoryInfo sourceStdAClsXMarksheet = new DirectoryInfo(MapPath("~/Images/Student Admission Applications/Class X Marksheets/")); // @"C:\Users\intel\Pictures\Raj\College Management System\Images\Student Admission Applications\Signatures\";    // @"~/Images/Student Admission Applications/Signatures/";
                DirectoryInfo destinStdAClsXMarksheet = new DirectoryInfo(MapPath("~/Images/Student Details/Class X Marksheets/")); // @"C:\Users\intel\Pictures\Raj\College Management System\Images\Student Details\Signatures\";

                File.Move(sourceStdAClsXMarksheet + drmf["StdAClsXMarksheet"].ToString(), destinStdAClsXMarksheet + drmf["StdAID"].ToString() + "_" + drmf["StdASalutation"].ToString() + drmf["StdAfname"].ToString() + "_" + drmf["StdAlname"].ToString() + "_Class_X_Marksheet" + ".pdf");
                //    cmd.Parameters.AddWithValue("StdAClsXMarksheet", TextBox72.Text + "_" + DropDownList1.Text + TextBox1.Text + "_" + TextBox2.Text + ".jpg");



                // StdAClsXIIMarksheet

                DirectoryInfo sourceStdAClsXIIMarksheet = new DirectoryInfo(MapPath("~/Images/Student Admission Applications/Class XII Marksheets/")); // @"C:\Users\intel\Pictures\Raj\College Management System\Images\Student Admission Applications\Signatures\";    // @"~/Images/Student Admission Applications/Signatures/";
                DirectoryInfo destinStdAClsXIIMarksheet = new DirectoryInfo(MapPath("~/Images/Student Details/Class XII Marksheets/")); // @"C:\Users\intel\Pictures\Raj\College Management System\Images\Student Details\Signatures\";

                File.Move(sourceStdAClsXIIMarksheet + drmf["StdAClsXIIMarksheet"].ToString(), destinStdAClsXIIMarksheet + drmf["StdAID"].ToString() + "_" + drmf["StdASalutation"].ToString() + drmf["StdAfname"].ToString() + "_" + drmf["StdAlname"].ToString() + "_Class_XII_Marksheet" + ".pdf");
                //    cmd.Parameters.AddWithValue("StdAClsXIIMarksheet", TextBox72.Text + "_" + DropDownList1.Text + TextBox1.Text + "_" + TextBox2.Text + ".jpg");


                // StdASIMarksheet

                DirectoryInfo sourceStdASIMarksheet = new DirectoryInfo(MapPath("~/Images/Student Admission Applications/Semester 1 Marksheets/")); // @"C:\Users\intel\Pictures\Raj\College Management System\Images\Student Admission Applications\Signatures\";    // @"~/Images/Student Admission Applications/Signatures/";
                DirectoryInfo destinStdASIMarksheet = new DirectoryInfo(MapPath("~/Images/Student Details/Semester 1 Marksheets/")); // @"C:\Users\intel\Pictures\Raj\College Management System\Images\Student Details\Signatures\";

                File.Move(sourceStdASIMarksheet + drmf["StdASIMarksheet"].ToString(), destinStdASIMarksheet + drmf["StdAID"].ToString() + "_" + drmf["StdASalutation"].ToString() + drmf["StdAfname"].ToString() + "_" + drmf["StdAlname"].ToString() + "_Semester_I_Marksheet" + ".pdf");
                //   cmd.Parameters.AddWithValue("StdASIMarksheet", TextBox72.Text + "_" + DropDownList1.Text + TextBox1.Text + "_" + TextBox2.Text + ".jpg");


                // StdASIIMarksheet

                DirectoryInfo sourceStdASIIMarksheet = new DirectoryInfo(MapPath("~/Images/Student Admission Applications/Semester 2 Marksheets/")); // @"C:\Users\intel\Pictures\Raj\College Management System\Images\Student Admission Applications\Signatures\";    // @"~/Images/Student Admission Applications/Signatures/";
                DirectoryInfo destinStdASIIMarksheet = new DirectoryInfo(MapPath("~/Images/Student Details/Semester 2 Marksheets/")); // @"C:\Users\intel\Pictures\Raj\College Management System\Images\Student Details\Signatures\";

                File.Move(sourceStdASIIMarksheet + drmf["StdASIIMarksheet"].ToString(), destinStdASIIMarksheet + drmf["StdAID"].ToString() + "_" + drmf["StdASalutation"].ToString() + drmf["StdAfname"].ToString() + "_" + drmf["StdAlname"].ToString() + "_Semester_II_Marksheet" + ".pdf");
                //   cmd.Parameters.AddWithValue("StdASIIMarksheet", TextBox72.Text + "_" + DropDownList1.Text + TextBox1.Text + "_" + TextBox2.Text + ".jpg");



                // StdASIIIMarksheet

                DirectoryInfo sourceStdASIIIMarksheet = new DirectoryInfo(MapPath("~/Images/Student Admission Applications/Semester 3 Marksheets/")); // @"C:\Users\intel\Pictures\Raj\College Management System\Images\Student Admission Applications\Signatures\";    // @"~/Images/Student Admission Applications/Signatures/";
                DirectoryInfo destinStdASIIIMarksheet = new DirectoryInfo(MapPath("~/Images/Student Details/Semester 3 Marksheets/")); // @"C:\Users\intel\Pictures\Raj\College Management System\Images\Student Details\Signatures\";

                File.Move(sourceStdASIIIMarksheet + drmf["StdASIIIMarksheet"].ToString(), destinStdASIIIMarksheet + drmf["StdAID"].ToString() + "_" + drmf["StdASalutation"].ToString() + drmf["StdAfname"].ToString() + "_" + drmf["StdAlname"].ToString() + "_Semester_III_Marksheet" + ".pdf");
                //  cmd.Parameters.AddWithValue("StdASIIIMarksheet", TextBox72.Text + "_" + DropDownList1.Text + TextBox1.Text + "_" + TextBox2.Text + ".jpg");



                // StdASIVMarksheet

                DirectoryInfo sourceStdASIVMarksheet = new DirectoryInfo(MapPath("~/Images/Student Admission Applications/Semester 4 Marksheets/")); // @"C:\Users\intel\Pictures\Raj\College Management System\Images\Student Admission Applications\Signatures\";    // @"~/Images/Student Admission Applications/Signatures/";
                DirectoryInfo destinStdASIVMarksheet = new DirectoryInfo(MapPath("~/Images/Student Details/Semester 4 Marksheets/")); // @"C:\Users\intel\Pictures\Raj\College Management System\Images\Student Details\Signatures\";

                File.Move(sourceStdASIVMarksheet + drmf["StdASIVMarksheet"].ToString(), destinStdASIVMarksheet + drmf["StdAID"].ToString() + "_" + drmf["StdASalutation"].ToString() + drmf["StdAfname"].ToString() + "_" + drmf["StdAlname"].ToString() + "_Semester_IV_Marksheet" + ".pdf");
                //  cmd.Parameters.AddWithValue("StdASIVMarksheet", TextBox72.Text + "_" + DropDownList1.Text + TextBox1.Text + "_" + TextBox2.Text + ".jpg");



                // StdASVMarksheet

                DirectoryInfo sourceStdASVMarksheet = new DirectoryInfo(MapPath("~/Images/Student Admission Applications/Semester 5 Marksheets/")); // @"C:\Users\intel\Pictures\Raj\College Management System\Images\Student Admission Applications\Signatures\";    // @"~/Images/Student Admission Applications/Signatures/";
                DirectoryInfo destinStdASVMarksheet = new DirectoryInfo(MapPath("~/Images/Student Details/Semester 5 Marksheets/")); // @"C:\Users\intel\Pictures\Raj\College Management System\Images\Student Details\Signatures\";

                File.Move(sourceStdASVMarksheet + drmf["StdASVMarksheet"].ToString(), destinStdASVMarksheet + drmf["StdAID"].ToString() + "_" + drmf["StdASalutation"].ToString() + drmf["StdAfname"].ToString() + "_" + drmf["StdAlname"].ToString() + "_Semester_V_Marksheet" + ".pdf");
                // cmd.Parameters.AddWithValue("StdASVMarksheet", TextBox72.Text + "_" + DropDownList1.Text + TextBox1.Text + "_" + TextBox2.Text + ".jpg");


            }



            // Signature

            DirectoryInfo sourceStdASignature = new DirectoryInfo(MapPath("~/Images/Student Admission Applications/Signatures/")); // @"C:\Users\intel\Pictures\Raj\College Management System\Images\Student Admission Applications\Signatures\";    // @"~/Images/Student Admission Applications/Signatures/";
            DirectoryInfo destinStdASignature = new DirectoryInfo(MapPath("~/Images/Student Details/Signatures/")); // @"C:\Users\intel\Pictures\Raj\College Management System\Images\Student Details\Signatures\";

            File.Move(sourceStdASignature + drmf["StdASignature"].ToString(), destinStdASignature + drmf["StdAID"].ToString() + "_" + drmf["StdASalutation"].ToString() + drmf["StdAfname"].ToString() + "_" + drmf["StdAlname"].ToString() + "_Signature" + ".jpg");  // dr["StdAID"].ToString() + "_" + dr["StdAfname"].ToString() + ".jpg"
            // cmd.Parameters.AddWithValue("StdASignature", TextBox72.Text + "_" + DropDownList1.Text + TextBox1.Text + "_" + TextBox2.Text + ".jpg");

            //con.Close();








            drmf.Close();



            //  // Personal Details
            //  DropDownList1.ClearSelection();
            //  TextBox1.Text = "";
            //  TextBox2.Text = "";
            //  TextBox3.Text = "";
            //  TextBox4.Text = "";
            //  TextBox5.Text = "";
            //  //TextBox6.Text = "";
            //  TextBox7.Text = "";
            //  RadioButton1.Checked = false;
            //  RadioButton2.Checked = false;
            //  RadioButton3.Checked = false;
            //  RadioButton4.Checked = false;
            //  RadioButton5.Checked = false;
            //  TextBox8.Text = "";
            //  RadioButton6.Checked = false;
            //  RadioButton7.Checked = false;
            //  RadioButton8.Checked = false;
            //  RadioButton9.Checked = false;
            //  RadioButton10.Checked = false;
            //  TextBox9.Text = "";
            //  TextBox10.Text = "";
            //  TextBox11.Text = "";
            //  TextBox12.Text = "";
            //  TextBox13.Text = "";
            //  TextBox14.Text = "";

            //  // Present / Current Address
            //  TextBox15.Text = "";
            //  TextBox16.Text = "";
            //  TextBox17.Text = "";
            //  TextBox18.Text = "";
            ////  CheckBox1.Checked = false;

            //  // Permanent Address
            //  TextBox19.Text = "";
            //  TextBox20.Text = "";
            //  TextBox21.Text = "";
            //  TextBox22.Text = "";

            //  // Course & Semester Selection 
            //  DropDownList3.ClearSelection();
            // // Label41.Visible = false;
            //  DropDownList4.ClearSelection();
            //  DropDownList5.ClearSelection();

            //  // Academic Details

            //  // Class X Details
            //  TextBox23.Text = "";
            //  TextBox24.Text = "";
            //  TextBox25.Text = "";
            //  TextBox26.Text = "";
            //  TextBox27.Text = "";
            //  TextBox28.Text = "";

            //  // Class XII Details
            //  TextBox29.Text = "";
            //  TextBox30.Text = "";
            //  TextBox31.Text = "";
            //  TextBox32.Text = "";
            //  TextBox33.Text = "";
            //  TextBox34.Text = "";
            //  TextBox35.Text = "";

            //  // Semester 1 Details
            //  TextBox36.Text = "";
            //  TextBox37.Text = "";
            //  TextBox38.Text = "";
            //  TextBox40.Text = "";
            //  TextBox41.Text = "";

            //  // Semester 2 Details
            //  TextBox43.Text = "";
            //  TextBox44.Text = "";
            //  TextBox45.Text = "";
            //  TextBox47.Text = "";
            //  TextBox48.Text = "";

            //  // Semester 3 Details
            //  TextBox50.Text = "";
            //  TextBox51.Text = "";
            //  TextBox52.Text = "";
            //  TextBox54.Text = "";
            //  TextBox55.Text = "";

            //  // Semester 4 Details
            //  TextBox57.Text = "";
            //  TextBox58.Text = "";
            //  TextBox59.Text = "";
            //  TextBox61.Text = "";
            //  TextBox62.Text = "";

            //  // Semester 5 Details
            //  TextBox64.Text = "";
            //  TextBox65.Text = "";
            //  TextBox66.Text = "";
            //  TextBox68.Text = "";
            //  TextBox69.Text = "";

            //  //Password Recovery Information
            // // DropDownList6.ClearSelection();
            //  TextBox70.Text = "";
            //  TextBox71.Text = "";

            // Application Submitted Successfully Label154 text
            Label154.Visible = true;
            Label154.ForeColor = System.Drawing.Color.Green;
            Label154.Text = "<center>" + "Student Admitted Successfully....." + "<br/>" + "Thank You....." + "<br/>" + "Visit Again....." + "</center>";
            Label154.Focus();
            Response.Write("<script LANGUAGE='JavaScript' >alert('\\tStudent Admitted Successfully.....\\n\\tThank You.....\\n\\tVisit Again.....')</script>");

            //Response.Redirect("Pre_Login_Home_Page.aspx");



            con.Close();

        }
        catch (Exception ex)
        {
            Response.Write("<script LANGUAGE='JavaScript' >alert('\tError..!''" + ex.ToString() + "')</script>");
            Response.Write("Error" + ex.ToString());

        }





        try
        {
            con.Open();

            SqlCommand cmddel = new SqlCommand("delete from New_Student_Applications where StdAID=@StdAID", con);
            cmddel.Parameters.AddWithValue("StdAID", TextBox72.Text);

            cmddel.ExecuteNonQuery();

            //Label154.Visible = true;
            //Label154.ForeColor = System.Drawing.Color.Green;
            //Label154.Text = "<center>" + "Student Application Deleted Successfully....." + "<br/>" + "Thank You....." + "<br/>" + "Visit Again....." + "</center>";
            //Label154.Focus();
            //Response.Write("<script LANGUAGE='JavaScript' >alert('\\tStudent Application Deleted Successfully.....\\n\\tThank You.....\\n\\tVisit Again.....')</script>");

            //Response.Redirect("Admin_Student_Admission_Application_Whole_List.aspx");



            con.Close();

        }
        catch (Exception ex)
        {
            Response.Write("Error" + ex.ToString());
            Response.Write("<script LANGUAGE='JavaScript' >alert('\tError..!''" + ex.ToString() + "')</script>");


        }


    }
}