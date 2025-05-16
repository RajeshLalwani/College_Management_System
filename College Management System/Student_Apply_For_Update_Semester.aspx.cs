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

public partial class Student_Apply_For_Update_Semester : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Conn"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        //Panel4.Visible = false;
        //Panel14.Visible = false;
        //Panel5.Visible = false;
        //Panel15.Visible = false;
        //Panel6.Visible = false;
        //Panel16.Visible = false;
        //Panel7.Visible = false;
        //Panel17.Visible = false;
        //Panel8.Visible = false;
        //Panel18.Visible = false;

        Label19.Visible = false;

        Panel4.Visible = false;
        Panel14.Visible = false;
        Label90.Visible = false;
        Label91.Visible = false;

        Panel5.Visible = false;
        Panel15.Visible = false;
        Label101.Visible = false;
        Label102.Visible = false;

        Panel6.Visible = false;
        Panel16.Visible = false;
        Label112.Visible = false;
        Label113.Visible = false;

        Panel7.Visible = false;
        Panel17.Visible = false;
        Label123.Visible = false;
        Label124.Visible = false;

        Panel8.Visible = false;
        Panel18.Visible = false;
        Label134.Visible = false;
        Label135.Visible = false;

        Label154.Visible = false;

        if (Session["uid"] != null)
        {
            con.Open();

            SqlCommand cmd2 = new SqlCommand("select * from Student_Details where StdAdmissionID='" + Session["uid"].ToString() + "' ", con);

            SqlDataReader dr = cmd2.ExecuteReader();
            dr.Read();
            Image5.ImageUrl = "Images/Student Details/Passport Size Photos/" + dr["StdAPassSizePhoto"].ToString();
            Label156.Text = Session["uid"].ToString();
            Label15.Text = dr["StdASalutation"].ToString() + " " + dr["StdAfname"].ToString() + " " + dr["StdAmname"].ToString() + " " + dr["StdAlname"].ToString();
            Label16.Text = dr["StdASemester"].ToString();
            if (Label16.Text == "Semester 1")
            {
                Label18.Text = "Semester 2";
                Panel4.Visible = true;
                Panel14.Visible = true;
            }
            if (Label16.Text == "Semester 2")
            {
                Label18.Text = "Semester 3";
                Panel5.Visible = true;
                Panel15.Visible = true;
            }
            if (Label16.Text == "Semester 3")
            {
                Label18.Text = "Semester 4";
                Panel6.Visible = true;
                Panel16.Visible = true;
            }
            if (Label16.Text == "Semester 4")
            {
                Label18.Text = "Semester 5";
                Panel7.Visible = true;
                Panel17.Visible = true;
            }
            if (Label16.Text == "Semester 5")
            {
                Label18.Text = "Semester 6";
                Panel8.Visible = true;
                Panel18.Visible = true;
            }
            if (Label16.Text == "Semester 6")
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('\\talert('\\tYour are Already in the Last Semester...!')</script>");
                Label19.Visible = true;
                Label19.ForeColor = System.Drawing.Color.Green;
                Label19.Text = "<center>" + "Your are Already in the Last Semester..." + "<center>";
                Label19.Focus();

                Response.Redirect("Student_Home_Page.aspx");
            }
            //Label.Text = dr[""].ToString();

            dr.Close();
            con.Close();
        }
        else
        {
            Response.Redirect("Student_Home_Page.aspx");
        }
    }
    protected void Button13_Click(object sender, EventArgs e)
    {
        Response.Redirect("Student_Home_Page.aspx");
    }
    protected void Button12_Click(object sender, EventArgs e)
    {
        try
        {

            con.Open();

            //SqlCommand cmd = new SqlCommand("insert into New_Student_Applications (StdAdate,StdAPassSizePhoto,StdASalutation,StdAfname,StdAmname,StdAlname,StdAbdate,StdABldgroup,StdAEmail,StdAMNo,StdAGen,StdAMaritalStatus,StdAReligion,StdACasteCat,StdAFatherSpouseName,StdAFatherSpouseMNo,StfAMotherName,StfAMotherMNo,StdAFatherSpouseOccupation,StdAAnnualIncome,StdAPresentAddr,StdAPresentAddrCity,StdAPresentAddrPinCode,StdAPresentAddrState,StdAPrmntAddr,StdAPrmntAddrCity,StdAPrmntAddrPinCode,StdAPrmntAddrState,StdACourse,StdAMedOfInstrctn,StdASemester,StdAClsXSchool,StdAClsXBoard,StdAClsXCity,StdAClsXMedOfInstrctn,StdAClsXYearOfPassing,StdAClsXPercentage,StdAClsXMarksheet,StdAClsXIISchool,StdAClsXIIBoard,StdAClsXIICity,StdAClsXIIMedOfInstrctn,StdAClsXIIYearOfPassing,StdAClsXIIStreamDiscipline,StdAClsXIIPercentage,StdAClsXIIMarksheet,StdASICollege,StdASIUniversity,StdASICity,StdASIYearOfPassing,StdASIPerGPA,StdASIMarksheet,StdASIICollege,StdASIIUniversity,StdASIICity,StdASIIYearOfPassing,StdASIIPerGPA,StdASIIMarksheet,StdASIIICollege,StdASIIIUniversity,StdASIIICity,StdASIIIYearOfPassing,StdASIIIPerGPA,StdASIIIMarksheet,StdASIVCollege,StdASIVUniversity,StdASIVCity,StdASIVYearOfPassing,StdASIVPerGPA,StdASIVMarksheet,StdASVCollege,StdASVUniversity,StdASVCity,StdASVYearOfPassing,StdASVPerGPA,StdASVMarksheet,StdASignature,StdASecQue,StdASecAns) values (@StdAdate,@StdAPassSizePhoto,@StdASalutation,@StdAfname,@StdAmname,@StdAlname,@StdAbdate,@StdABldgroup,@StdAEmail,@StdAMNo,@StdAGen,@StdAMaritalStatus,@StdAReligion,@StdACasteCat,@StdAFatherSpouseName,@StdAFatherSpouseMNo,@StfAMotherName,@StfAMotherMNo,@StdAFatherSpouseOccupation,@StdAAnnualIncome,@StdAPresentAddr,@StdAPresentAddrCity,@StdAPresentAddrPinCode,@StdAPresentAddrState,@StdAPrmntAddr,@StdAPrmntAddrCity,@StdAPrmntAddrPinCode,@StdAPrmntAddrState,@StdACourse,@StdAMedOfInstrctn,@StdASemester,@StdAClsXSchool,@StdAClsXBoard,@StdAClsXCity,@StdAClsXMedOfInstrctn,@StdAClsXYearOfPassing,@StdAClsXPercentage,@StdAClsXMarksheet,@StdAClsXIISchool,@StdAClsXIIBoard,@StdAClsXIICity,@StdAClsXIIMedOfInstrctn,@StdAClsXIIYearOfPassing,@StdAClsXIIStreamDiscipline,@StdAClsXIIPercentage,@StdAClsXIIMarksheet,@StdASICollege,@StdASIUniversity,@StdASICity,@StdASIYearOfPassing,@StdASIPerGPA,@StdASIMarksheet,@StdASIICollege,@StdASIIUniversity,@StdASIICity,@StdASIIYearOfPassing,@StdASIIPerGPA,@StdASIIMarksheet,@StdASIIICollege,@StdASIIIUniversity,@StdASIIICity,@StdASIIIYearOfPassing,@StdASIIIPerGPA,@StdASIIIMarksheet,@StdASIVCollege,@StdASIVUniversity,@StdASIVCity,@StdASIVYearOfPassing,@StdASIVPerGPA,@StdASIVMarksheet,@StdASVCollege,@StdASVUniversity,@StdASVCity,@StdASVYearOfPassing,@StdASVPerGPA,@StdASVMarksheet,@StdASignature,@StdASecQue,@StdASecAns)", con);

            SqlCommand cmd = new SqlCommand("insert into Student_Semester_Updation_Applications values (@StdAdate,@StdAdmissionID,@StdAnm,@StdACSemester,@StdAASemester,@StdASICollege,@StdASIUniversity,@StdASICity,@StdASIYearOfPassing,@StdASIPerGPA,@StdASIMarksheet,@StdASIICollege,@StdASIIUniversity,@StdASIICity,@StdASIIYearOfPassing,@StdASIIPerGPA,@StdASIIMarksheet,@StdASIIICollege,@StdASIIIUniversity,@StdASIIICity,@StdASIIIYearOfPassing,@StdASIIIPerGPA,@StdASIIIMarksheet,@StdASIVCollege,@StdASIVUniversity,@StdASIVCity,@StdASIVYearOfPassing,@StdASIVPerGPA,@StdASIVMarksheet,@StdASVCollege,@StdASVUniversity,@StdASVCity,@StdASVYearOfPassing,@StdASVPerGPA,@StdASVMarksheet)", con);
            DateTime currentDate = DateTime.Now;
            string dt = currentDate.ToString("yyyy/MM/dd");

            cmd.Parameters.AddWithValue("StdAdate", dt);   //  dt.ToString(format)    Label149.Text  dt
            cmd.Parameters.AddWithValue("StdAdmissionID", Session["uid"].ToString());

            cmd.Parameters.AddWithValue("StdAnm", Label15.Text);
            cmd.Parameters.AddWithValue("StdACSemester", Label16.Text);
            cmd.Parameters.AddWithValue("StdAASemester", Label18.Text);







            cmd.Parameters.AddWithValue("StdASICollege", TextBox36.Text);
            cmd.Parameters.AddWithValue("StdASIUniversity", TextBox37.Text);
            cmd.Parameters.AddWithValue("StdASICity", TextBox38.Text);
            cmd.Parameters.AddWithValue("StdASIYearOfPassing", TextBox40.Text);
            cmd.Parameters.AddWithValue("StdASIPerGPA", TextBox41.Text);




            if (FileUpload4.HasFile)
            {
                String strpath = System.IO.Path.GetExtension(FileUpload4.FileName);

                if (strpath != ".pdf")  //FileUpload4.FileName
                {
                    Label90.Visible = true;
                    Label90.ForeColor = System.Drawing.Color.Red;
                    Label90.Text = "<center>Only (.pdf ) File Formats are Accepted..!</center>";
                    FileUpload4.Focus();

                }
                else
                {
                    int filesize = FileUpload4.PostedFile.ContentLength;

                    if (filesize > 1000000)
                    {
                        Label90.Visible = true;
                        Label90.ForeColor = System.Drawing.Color.Red;
                        Label90.Text = "<center>Error : Please Upload files within 1MB only...!</center>";
                        FileUpload4.Focus();
                    }
                    else
                    {
                        Label90.Visible = true;
                        Label90.ForeColor = System.Drawing.Color.Green;

                        Label90.Text = "<center>File (Name : " + FileUpload4.FileName + " ) Uploaded Successfully </center>";
                        FileUpload4.SaveAs(Server.MapPath("Images/Student Semester Updation Applications/Semester 1 Marksheets//" + FileUpload4.FileName));

                        String filename = FileUpload4.FileName;
                        Label91.Visible = true;
                        Label91.ForeColor = System.Drawing.Color.Green;
                        Label91.Text = "<center>Your File Size is : " + FileUpload4.FileBytes.Length.ToString() + " KB</center>";
                        FileUpload4.Focus();

                        string filepath = "Images/Student Semester Updation Applications/Semester 1 Marksheets/" + filename;
                        cmd.Parameters.AddWithValue("StdASIMarksheet", filename);
                    }
                }
            }
            else
            {
                Label90.Visible = true;
                Label90.ForeColor = System.Drawing.Color.Red;
                Label90.Text = "<center>Error : Please Select Any File...!</center>";
                FileUpload4.Focus();
                cmd.Parameters.AddWithValue("StdASIMarksheet", "");
            }




            cmd.Parameters.AddWithValue("StdASIICollege", TextBox43.Text);
            cmd.Parameters.AddWithValue("StdASIIUniversity", TextBox44.Text);
            cmd.Parameters.AddWithValue("StdASIICity", TextBox45.Text);
            cmd.Parameters.AddWithValue("StdASIIYearOfPassing", TextBox47.Text);
            cmd.Parameters.AddWithValue("StdASIIPerGPA", TextBox48.Text);





            if (FileUpload5.HasFile)
            {
                String strpath = System.IO.Path.GetExtension(FileUpload5.FileName);

                if (strpath != ".pdf")  //FileUpload5.FileName
                {
                    Label101.Visible = true;
                    Label101.ForeColor = System.Drawing.Color.Red;
                    Label101.Text = "<center>Only (.pdf ) File Formats are Accepted..!</center>";
                    FileUpload5.Focus();

                }
                else
                {
                    int filesize = FileUpload5.PostedFile.ContentLength;

                    if (filesize > 1000000)
                    {
                        Label101.Visible = true;
                        Label101.ForeColor = System.Drawing.Color.Red;
                        Label101.Text = "<center>Error : Please Upload files within 1MB only...!</center>";
                        FileUpload5.Focus();
                    }
                    else
                    {
                        Label101.Visible = true;
                        Label101.ForeColor = System.Drawing.Color.Green;

                        Label101.Text = "<center>File (Name : " + FileUpload5.FileName + " ) Uploaded Successfully </center>";
                        FileUpload5.SaveAs(Server.MapPath("Images/Student Semester Updation Applications/Semester 2 Marksheets//" + FileUpload5.FileName));

                        String filename = FileUpload5.FileName;
                        Label102.Visible = true;
                        Label102.ForeColor = System.Drawing.Color.Green;
                        Label102.Text = "<center>Your File Size is : " + FileUpload5.FileBytes.Length.ToString() + " KB</center>";
                        FileUpload5.Focus();

                        string filepath = "Images/Student Semester Updation Applications/Semester 2 Marksheets/" + filename;
                        cmd.Parameters.AddWithValue("StdASIIMarksheet", filename);
                    }
                }
            }
            else
            {
                Label101.Visible = true;
                Label101.ForeColor = System.Drawing.Color.Red;
                Label101.Text = "<center>Error : Please Select Any File...!</center>";
                FileUpload5.Focus();
                cmd.Parameters.AddWithValue("StdASIIMarksheet", "");
            }







            cmd.Parameters.AddWithValue("StdASIIICollege", TextBox50.Text);
            cmd.Parameters.AddWithValue("StdASIIIUniversity", TextBox51.Text);
            cmd.Parameters.AddWithValue("StdASIIICity", TextBox52.Text);
            cmd.Parameters.AddWithValue("StdASIIIYearOfPassing", TextBox54.Text);
            cmd.Parameters.AddWithValue("StdASIIIPerGPA", TextBox55.Text);





            if (FileUpload6.HasFile)
            {
                String strpath = System.IO.Path.GetExtension(FileUpload6.FileName);

                if (strpath != ".pdf")  //FileUpload6.FileName
                {
                    Label112.Visible = true;
                    Label112.ForeColor = System.Drawing.Color.Red;
                    Label112.Text = "<center>Only (.pdf ) File Formats are Accepted..!</center>";
                    FileUpload6.Focus();

                }
                else
                {
                    int filesize = FileUpload6.PostedFile.ContentLength;

                    if (filesize > 1000000)
                    {
                        Label112.Visible = true;
                        Label112.ForeColor = System.Drawing.Color.Red;
                        Label112.Text = "<center>Error : Please Upload files within 1MB only...!</center>";
                        FileUpload6.Focus();
                    }
                    else
                    {
                        Label112.Visible = true;
                        Label112.ForeColor = System.Drawing.Color.Green;

                        Label112.Text = "<center>File (Name : " + FileUpload6.FileName + " ) Uploaded Successfully </center>";
                        FileUpload6.SaveAs(Server.MapPath("Images/Student Semester Updation Applications/Semester 3 Marksheets//" + FileUpload6.FileName));

                        String filename = FileUpload6.FileName;
                        Label113.Visible = true;
                        Label113.ForeColor = System.Drawing.Color.Green;
                        Label113.Text = "<center>Your File Size is : " + FileUpload6.FileBytes.Length.ToString() + " KB</center>";
                        FileUpload6.Focus();

                        string filepath = "Images/Student Semester Updation Applications/Semester 3 Marksheets/" + filename;
                        cmd.Parameters.AddWithValue("StdASIIIMarksheet", filename);
                    }
                }
            }
            else
            {
                Label112.Visible = true;
                Label112.ForeColor = System.Drawing.Color.Red;
                Label112.Text = "<center>Error : Please Select Any File...!</center>";
                FileUpload6.Focus();
                cmd.Parameters.AddWithValue("StdASIIIMarksheet", "");
            }






            cmd.Parameters.AddWithValue("StdASIVCollege", TextBox57.Text);
            cmd.Parameters.AddWithValue("StdASIVUniversity", TextBox58.Text);
            cmd.Parameters.AddWithValue("StdASIVCity", TextBox59.Text);
            cmd.Parameters.AddWithValue("StdASIVYearOfPassing", TextBox61.Text);
            cmd.Parameters.AddWithValue("StdASIVPerGPA", TextBox62.Text);





            if (FileUpload7.HasFile)
            {
                String strpath = System.IO.Path.GetExtension(FileUpload7.FileName);

                if (strpath != ".pdf")  //FileUpload7.FileName
                {
                    Label123.Visible = true;
                    Label123.ForeColor = System.Drawing.Color.Red;
                    Label123.Text = "<center>Only (.pdf ) File Formats are Accepted..!</center>";
                    FileUpload7.Focus();

                }
                else
                {
                    int filesize = FileUpload7.PostedFile.ContentLength;

                    if (filesize > 1000000)
                    {
                        Label123.Visible = true;
                        Label123.ForeColor = System.Drawing.Color.Red;
                        Label123.Text = "<center>Error : Please Upload files within 1MB only...!</center>";
                        FileUpload7.Focus();
                    }
                    else
                    {
                        Label123.Visible = true;
                        Label123.ForeColor = System.Drawing.Color.Green;

                        Label123.Text = "<center>File (Name : " + FileUpload7.FileName + " ) Uploaded Successfully </center>";
                        FileUpload7.SaveAs(Server.MapPath("Images/Student Semester Updation Applications/Semester 4 Marksheets//" + FileUpload7.FileName));

                        String filename = FileUpload6.FileName;
                        Label124.Visible = true;
                        Label124.ForeColor = System.Drawing.Color.Green;
                        Label124.Text = "<center>Your File Size is : " + FileUpload7.FileBytes.Length.ToString() + " KB</center>";
                        FileUpload7.Focus();

                        string filepath = "Images/Student Semester Updation Applications/Semester 4 Marksheets/" + filename;
                        cmd.Parameters.AddWithValue("StdASIVMarksheet", filename);
                    }
                }
            }
            else
            {
                Label123.Visible = true;
                Label123.ForeColor = System.Drawing.Color.Red;
                Label123.Text = "<center>Error : Please Select Any File...!</center>";
                FileUpload7.Focus();
                cmd.Parameters.AddWithValue("StdASIVMarksheet", "");
            }







            cmd.Parameters.AddWithValue("StdASVCollege", TextBox64.Text);
            cmd.Parameters.AddWithValue("StdASVUniversity", TextBox65.Text);
            cmd.Parameters.AddWithValue("StdASVCity", TextBox66.Text);
            cmd.Parameters.AddWithValue("StdASVYearOfPassing", TextBox68.Text);
            cmd.Parameters.AddWithValue("StdASVPerGPA", TextBox69.Text);





            if (FileUpload8.HasFile)
            {
                String strpath = System.IO.Path.GetExtension(FileUpload8.FileName);

                if (strpath != ".pdf")  //FileUpload8.FileName
                {
                    Label134.Visible = true;
                    Label134.ForeColor = System.Drawing.Color.Red;
                    Label134.Text = "<center>Only (.pdf ) File Formats are Accepted..!</center>";
                    FileUpload8.Focus();

                }
                else
                {
                    int filesize = FileUpload8.PostedFile.ContentLength;

                    if (filesize > 1000000)
                    {
                        Label134.Visible = true;
                        Label134.ForeColor = System.Drawing.Color.Red;
                        Label134.Text = "<center>Error : Please Upload files within 1MB only...!</center>";
                        FileUpload8.Focus();
                    }
                    else
                    {
                        Label134.Visible = true;
                        Label134.ForeColor = System.Drawing.Color.Green;

                        Label134.Text = "<center>File (Name : " + FileUpload8.FileName + " ) Uploaded Successfully </center>";
                        FileUpload8.SaveAs(Server.MapPath("Images/Student Semester Updation Applications/Semester 5 Marksheets//" + FileUpload8.FileName));

                        String filename = FileUpload6.FileName;
                        Label135.Visible = true;
                        Label135.ForeColor = System.Drawing.Color.Green;
                        Label135.Text = "<center>Your File Size is : " + FileUpload8.FileBytes.Length.ToString() + " KB</center>";
                        FileUpload8.Focus();

                        string filepath = "Images/Student Semester Updation Applications/Semester 5 Marksheets/" + filename;
                        cmd.Parameters.AddWithValue("StdASVMarksheet", filename);
                    }
                }
            }
            else
            {
                Label134.Visible = true;
                Label134.ForeColor = System.Drawing.Color.Red;
                Label134.Text = "<center>Error : Please Select Any File...!</center>";
                FileUpload8.Focus();
                cmd.Parameters.AddWithValue("StdASVMarksheet", "");
            }



            cmd.ExecuteNonQuery();



            // Semester 1 Details
            TextBox36.Text = "";
            TextBox37.Text = "";
            TextBox38.Text = "";
            TextBox40.Text = "";
            TextBox41.Text = "";

            // Semester 2 Details
            TextBox43.Text = "";
            TextBox44.Text = "";
            TextBox45.Text = "";
            TextBox47.Text = "";
            TextBox48.Text = "";

            // Semester 3 Details
            TextBox50.Text = "";
            TextBox51.Text = "";
            TextBox52.Text = "";
            TextBox54.Text = "";
            TextBox55.Text = "";

            // Semester 4 Details
            TextBox57.Text = "";
            TextBox58.Text = "";
            TextBox59.Text = "";
            TextBox61.Text = "";
            TextBox62.Text = "";

            // Semester 5 Details
            TextBox64.Text = "";
            TextBox65.Text = "";
            TextBox66.Text = "";
            TextBox68.Text = "";
            TextBox69.Text = "";



            // Application Submitted Successfully Label154 text
            Label154.Visible = true;
            Label154.ForeColor = System.Drawing.Color.Green;
            Label154.Text = "<center>" + "Application Sent Successfully....." + "<br/>" + "Thank You....." + "<br/>" + "Visit Again....." + "</center>";
            Label154.Focus();
            Response.Write("<script LANGUAGE='JavaScript' >alert('\\tApplication Sent Successfully.....\\n\\tThank You.....\\n\\tVisit Again.....')</script>");

            //Response.Redirect("Pre_Login_Home_Page.aspx");



            con.Close();

        }
        catch (Exception ex)
        {
            Response.Write("<script LANGUAGE='JavaScript' >alert('\tError : " + ex.ToString() + "')</script>");


        }

    }
}