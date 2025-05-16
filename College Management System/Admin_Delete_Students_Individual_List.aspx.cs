using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Net;
using System.Net.Mail;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_Delete_Students_Individual_List : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Conn"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        Label146.Visible = false;
        Label147.Visible = false;
        Label148.Visible = false;
        Label149.Visible = false;

        Label149.Text = DateTime.Today.ToString("yyyy/MM/dd");






        Panel3.Visible = true;

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




        con.Open();
        //Show Data
        SqlCommand cmd2 = new SqlCommand("select * from Student_Details where StdAdmissionID='" + Request.QueryString["StdAdmissionID"].ToString() + "' ", con);
        //cmd2.ExecuteNonQuery();
        SqlDataReader dr = cmd2.ExecuteReader();
        dr.Read();
        Image3.ImageUrl = "Images/Student Details/Passport Size Photos/" + dr["StdAPassSizePhoto"].ToString();
        TextBox74.Text = dr["StdAdmissionID"].ToString();
        TextBox75.Text = dr["StdAdmissionDate"].ToString();
        TextBox72.Text = dr["StdApplicationID"].ToString();
        TextBox73.Text = dr["StdApplicationDate"].ToString();
        TextBox76.Text = dr["StdASalutation"].ToString();
        TextBox1.Text = dr["StdAfname"].ToString();
        TextBox2.Text = dr["StdAmname"].ToString();
        TextBox3.Text = dr["StdAlname"].ToString();
        TextBox4.Text = dr["StdAbdate"].ToString();
        TextBox77.Text = dr["StdABldgroup"].ToString();
        TextBox5.Text = dr["StdAEmail"].ToString();
        TextBox7.Text = dr["StdAMNo"].ToString();
        TextBox78.Text = dr["StdAGen"].ToString();
        //if (dr["StdAGen"].ToString() == "Male")
        //{
        //    RadioButton1.Checked = true;

        //}
        //else if (dr["StdAGen"].ToString() == "Female")
        //{
        //    RadioButton2.Checked = true;

        //}
        //else if (dr["StdAGen"].ToString() == "Other")
        //{
        //    RadioButton3.Checked = true;

        //}

        //else
        //{
        //    //Response.Write("<script LANGUAGE='JavaScript' >alert('\tError: Please select Gender.....')</script>");
        //    //RadioButton1.Focus();
        //}

        TextBox79.Text = dr["StdAMaritalStatus"].ToString();

        //if (dr["StdAMaritalStatus"].ToString() == "Unmarried")
        //{
        //    RadioButton4.Checked = true;

        //}

        //else if (dr["StdAMaritalStatus"].ToString() == "Married")
        //{
        //    RadioButton5.Checked = true;

        //}


        //else
        //{
        //    //Response.Write("<script LANGUAGE='JavaScript' >alert('\tError: Please select Marital Status.....')</script>");
        //    //RadioButton4.Focus();
        //}



        TextBox8.Text = dr["StdAReligion"].ToString();

        TextBox80.Text = dr["StdACasteCat"].ToString();

        //if (dr["StdACasteCat"].ToString() == "General")
        //{
        //    RadioButton6.Checked = true;

        //}

        //else if (dr["StdACasteCat"].ToString() == "SC")
        //{
        //    RadioButton7.Checked = true;

        //}

        //else if (dr["StdACasteCat"].ToString() == "ST")
        //{
        //    RadioButton8.Checked = true;

        //}

        //else if (dr["StdACasteCat"].ToString() == "OBC")
        //{
        //    RadioButton9.Checked = true;

        //}

        //else if (dr["StdACasteCat"].ToString() == "Other")
        //{
        //    RadioButton10.Checked = true;

        //}


        //else
        //{
        //    //Response.Write("<script LANGUAGE='JavaScript' >alert('\tError: Please select Caste.....')</script>");
        //    //RadioButton6.Focus();
        //}

        TextBox9.Text = dr["StdAFatherSpouseName"].ToString();
        TextBox10.Text = dr["StdAFatherSpouseMNo"].ToString();
        TextBox11.Text = dr["StdAMotherName"].ToString();
        TextBox12.Text = dr["StdAMotherMNo"].ToString();
        TextBox13.Text = dr["StdAFatherSpouseOccupation"].ToString();
        TextBox14.Text = dr["StdAAnnualIncome"].ToString();

        TextBox15.Text = dr["StdAPresentAddr"].ToString();
        TextBox16.Text = dr["StdAPresentAddrCity"].ToString();
        TextBox17.Text = dr["StdAPresentAddrPinCode"].ToString();
        TextBox18.Text = dr["StdAPresentAddrState"].ToString();

        TextBox19.Text = dr["StdAPrmntAddr"].ToString();
        TextBox20.Text = dr["StdAPrmntAddrCity"].ToString();
        TextBox21.Text = dr["StdAPrmntAddrPinCode"].ToString();
        TextBox22.Text = dr["StdAPrmntAddrState"].ToString();


        TextBox81.Text = dr["StdACourse"].ToString();
        TextBox82.Text = dr["StdAMedOfInstrctn"].ToString();
        TextBox83.Text = dr["StdASemester"].ToString();


        if (TextBox83.Text == "Semester 1")
        {
            Panel3.Visible = true;     // std 10 12 
            //Panel3.Focus();          // std 10 12


        }
        else if (TextBox83.Text == "Semester 2")
        {
            Panel3.Visible = true;     // std 10 12
            Panel4.Visible = true;    // sem 1
            Panel14.Visible = true;    // sem 1 Marksheet
            //Panel3.Focus();          // std 10 12
        }
        else if (TextBox83.Text == "Semester 3")
        {
            Panel3.Visible = true;    // std 10 12
            Panel4.Visible = true;    // sem 1
            Panel14.Visible = true;    // sem 1 Marksheet
            Panel5.Visible = true;     // sem 2
            Panel15.Visible = true;    // sem 2 Marksheet
            // Panel3.Focus();           // std 10 12
        }
        else if (TextBox83.Text == "Semester 4")
        {
            Panel3.Visible = true;     // std 10 12
            Panel4.Visible = true;   // sem 1
            Panel14.Visible = true;    // sem 1 Marksheet
            Panel5.Visible = true;   // sem 2
            Panel15.Visible = true;    // sem 2 Marksheet
            Panel6.Visible = true;   // sem 3
            Panel16.Visible = true;    // sem 3 Marksheet
            // Panel3.Focus();          // std 10 12
        }
        else if (TextBox83.Text == "Semester 5")
        {
            Panel3.Visible = true;   // std 10 12
            Panel4.Visible = true;   // sem 1
            Panel14.Visible = true;    // sem 1 Marksheet
            Panel5.Visible = true;   // sem 2
            Panel15.Visible = true;    // sem 2 Marksheet
            Panel6.Visible = true;   // sem 3
            Panel16.Visible = true;    // sem 3 Marksheet
            Panel7.Visible = true;   // sem 4
            Panel17.Visible = true;    // sem 4 Marksheet
            // Panel3.Focus();          // std 10 12
        }
        else if (TextBox83.Text == "Semester 6")
        {
            Panel3.Visible = true;   // std 10 12
            Panel4.Visible = true;   // sem 1
            Panel14.Visible = true;    // sem 1 Marksheet
            Panel5.Visible = true;   // sem 2
            Panel15.Visible = true;    // sem 2 Marksheet
            Panel6.Visible = true;   // sem 3
            Panel16.Visible = true;    // sem 3 Marksheet
            Panel7.Visible = true;   // sem 4
            Panel17.Visible = true;    // sem 4 Marksheet
            Panel8.Visible = true;   // sem 5
            Panel18.Visible = true;    // sem 5 Marksheet
            // Panel3.Focus();          // std 10 12
        }

        else
        {
            //   Response.Write("<script LANGUAGE='JavaScript' >alert('\tError: Please Select Semester First...')</script>");

        }

        //Batch
        TextBox84.Text = dr["StdABatch"].ToString();


        // Class X
        TextBox23.Text = dr["StdAClsXSchool"].ToString();
        TextBox24.Text = dr["StdAClsXBoard"].ToString();
        TextBox25.Text = dr["StdAClsXCity"].ToString();
        TextBox26.Text = dr["StdAClsXMedOfInstrctn"].ToString();
        TextBox27.Text = dr["StdAClsXYearOfPassing"].ToString();
        TextBox28.Text = dr["StdAClsXPercentage"].ToString();

        // Class XII
        TextBox29.Text = dr["StdAClsXIISchool"].ToString();
        TextBox30.Text = dr["StdAClsXIIBoard"].ToString();
        TextBox31.Text = dr["StdAClsXIICity"].ToString();
        TextBox32.Text = dr["StdAClsXIIMedOfInstrctn"].ToString();
        TextBox33.Text = dr["StdAClsXIIYearOfPassing"].ToString();
        TextBox34.Text = dr["StdAClsXIIStreamDiscipline"].ToString();
        TextBox35.Text = dr["StdAClsXIIPercentage"].ToString();


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

        //Security Question
        TextBox70.Text = dr["StdASecQue"].ToString();

        //Security Answer
        TextBox71.Text = dr["StdASecAns"].ToString();

        // Passport Size Photo
        Image1.ImageUrl = "Images/Student Details/Passport Size Photos/" + dr["StdAPassSizePhoto"].ToString();

        // Signature
        Image2.ImageUrl = "Images/Student Details/Signatures/" + dr["StdASignature"].ToString();

        dr.Close();
        con.Close();
    }



    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList6_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button14_Click(object sender, EventArgs e)
    {
        con.Open();
        ////Show Data
        SqlCommand cmd = new SqlCommand("select * from Student_Details where StdAdmissionID='" + Request.QueryString["StdAdmissionID"].ToString() + "' ", con);
        ////cmd2.ExecuteNonQuery();
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();
        string filename = dr["StdAClsXMarksheet"].ToString();

        string filepath = Server.MapPath("Images/Student Details/Class X Marksheets/" + filename);
        Response.Clear();
        Response.ClearHeaders();
        Response.ClearContent();
        Response.AddHeader("Content-Disposition", "attachment; filename=" + filename);
        Response.Flush();
        Response.TransmitFile(filepath);
        Response.End();
        con.Close();
    }
    protected void Button15_Click(object sender, EventArgs e)
    {
        con.Open();
        ////Show Data
        SqlCommand cmd = new SqlCommand("select * from Student_Details where StdAdmissionID='" + Request.QueryString["StdAdmissionID"].ToString() + "' ", con);
        ////cmd2.ExecuteNonQuery();
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();
        string filename = dr["StdAClsXIIMarksheet"].ToString();

        string filepath = Server.MapPath("Images/Student Details/Class XII Marksheets/" + filename);
        Response.Clear();
        Response.ClearHeaders();
        Response.ClearContent();
        Response.AddHeader("Content-Disposition", "attachment; filename=" + filename);
        Response.Flush();
        Response.TransmitFile(filepath);
        Response.End();
        con.Close();
    }
    protected void Button16_Click(object sender, EventArgs e)
    {
        con.Open();
        ////Show Data
        SqlCommand cmd = new SqlCommand("select * from Student_Details where StdAdmissionID='" + Request.QueryString["StdAdmissionID"].ToString() + "' ", con);
        ////cmd2.ExecuteNonQuery();
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();
        string filename = dr["StdASIMarksheet"].ToString();

        string filepath = Server.MapPath("Images/Student Details/Semester 1 Marksheets/" + filename);
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
        SqlCommand cmd = new SqlCommand("select * from Student_Details where StdAdmissionID='" + Request.QueryString["StdAdmissionID"].ToString() + "' ", con);
        ////cmd2.ExecuteNonQuery();
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();
        string filename = dr["StdASIIMarksheet"].ToString();

        string filepath = Server.MapPath("Images/Student Details/Semester 2 Marksheets/" + filename);
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
        ////Show Data
        SqlCommand cmd = new SqlCommand("select * from Student_Details where StdAdmissionID='" + Request.QueryString["StdAdmissionID"].ToString() + "' ", con);
        ////cmd2.ExecuteNonQuery();
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();
        string filename = dr["StdASIIIMarksheet"].ToString();

        string filepath = Server.MapPath("Images/Student Details/Semester 3 Marksheets/" + filename);
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
        ////Show Data
        SqlCommand cmd = new SqlCommand("select * from Student_Details where StdAdmissionID='" + Request.QueryString["StdAdmissionID"].ToString() + "' ", con);
        ////cmd2.ExecuteNonQuery();
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();
        string filename = dr["StdASIVMarksheet"].ToString();

        string filepath = Server.MapPath("Images/Student Details/Semester 4 Marksheets/" + filename);
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
        ////Show Data
        SqlCommand cmd = new SqlCommand("select * from Student_Details where StdAdmissionID='" + Request.QueryString["StdAdmissionID"].ToString() + "' ", con);
        ////cmd2.ExecuteNonQuery();
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();
        string filename = dr["StdASVMarksheet"].ToString();

        string filepath = Server.MapPath("Images/Student Details/Semester 5 Marksheets/" + filename);
        Response.Clear();
        Response.ClearHeaders();
        Response.ClearContent();
        Response.AddHeader("Content-Disposition", "attachment; filename=" + filename);
        Response.Flush();
        Response.TransmitFile(filepath);
        Response.End();
        con.Close();
    }
    protected void Button21_Click(object sender, EventArgs e)
    {
        con.Open();
        ////Show Data
        SqlCommand cmd = new SqlCommand("select * from Student_Details where StdAdmissionID='" + Request.QueryString["StdAdmissionID"].ToString() + "' ", con);
        ////cmd2.ExecuteNonQuery();
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();
        string filename = dr["StdAPassSizePhoto"].ToString();

        string filepath = Server.MapPath("Images/Student Details/Passport Size Photos/" + filename);
        Response.Clear();
        Response.ClearHeaders();
        Response.ClearContent();
        Response.AddHeader("Content-Disposition", "attachment; filename=" + filename);
        Response.Flush();
        Response.TransmitFile(filepath);
        Response.End();
        con.Close();
    }
    protected void Button22_Click(object sender, EventArgs e)
    {
        con.Open();
        ////Show Data
        SqlCommand cmd = new SqlCommand("select * from Student_Details where StdAdmissionID='" + Request.QueryString["StdAdmissionID"].ToString() + "' ", con);
        ////cmd2.ExecuteNonQuery();
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();
        string filename = dr["StdASignature"].ToString();

        string filepath = Server.MapPath("Images/Student Details/Signatures/" + filename);
        Response.Clear();
        Response.ClearHeaders();
        Response.ClearContent();
        Response.AddHeader("Content-Disposition", "attachment; filename=" + filename);
        Response.Flush();
        Response.TransmitFile(filepath);
        Response.End();
        con.Close();
    }



    protected void Button23_Click(object sender, EventArgs e)
    {

        Response.Redirect("Admin_Delete_Students_Whole_List.aspx");
    }
    protected void Button12_Click(object sender, EventArgs e)
    {
        try
        {


            //SqlCommand cmd = new SqlCommand("insert into Student_Details (StdAdate,StdAPassSizePhoto,StdASalutation,StdAfname,StdAmname,StdAlname,StdAbdate,StdABldgroup,StdAEmail,StdAMNo,StdAGen,StdAMaritalStatus,StdAReligion,StdACasteCat,StdAFatherSpouseName,StdAFatherSpouseMNo,StfAMotherName,StfAMotherMNo,StdAFatherSpouseOccupation,StdAAnnualIncome,StdAPresentAddr,StdAPresentAddrCity,StdAPresentAddrPinCode,StdAPresentAddrState,StdAPrmntAddr,StdAPrmntAddrCity,StdAPrmntAddrPinCode,StdAPrmntAddrState,StdACourse,StdAMedOfInstrctn,StdASemester,StdAClsXSchool,StdAClsXBoard,StdAClsXCity,StdAClsXMedOfInstrctn,StdAClsXYearOfPassing,StdAClsXPercentage,StdAClsXMarksheet,StdAClsXIISchool,StdAClsXIIBoard,StdAClsXIICity,StdAClsXIIMedOfInstrctn,StdAClsXIIYearOfPassing,StdAClsXIIStreamDiscipline,StdAClsXIIPercentage,StdAClsXIIMarksheet,StdASICollege,StdASIUniversity,StdASICity,StdASIYearOfPassing,StdASIPerGPA,StdASIMarksheet,StdASIICollege,StdASIIUniversity,StdASIICity,StdASIIYearOfPassing,StdASIIPerGPA,StdASIIMarksheet,StdASIIICollege,StdASIIIUniversity,StdASIIICity,StdASIIIYearOfPassing,StdASIIIPerGPA,StdASIIIMarksheet,StdASIVCollege,StdASIVUniversity,StdASIVCity,StdASIVYearOfPassing,StdASIVPerGPA,StdASIVMarksheet,StdASVCollege,StdASVUniversity,StdASVCity,StdASVYearOfPassing,StdASVPerGPA,StdASVMarksheet,StdASignature,StdASecQue,StdASecAns) values (@StdAdate,@StdAPassSizePhoto,@StdASalutation,@StdAfname,@StdAmname,@StdAlname,@StdAbdate,@StdABldgroup,@StdAEmail,@StdAMNo,@StdAGen,@StdAMaritalStatus,@StdAReligion,@StdACasteCat,@StdAFatherSpouseName,@StdAFatherSpouseMNo,@StfAMotherName,@StfAMotherMNo,@StdAFatherSpouseOccupation,@StdAAnnualIncome,@StdAPresentAddr,@StdAPresentAddrCity,@StdAPresentAddrPinCode,@StdAPresentAddrState,@StdAPrmntAddr,@StdAPrmntAddrCity,@StdAPrmntAddrPinCode,@StdAPrmntAddrState,@StdACourse,@StdAMedOfInstrctn,@StdASemester,@StdAClsXSchool,@StdAClsXBoard,@StdAClsXCity,@StdAClsXMedOfInstrctn,@StdAClsXYearOfPassing,@StdAClsXPercentage,@StdAClsXMarksheet,@StdAClsXIISchool,@StdAClsXIIBoard,@StdAClsXIICity,@StdAClsXIIMedOfInstrctn,@StdAClsXIIYearOfPassing,@StdAClsXIIStreamDiscipline,@StdAClsXIIPercentage,@StdAClsXIIMarksheet,@StdASICollege,@StdASIUniversity,@StdASICity,@StdASIYearOfPassing,@StdASIPerGPA,@StdASIMarksheet,@StdASIICollege,@StdASIIUniversity,@StdASIICity,@StdASIIYearOfPassing,@StdASIIPerGPA,@StdASIIMarksheet,@StdASIIICollege,@StdASIIIUniversity,@StdASIIICity,@StdASIIIYearOfPassing,@StdASIIIPerGPA,@StdASIIIMarksheet,@StdASIVCollege,@StdASIVUniversity,@StdASIVCity,@StdASIVYearOfPassing,@StdASIVPerGPA,@StdASIVMarksheet,@StdASVCollege,@StdASVUniversity,@StdASVCity,@StdASVYearOfPassing,@StdASVPerGPA,@StdASVMarksheet,@StdASignature,@StdASecQue,@StdASecAns)", con);

            con.Open();





            SqlCommand cmd = new SqlCommand("Update Student_Details set StdAdmsnCnclnDate=@StdAdmsnCnclnDate,StdAdmsnCnclnReason=@StdAdmsnCnclnReason,StdAStatus=@StdAStatus where StdAdmissionID=@StdAdmissionID", con);

            //SqlCommand cmd = new SqlCommand("Update Student_Details set StdASalutation='" + DropDownList1.Text + "',StdAfname='" + +"',StdAmname='" + +"',StdAlname='" + +"',StdAbdate='" + +"',StdABldgroup='" + +"',StdAEmail='" + +"',StdAMNo='" + +"',StdAGen='" + +"',StdAMaritalStatus='" + +"',StdAReligion='" + +"',StdACasteCat='" + +"',StdAFatherSpouseName='" + +"',StdAFatherSpouseMNo='" + +"',StdAMotherName='" + +"',StdAMotherMNo='" + +"',StdAFatherSpouseOccupation='" + +"',StdAAnnualIncome=@StdAAnnualIncome,StdAPresentAddr=@StdAPresentAddr,StdAPresentAddrCity=@StdAPresentAddrCity,StdAPresentAddrPinCode=@StdAPresentAddrPinCode,StdAPresentAddrState=@StdAPresentAddrState,StdAPrmntAddr=@StdAPrmntAddr,StdAPrmntAddrCity=@StdAPrmntAddrCity,StdAPrmntAddrPinCode=@StdAPrmntAddrPinCode,StdAPrmntAddrState=@StdAPrmntAddrState,StdACourse=@StdACourse,StdAMedOfInstrctn=@StdAMedOfInstrctn,StdASemester=@StdASemester,StdABatch=@StdABatch,StdAClsXSchool=@StdAClsXSchool,StdAClsXBoard=@StdAClsXBoard,StdAClsXCity=@StdAClsXCity,StdAClsXMedOfInstrctn=@StdAClsXMedOfInstrctn,StdAClsXYearOfPassing=@StdAClsXYearOfPassing,StdAClsXPercentage=@StdAClsXPercentage,StdAClsXIISchool=@StdAClsXIISchool,StdAClsXIIBoard=@StdAClsXIIBoard,StdAClsXIICity=@StdAClsXIICity,StdAClsXIIMedOfInstrctn=@StdAClsXIIMedOfInstrctn,StdAClsXIIYearOfPassing=@StdAClsXIIYearOfPassing,StdAClsXIIStreamDiscipline=@StdAClsXIIStreamDiscipline,StdAClsXIIPercentage=@StdAClsXIIPercentage,StdASICollege=@StdASICollege,StdASIUniversity=@StdASIUniversity,StdASICity=@StdASICity,StdASIYearOfPassing=@StdASIYearOfPassing,StdASIPerGPA=@StdASIPerGPA,StdASIICollege=@StdASIICollege,StdASIIUniversity=@StdASIIUniversity,StdASIICity=@StdASIICity,StdASIIYearOfPassing=@StdASIIYearOfPassing,StdASIIPerGPA=@StdASIIPerGPA,StdASIIICollege=@StdASIIICollege,StdASIIIUniversity=@StdASIIIUniversity,StdASIIICity=@StdASIIICity,StdASIIIYearOfPassing=@StdASIIIYearOfPassing,StdASIIIPerGPA=@StdASIIIPerGPA,StdASIVCollege=@StdASIVCollege,StdASIVUniversity=@StdASIVUniversity,StdASIVCity=@StdASIVCity,StdASIVYearOfPassing=@StdASIVYearOfPassing,StdASIVPerGPA=@StdASIVPerGPA,StdASVCollege=@StdASVCollege,StdASVUniversity=@StdASVUniversity,StdASVCity=@StdASVCity,StdASVYearOfPassing=@StdASVYearOfPassing,StdASVPerGPA=@StdASVPerGPA,StdASecQue=@StdASecQue,StdASecAns=@StdASecAns where StdAdmissionID=@StdAdmissionID", con);   

            DateTime currentDate = DateTime.Now;
            string dt = currentDate.ToString("yyyy/MM/dd");

            cmd.Parameters.AddWithValue("@StdAdmsnCnclnDate", dt);

            cmd.Parameters.AddWithValue("@StdAdmsnCnclnReason", TextBox85.Text);

            cmd.Parameters.AddWithValue("@StdAStatus", "Removed");

            cmd.Parameters.AddWithValue("@StdAdmissionID", Request.QueryString["StdAdmissionID"].ToString());   //  TextBox74.Text

            cmd.ExecuteNonQuery();

            con.Close();



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
            Label154.Text = "<center>" + "Student Data Deleted Successfully....." + "<br/>" + "Thank You....." + "<br/>" + "Visit Again....." + "</center>";

            Response.Write("<script LANGUAGE='JavaScript' >alert('\\tStudent's Data Deleted Successfully.....\\n\\tThank You.....\\n\\tVisit Again.....')</script>");
            Label154.Focus();
            //Response.Redirect("Pre_Login_Home_Page.aspx");





        }
        catch (Exception ex)
        {
            Response.Write("<script LANGUAGE='JavaScript' >alert('\tError While Deleting Student Details..!" + ex.ToString() + "')</script>");
            Response.Write("Error While Deleting Student Details" + ex.ToString());

        }




    }
}