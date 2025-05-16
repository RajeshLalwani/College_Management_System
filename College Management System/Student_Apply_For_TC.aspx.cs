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

public partial class Student_Apply_For_TC : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Conn"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        Label19.Visible = false;

        Panel4.Visible = false;
        Panel14.Visible = false;
        Label90.Visible = false;
        Label91.Visible = false;


        Panel15.Visible = false;
        Label101.Visible = false;
        Label102.Visible = false;

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
            if (Label16.Text == "Semester 6")
            {

                Panel4.Visible = true;
                Panel14.Visible = true;
                Panel15.Visible = true;
            }

            else
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('\\talert('\\tYour must be in the Last Semester for Applying For Transfer Certificate...!')</script>");
                Label19.Visible = true;
                Label19.ForeColor = System.Drawing.Color.Green;
                Label19.Text = "<center>" + "Your must be in the Last Semester for Applying For Transfer Certificate..." + "<center>";
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

            SqlCommand cmd = new SqlCommand("insert into Student_TC_Applications values (@StdAdate,@StdAdmissionID,@StdAnm,@StdACSemester,@StdASVICollege,@StdASVIUniversity,@StdASVICity,@StdASVIYearOfPassing,@StdASVIPerGPA,@StdASVIMarksheet,@StdASDegCrtfct)", con);
            DateTime currentDate = DateTime.Now;
            string dt = currentDate.ToString("yyyy/MM/dd");

            cmd.Parameters.AddWithValue("StdAdate", dt);   //  dt.ToString(format)    Label149.Text  dt
            cmd.Parameters.AddWithValue("StdAdmissionID", Session["uid"].ToString());

            cmd.Parameters.AddWithValue("StdAnm", Label15.Text);
            cmd.Parameters.AddWithValue("StdACSemester", Label16.Text);



            cmd.Parameters.AddWithValue("StdASVICollege", TextBox36.Text);
            cmd.Parameters.AddWithValue("StdASVIUniversity", TextBox37.Text);
            cmd.Parameters.AddWithValue("StdASVICity", TextBox38.Text);
            cmd.Parameters.AddWithValue("StdASVIYearOfPassing", TextBox40.Text);
            cmd.Parameters.AddWithValue("StdASVIPerGPA", TextBox41.Text);




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
                        FileUpload4.SaveAs(Server.MapPath("Images/Student TC Applications/Semester 6 Marksheets//" + FileUpload4.FileName));

                        String filename = FileUpload4.FileName;
                        Label91.Visible = true;
                        Label91.ForeColor = System.Drawing.Color.Green;
                        Label91.Text = "<center>Your File Size is : " + FileUpload4.FileBytes.Length.ToString() + " KB</center>";
                        FileUpload4.Focus();

                        string filepath = "Images/Student TC Applications/Semester 6 Marksheets/" + filename;
                        cmd.Parameters.AddWithValue("StdASVIMarksheet", filename);
                    }
                }
            }
            else
            {
                Label90.Visible = true;
                Label90.ForeColor = System.Drawing.Color.Red;
                Label90.Text = "<center>Error : Please Select Any File...!</center>";
                FileUpload4.Focus();
                //cmd.Parameters.AddWithValue("StdASVIMarksheet", "");
            }





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
                        FileUpload5.SaveAs(Server.MapPath("Images/Student TC Applications/Degree Certificates//" + FileUpload5.FileName));

                        String filename = FileUpload5.FileName;
                        Label102.Visible = true;
                        Label102.ForeColor = System.Drawing.Color.Green;
                        Label102.Text = "<center>Your File Size is : " + FileUpload5.FileBytes.Length.ToString() + " KB</center>";
                        FileUpload5.Focus();

                        string filepath = "Images/Student TC Applications/Degree Certificates/" + filename;
                        cmd.Parameters.AddWithValue("StdASDegCrtfct", filename);
                    }
                }
            }
            else
            {
                Label101.Visible = true;
                Label101.ForeColor = System.Drawing.Color.Red;
                Label101.Text = "<center>Error : Please Select Any File...!</center>";
                FileUpload5.Focus();
                //cmd.Parameters.AddWithValue("StdASDegCrtfct", "");
            }



            cmd.ExecuteNonQuery();



            // Semester 6 Details
            TextBox36.Text = "";
            TextBox37.Text = "";
            TextBox38.Text = "";
            TextBox40.Text = "";
            TextBox41.Text = "";







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