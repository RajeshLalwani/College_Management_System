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
public partial class Admin_Student_Admission_Application_Individual_List : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Conn"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        try
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


            //Panel9.Visible = false;
            Image2.Visible = false;


            Label154.Visible = false;
            //Panel11.Visible = false;



            con.Open();
            //Show Data
            SqlCommand cmd2 = new SqlCommand("select * from New_Student_Applications where StdAID='" + Request.QueryString["StdAID"].ToString() + "' ", con);
            //cmd2.ExecuteNonQuery();
            SqlDataReader dr = cmd2.ExecuteReader();
            dr.Read();
            Image3.ImageUrl = "Images/Student Admission Applications/Passport Size Photos/" + dr["StdAPassSizePhoto"].ToString();
            TextBox72.Text = dr["StdAID"].ToString();
            TextBox73.Text = dr["StdAdate"].ToString();
            DropDownList1.Text = dr["StdASalutation"].ToString();
            TextBox1.Text = dr["StdAfname"].ToString();
            TextBox2.Text = dr["StdAmname"].ToString();
            TextBox3.Text = dr["StdAlname"].ToString();
            TextBox4.Text = dr["StdAbdate"].ToString();
            DropDownList2.Text = dr["StdABldgroup"].ToString();
            TextBox5.Text = dr["StdAEmail"].ToString();
            TextBox7.Text = dr["StdAMNo"].ToString();

            if (dr["StdAGen"].ToString() == "Male")
            {
                RadioButton1.Checked = true;

            }
            else if (dr["StdAGen"].ToString() == "Female")
            {
                RadioButton2.Checked = true;

            }
            else if (dr["StdAGen"].ToString() == "Other")
            {
                RadioButton3.Checked = true;

            }

            else
            {
                //Response.Write("<script LANGUAGE='JavaScript' >alert('\tError: Please select Gender.....')</script>");
                //RadioButton1.Focus();
            }


            if (dr["StdAMaritalStatus"].ToString() == "Unmarried")
            {
                RadioButton4.Checked = true;

            }

            else if (dr["StdAMaritalStatus"].ToString() == "Married")
            {
                RadioButton5.Checked = true;

            }


            else
            {
                //Response.Write("<script LANGUAGE='JavaScript' >alert('\tError: Please select Marital Status.....')</script>");
                //RadioButton4.Focus();
            }



            TextBox8.Text = dr["StdAReligion"].ToString();

            if (dr["StdACasteCat"].ToString() == "General")
            {
                RadioButton6.Checked = true;

            }

            else if (dr["StdACasteCat"].ToString() == "SC")
            {
                RadioButton7.Checked = true;

            }

            else if (dr["StdACasteCat"].ToString() == "ST")
            {
                RadioButton8.Checked = true;

            }

            else if (dr["StdACasteCat"].ToString() == "OBC")
            {
                RadioButton9.Checked = true;

            }

            else if (dr["StdACasteCat"].ToString() == "Other")
            {
                RadioButton10.Checked = true;

            }


            else
            {
                //Response.Write("<script LANGUAGE='JavaScript' >alert('\tError: Please select Caste.....')</script>");
                //RadioButton6.Focus();
            }

            TextBox9.Text = dr["StdAFatherSpouseName"].ToString();
            TextBox10.Text = dr["StdAFatherSpouseMNo"].ToString();
            TextBox11.Text = dr["StfAMotherName"].ToString();
            TextBox12.Text = dr["StfAMotherMNo"].ToString();
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

            DropDownList3.Text = dr["StdACourse"].ToString();
            DropDownList4.Text = dr["StdAMedOfInstrctn"].ToString();
            DropDownList5.Text = dr["StdASemester"].ToString();

            if (DropDownList5.Text == "Semester 1")
            {
                Panel3.Visible = true;     // std 10 12 
                Panel3.Focus();          // std 10 12


            }
            else if (DropDownList5.Text == "Semester 2")
            {
                Panel3.Visible = true;     // std 10 12
                Panel4.Visible = true;    // sem 1
                Panel14.Visible = true;    // sem 1 Marksheet
                Panel3.Focus();          // std 10 12
            }
            else if (DropDownList5.Text == "Semester 3")
            {
                Panel3.Visible = true;    // std 10 12
                Panel4.Visible = true;    // sem 1
                Panel14.Visible = true;    // sem 1 Marksheet
                Panel5.Visible = true;     // sem 2
                Panel15.Visible = true;    // sem 2 Marksheet
                Panel3.Focus();           // std 10 12
            }
            else if (DropDownList5.Text == "Semester 4")
            {
                Panel3.Visible = true;     // std 10 12
                Panel4.Visible = true;   // sem 1
                Panel14.Visible = true;    // sem 1 Marksheet
                Panel5.Visible = true;   // sem 2
                Panel15.Visible = true;    // sem 2 Marksheet
                Panel6.Visible = true;   // sem 3
                Panel16.Visible = true;    // sem 3 Marksheet
                Panel3.Focus();          // std 10 12
            }
            else if (DropDownList5.Text == "Semester 5")
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
                Panel3.Focus();          // std 10 12
            }
            else if (DropDownList5.Text == "Semester 6")
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
                Panel3.Focus();          // std 10 12
            }

            else
            {
                //   Response.Write("<script LANGUAGE='JavaScript' >alert('\tError: Please Select Semester First...')</script>");

            }

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
            Image1.ImageUrl = "Images/Student Admission Applications/Passport Size Photos/" + dr["StdAPassSizePhoto"].ToString();

            // Signature
            Image2.ImageUrl = "Images/Student Admission Applications/Signatures/" + dr["StdASignature"].ToString();

            dr.Close();
            con.Close();

        }
        catch (Exception ex)
        {
            Response.Write("<script LANGUAGE='JavaScript' >alert('\tAn Error Occured While Displaying Student's Data..!''" + ex.ToString() + "')</script>");
            //Response.Write("You might not be able to view student's Passport size Image and Signture Image Because all the Data have been moved to Students' Details Database...! : " + ex.ToString());

        }
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
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button12_Click(object sender, EventArgs e)
    {
        try
        {


            //SqlCommand cmd = new SqlCommand("insert into Student_Details (StdAdate,StdAPassSizePhoto,StdASalutation,StdAfname,StdAmname,StdAlname,StdAbdate,StdABldgroup,StdAEmail,StdAMNo,StdAGen,StdAMaritalStatus,StdAReligion,StdACasteCat,StdAFatherSpouseName,StdAFatherSpouseMNo,StfAMotherName,StfAMotherMNo,StdAFatherSpouseOccupation,StdAAnnualIncome,StdAPresentAddr,StdAPresentAddrCity,StdAPresentAddrPinCode,StdAPresentAddrState,StdAPrmntAddr,StdAPrmntAddrCity,StdAPrmntAddrPinCode,StdAPrmntAddrState,StdACourse,StdAMedOfInstrctn,StdASemester,StdAClsXSchool,StdAClsXBoard,StdAClsXCity,StdAClsXMedOfInstrctn,StdAClsXYearOfPassing,StdAClsXPercentage,StdAClsXMarksheet,StdAClsXIISchool,StdAClsXIIBoard,StdAClsXIICity,StdAClsXIIMedOfInstrctn,StdAClsXIIYearOfPassing,StdAClsXIIStreamDiscipline,StdAClsXIIPercentage,StdAClsXIIMarksheet,StdASICollege,StdASIUniversity,StdASICity,StdASIYearOfPassing,StdASIPerGPA,StdASIMarksheet,StdASIICollege,StdASIIUniversity,StdASIICity,StdASIIYearOfPassing,StdASIIPerGPA,StdASIIMarksheet,StdASIIICollege,StdASIIIUniversity,StdASIIICity,StdASIIIYearOfPassing,StdASIIIPerGPA,StdASIIIMarksheet,StdASIVCollege,StdASIVUniversity,StdASIVCity,StdASIVYearOfPassing,StdASIVPerGPA,StdASIVMarksheet,StdASVCollege,StdASVUniversity,StdASVCity,StdASVYearOfPassing,StdASVPerGPA,StdASVMarksheet,StdASignature,StdASecQue,StdASecAns) values (@StdAdate,@StdAPassSizePhoto,@StdASalutation,@StdAfname,@StdAmname,@StdAlname,@StdAbdate,@StdABldgroup,@StdAEmail,@StdAMNo,@StdAGen,@StdAMaritalStatus,@StdAReligion,@StdACasteCat,@StdAFatherSpouseName,@StdAFatherSpouseMNo,@StfAMotherName,@StfAMotherMNo,@StdAFatherSpouseOccupation,@StdAAnnualIncome,@StdAPresentAddr,@StdAPresentAddrCity,@StdAPresentAddrPinCode,@StdAPresentAddrState,@StdAPrmntAddr,@StdAPrmntAddrCity,@StdAPrmntAddrPinCode,@StdAPrmntAddrState,@StdACourse,@StdAMedOfInstrctn,@StdASemester,@StdAClsXSchool,@StdAClsXBoard,@StdAClsXCity,@StdAClsXMedOfInstrctn,@StdAClsXYearOfPassing,@StdAClsXPercentage,@StdAClsXMarksheet,@StdAClsXIISchool,@StdAClsXIIBoard,@StdAClsXIICity,@StdAClsXIIMedOfInstrctn,@StdAClsXIIYearOfPassing,@StdAClsXIIStreamDiscipline,@StdAClsXIIPercentage,@StdAClsXIIMarksheet,@StdASICollege,@StdASIUniversity,@StdASICity,@StdASIYearOfPassing,@StdASIPerGPA,@StdASIMarksheet,@StdASIICollege,@StdASIIUniversity,@StdASIICity,@StdASIIYearOfPassing,@StdASIIPerGPA,@StdASIIMarksheet,@StdASIIICollege,@StdASIIIUniversity,@StdASIIICity,@StdASIIIYearOfPassing,@StdASIIIPerGPA,@StdASIIIMarksheet,@StdASIVCollege,@StdASIVUniversity,@StdASIVCity,@StdASIVYearOfPassing,@StdASIVPerGPA,@StdASIVMarksheet,@StdASVCollege,@StdASVUniversity,@StdASVCity,@StdASVYearOfPassing,@StdASVPerGPA,@StdASVMarksheet,@StdASignature,@StdASecQue,@StdASecAns)", con);

            con.Open();

            SqlCommand cmd = new SqlCommand("insert into Student_Details (StdAdmissionDate,StdAStatus,StdApplicationID,StdApplicationDate,StdAPassSizePhoto,StdASalutation,StdAfname,StdAmname,StdAlname,StdAbdate,StdABldgroup,StdAEmail,StdAMNo,StdAGen,StdAMaritalStatus,StdAReligion,StdACasteCat,StdAFatherSpouseName,StdAFatherSpouseMNo,StdAMotherName,StdAMotherMNo,StdAFatherSpouseOccupation,StdAAnnualIncome,StdAPresentAddr,StdAPresentAddrCity,StdAPresentAddrPinCode,StdAPresentAddrState,StdAPrmntAddr,StdAPrmntAddrCity,StdAPrmntAddrPinCode,StdAPrmntAddrState,StdACourse,StdAMedOfInstrctn,StdASemester,StdABatch,StdAClsXSchool,StdAClsXBoard,StdAClsXCity,StdAClsXMedOfInstrctn,StdAClsXYearOfPassing,StdAClsXPercentage,StdAClsXMarksheet,StdAClsXIISchool,StdAClsXIIBoard,StdAClsXIICity,StdAClsXIIMedOfInstrctn,StdAClsXIIYearOfPassing,StdAClsXIIStreamDiscipline,StdAClsXIIPercentage,StdAClsXIIMarksheet,StdASICollege,StdASIUniversity,StdASICity,StdASIYearOfPassing,StdASIPerGPA,StdASIMarksheet,StdASIICollege,StdASIIUniversity,StdASIICity,StdASIIYearOfPassing,StdASIIPerGPA,StdASIIMarksheet,StdASIIICollege,StdASIIIUniversity,StdASIIICity,StdASIIIYearOfPassing,StdASIIIPerGPA,StdASIIIMarksheet,StdASIVCollege,StdASIVUniversity,StdASIVCity,StdASIVYearOfPassing,StdASIVPerGPA,StdASIVMarksheet,StdASVCollege,StdASVUniversity,StdASVCity,StdASVYearOfPassing,StdASVPerGPA,StdASVMarksheet,StdASignature,StdASecQue,StdASecAns) values (@StdAdmissionDate,@StdAStatus,@StdApplicationID,@StdApplicationDate,@StdAPassSizePhoto,@StdASalutation,@StdAfname,@StdAmname,@StdAlname,@StdAbdate,@StdABldgroup,@StdAEmail,@StdAMNo,@StdAGen,@StdAMaritalStatus,@StdAReligion,@StdACasteCat,@StdAFatherSpouseName,@StdAFatherSpouseMNo,@StdAMotherName,@StdAMotherMNo,@StdAFatherSpouseOccupation,@StdAAnnualIncome,@StdAPresentAddr,@StdAPresentAddrCity,@StdAPresentAddrPinCode,@StdAPresentAddrState,@StdAPrmntAddr,@StdAPrmntAddrCity,@StdAPrmntAddrPinCode,@StdAPrmntAddrState,@StdACourse,@StdAMedOfInstrctn,@StdASemester,@StdABatch,@StdAClsXSchool,@StdAClsXBoard,@StdAClsXCity,@StdAClsXMedOfInstrctn,@StdAClsXYearOfPassing,@StdAClsXPercentage,@StdAClsXMarksheet,@StdAClsXIISchool,@StdAClsXIIBoard,@StdAClsXIICity,@StdAClsXIIMedOfInstrctn,@StdAClsXIIYearOfPassing,@StdAClsXIIStreamDiscipline,@StdAClsXIIPercentage,@StdAClsXIIMarksheet,@StdASICollege,@StdASIUniversity,@StdASICity,@StdASIYearOfPassing,@StdASIPerGPA,@StdASIMarksheet,@StdASIICollege,@StdASIIUniversity,@StdASIICity,@StdASIIYearOfPassing,@StdASIIPerGPA,@StdASIIMarksheet,@StdASIIICollege,@StdASIIIUniversity,@StdASIIICity,@StdASIIIYearOfPassing,@StdASIIIPerGPA,@StdASIIIMarksheet,@StdASIVCollege,@StdASIVUniversity,@StdASIVCity,@StdASIVYearOfPassing,@StdASIVPerGPA,@StdASIVMarksheet,@StdASVCollege,@StdASVUniversity,@StdASVCity,@StdASVYearOfPassing,@StdASVPerGPA,@StdASVMarksheet,@StdASignature,@StdASecQue,@StdASecAns)", con);   //(StdAdate,StdAPassSizePhoto,StdASalutation,StdAfname,StdAmname,StdAlname,StdAbdate,StdABldgroup,StdAEmail,StdAMNo,StdAGen,StdAMaritalStatus,StdAReligion,StdACasteCat,StdAFatherSpouseName,StdAFatherSpouseMNo,StfAMotherName,StfAMotherMNo,StdAFatherSpouseOccupation,StdAAnnualIncome,StdAPresentAddr,StdAPresentAddrCity,StdAPresentAddrPinCode,StdAPresentAddrState,StdAPrmntAddr,StdAPrmntAddrCity,StdAPrmntAddrPinCode,StdAPrmntAddrState,StdACourse,StdAMedOfInstrctn,StdASemester,StdAClsXSchool,StdAClsXBoard,StdAClsXCity,StdAClsXMedOfInstrctn,StdAClsXYearOfPassing,StdAClsXPercentage,StdAClsXMarksheet,StdAClsXIISchool,StdAClsXIIBoard,StdAClsXIICity,StdAClsXIIMedOfInstrctn,StdAClsXIIYearOfPassing,StdAClsXIIStreamDiscipline,StdAClsXIIPercentage,StdAClsXIIMarksheet,StdASICollege,StdASIUniversity,StdASICity,StdASIYearOfPassing,StdASIPerGPA,StdASIMarksheet,StdASIICollege,StdASIIUniversity,StdASIICity,StdASIIYearOfPassing,StdASIIPerGPA,StdASIIMarksheet,StdASIIICollege,StdASIIIUniversity,StdASIIICity,StdASIIIYearOfPassing,StdASIIIPerGPA,StdASIIIMarksheet,StdASIVCollege,StdASIVUniversity,StdASIVCity,StdASIVYearOfPassing,StdASIVPerGPA,StdASIVMarksheet,StdASVCollege,StdASVUniversity,StdASVCity,StdASVYearOfPassing,StdASVPerGPA,StdASVMarksheet,StdASignature,StdASecQue,StdASecAns)
            DateTime currentDate = DateTime.Now;
            string dt = currentDate.ToString("yyyy/MM/dd");

            cmd.Parameters.AddWithValue("StdAdmissionDate", Label149.Text);   //  dt.ToString(format)    Label149.Text  dt

            cmd.Parameters.AddWithValue("StdAStatus", "Studying");

            cmd.Parameters.AddWithValue("StdApplicationID", TextBox72.Text);
            cmd.Parameters.AddWithValue("StdApplicationDate", TextBox73.Text);


            cmd.Parameters.AddWithValue("StdASalutation", DropDownList1.Text);

            cmd.Parameters.AddWithValue("StdAfname", TextBox1.Text);
            cmd.Parameters.AddWithValue("StdAmname", TextBox2.Text);
            cmd.Parameters.AddWithValue("StdAlname", TextBox3.Text);
            cmd.Parameters.AddWithValue("StdAbdate", TextBox4.Text);  // Convert.ToDateTime(TextBox4.Text)   TextBox4.Text
            cmd.Parameters.AddWithValue("StdABldgroup", DropDownList2.Text);
            cmd.Parameters.AddWithValue("StdAEmail", TextBox5.Text);
            cmd.Parameters.AddWithValue("StdAMNo", TextBox7.Text);

            if (RadioButton1.Checked == true)
            {
                string gen = "Male";
                cmd.Parameters.AddWithValue("StdAGen", gen);
            }
            else if (RadioButton2.Checked == true)
            {
                string gen = "Female";
                cmd.Parameters.AddWithValue("StdAGen", gen);
            }
            else if (RadioButton3.Checked == true)
            {
                string gen = "Other";
                cmd.Parameters.AddWithValue("StdAGen", gen);
            }
            else
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('\tError: Please select Gender.....')</script>");
                RadioButton1.Focus();
            }

            //cmd.Parameters.AddWithValue("StdAGen", gen);

            if (RadioButton4.Checked == true)
            {
                string ms = "Unmarried";
                cmd.Parameters.AddWithValue("StdAMaritalStatus", ms);
            }

            else if (RadioButton5.Checked == true)
            {
                string ms = "Married";
                cmd.Parameters.AddWithValue("StdAMaritalStatus", ms);
            }

            else
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('\tError: Please select Marital Status.....')</script>");
                RadioButton4.Focus();
            }

            //cmd.Parameters.AddWithValue("StdAMaritalStatus", ms);

            cmd.Parameters.AddWithValue("StdAReligion", TextBox8.Text);


            if (RadioButton6.Checked == true)
            {
                string caste = "General";
                cmd.Parameters.AddWithValue("StdACasteCat", caste);
            }

            else if (RadioButton7.Checked == true)
            {
                string caste = "SC";
                cmd.Parameters.AddWithValue("StdACasteCat", caste);
            }

            else if (RadioButton8.Checked == true)
            {
                string caste = "ST";
                cmd.Parameters.AddWithValue("StdACasteCat", caste);
            }

            else if (RadioButton9.Checked == true)
            {
                string caste = "OBC";
                cmd.Parameters.AddWithValue("StdACasteCat", caste);
            }

            else if (RadioButton10.Checked == true)
            {
                string caste = "Other";
                cmd.Parameters.AddWithValue("StdACasteCat", caste);
            }

            else
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('\tError: Please select Caste.....')</script>");
                RadioButton6.Focus();
            }


            //cmd.Parameters.AddWithValue("StdACasteCat", );


            cmd.Parameters.AddWithValue("StdAFatherSpouseName", TextBox9.Text);
            cmd.Parameters.AddWithValue("StdAFatherSpouseMNo", TextBox10.Text);
            cmd.Parameters.AddWithValue("StdAMotherName", TextBox11.Text);
            cmd.Parameters.AddWithValue("StdAMotherMNo", TextBox12.Text);
            cmd.Parameters.AddWithValue("StdAFatherSpouseOccupation", TextBox13.Text);
            cmd.Parameters.AddWithValue("StdAAnnualIncome", TextBox14.Text);

            cmd.Parameters.AddWithValue("StdAPresentAddr", TextBox15.Text);
            cmd.Parameters.AddWithValue("StdAPresentAddrCity", TextBox16.Text);
            cmd.Parameters.AddWithValue("StdAPresentAddrPinCode", TextBox17.Text);
            cmd.Parameters.AddWithValue("StdAPresentAddrState", TextBox18.Text);

            cmd.Parameters.AddWithValue("StdAPrmntAddr", TextBox19.Text);
            cmd.Parameters.AddWithValue("StdAPrmntAddrCity", TextBox20.Text);
            cmd.Parameters.AddWithValue("StdAPrmntAddrPinCode", TextBox21.Text);
            cmd.Parameters.AddWithValue("StdAPrmntAddrState", TextBox22.Text);

            cmd.Parameters.AddWithValue("StdACourse", DropDownList3.Text);
            cmd.Parameters.AddWithValue("StdAMedOfInstrctn", DropDownList4.Text);
            cmd.Parameters.AddWithValue("StdASemester", DropDownList5.Text);
            cmd.Parameters.AddWithValue("StdABatch", DropDownList6.Text);

            cmd.Parameters.AddWithValue("StdAClsXSchool", TextBox23.Text);
            cmd.Parameters.AddWithValue("StdAClsXBoard", TextBox24.Text);
            cmd.Parameters.AddWithValue("StdAClsXCity", TextBox25.Text);
            cmd.Parameters.AddWithValue("StdAClsXMedOfInstrctn", TextBox26.Text);
            cmd.Parameters.AddWithValue("StdAClsXYearOfPassing", TextBox27.Text);
            cmd.Parameters.AddWithValue("StdAClsXPercentage", TextBox28.Text);







            cmd.Parameters.AddWithValue("StdAClsXIISchool", TextBox29.Text);
            cmd.Parameters.AddWithValue("StdAClsXIIBoard", TextBox30.Text);
            cmd.Parameters.AddWithValue("StdAClsXIICity", TextBox31.Text);
            cmd.Parameters.AddWithValue("StdAClsXIIMedOfInstrctn", TextBox32.Text);
            cmd.Parameters.AddWithValue("StdAClsXIIYearOfPassing", TextBox33.Text);
            cmd.Parameters.AddWithValue("StdAClsXIIStreamDiscipline", TextBox34.Text);
            cmd.Parameters.AddWithValue("StdAClsXIIPercentage", TextBox35.Text);






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




            cmd.Parameters.AddWithValue("StdASecQue", TextBox70.Text);
            cmd.Parameters.AddWithValue("StdASecAns", TextBox71.Text);



            // File Moving 

            //con.Open();


            SqlCommand cmd1 = new SqlCommand("select * from New_Student_Applications where StdAID=" + TextBox72.Text + " ", con);  //Request.QueryString["StdAID"].ToString()
            ////cmd2.ExecuteNonQuery();

            SqlDataReader dr1 = cmd1.ExecuteReader();
            dr1.Read();



            string psp = (TextBox72.Text + "_" + DropDownList1.Text + TextBox1.Text + "_" + TextBox3.Text + "_Passport_Size_Photo" + ".jpg").ToString();
            cmd.Parameters.AddWithValue("StdAPassSizePhoto", psp);







            if (DropDownList5.Text == "Semester 1")
            {


                // StdAClsXMarksheet                
                cmd.Parameters.AddWithValue("StdAClsXMarksheet", TextBox72.Text + "_" + DropDownList1.Text + TextBox1.Text + "_" + TextBox3.Text + "_Class_X_Marksheet" + ".pdf");


                // StdAClsXIIMarksheet                
                cmd.Parameters.AddWithValue("StdAClsXIIMarksheet", TextBox72.Text + "_" + DropDownList1.Text + TextBox1.Text + "_" + TextBox3.Text + "_Class_XII_Marksheet" + ".pdf");



                cmd.Parameters.AddWithValue("StdASIMarksheet", "");
                cmd.Parameters.AddWithValue("StdASIIMarksheet", "");
                cmd.Parameters.AddWithValue("StdASIIIMarksheet", "");
                cmd.Parameters.AddWithValue("StdASIVMarksheet", "");
                cmd.Parameters.AddWithValue("StdASVMarksheet", "");

            }


            else if (DropDownList5.Text == "Semester 2")
            {

                // StdAClsXMarksheet                
                cmd.Parameters.AddWithValue("StdAClsXMarksheet", TextBox72.Text + "_" + DropDownList1.Text + TextBox1.Text + "_" + TextBox3.Text + "_Class_X_Marksheet" + ".pdf");


                // StdAClsXIIMarksheet                
                cmd.Parameters.AddWithValue("StdAClsXIIMarksheet", TextBox72.Text + "_" + DropDownList1.Text + TextBox1.Text + "_" + TextBox3.Text + "_Class_XII_Marksheet" + ".pdf");


                // StdASIMarksheet
                cmd.Parameters.AddWithValue("StdASIMarksheet", TextBox72.Text + "_" + DropDownList1.Text + TextBox1.Text + "_" + TextBox3.Text + "_Semester_I_Marksheet" + ".pdf");


                cmd.Parameters.AddWithValue("StdASIIMarksheet", "");
                cmd.Parameters.AddWithValue("StdASIIIMarksheet", "");
                cmd.Parameters.AddWithValue("StdASIVMarksheet", "");
                cmd.Parameters.AddWithValue("StdASVMarksheet", "");
            }



            else if (DropDownList5.Text == "Semester 3")
            {


                // StdAClsXMarksheet                
                cmd.Parameters.AddWithValue("StdAClsXMarksheet", TextBox72.Text + "_" + DropDownList1.Text + TextBox1.Text + "_" + TextBox3.Text + "_Class_X_Marksheet" + ".pdf");


                // StdAClsXIIMarksheet                
                cmd.Parameters.AddWithValue("StdAClsXIIMarksheet", TextBox72.Text + "_" + DropDownList1.Text + TextBox1.Text + "_" + TextBox3.Text + "_Class_XII_Marksheet" + ".pdf");


                // StdASIMarksheet
                cmd.Parameters.AddWithValue("StdASIMarksheet", TextBox72.Text + "_" + DropDownList1.Text + TextBox1.Text + "_" + TextBox3.Text + "_Semester_I_Marksheet" + ".pdf");


                // StdASIIMarksheet
                cmd.Parameters.AddWithValue("StdASIIMarksheet", TextBox72.Text + "_" + DropDownList1.Text + TextBox1.Text + "_" + TextBox3.Text + "_Semester_II_Marksheet" + ".pdf");



                cmd.Parameters.AddWithValue("StdASIIIMarksheet", "");
                cmd.Parameters.AddWithValue("StdASIVMarksheet", "");
                cmd.Parameters.AddWithValue("StdASVMarksheet", "");
            }

            else if (DropDownList5.Text == "Semester 4")
            {



                // StdAClsXMarksheet                
                cmd.Parameters.AddWithValue("StdAClsXMarksheet", TextBox72.Text + "_" + DropDownList1.Text + TextBox1.Text + "_" + TextBox3.Text + "_Class_X_Marksheet" + ".pdf");


                // StdAClsXIIMarksheet                
                cmd.Parameters.AddWithValue("StdAClsXIIMarksheet", TextBox72.Text + "_" + DropDownList1.Text + TextBox1.Text + "_" + TextBox3.Text + "_Class_XII_Marksheet" + ".pdf");


                // StdASIMarksheet
                cmd.Parameters.AddWithValue("StdASIMarksheet", TextBox72.Text + "_" + DropDownList1.Text + TextBox1.Text + "_" + TextBox3.Text + "_Semester_I_Marksheet" + ".pdf");


                // StdASIIMarksheet
                cmd.Parameters.AddWithValue("StdASIIMarksheet", TextBox72.Text + "_" + DropDownList1.Text + TextBox1.Text + "_" + TextBox3.Text + "_Semester_II_Marksheet" + ".pdf");


                // StdASIIIMarksheet
                cmd.Parameters.AddWithValue("StdASIIIMarksheet", TextBox72.Text + "_" + DropDownList1.Text + TextBox1.Text + "_" + TextBox3.Text + "_Semester_III_Marksheet" + ".pdf");



                cmd.Parameters.AddWithValue("StdASIVMarksheet", "");
                cmd.Parameters.AddWithValue("StdASVMarksheet", "");
            }

            else if (DropDownList5.Text == "Semester 5")
            {

                // StdAClsXMarksheet                
                cmd.Parameters.AddWithValue("StdAClsXMarksheet", TextBox72.Text + "_" + DropDownList1.Text + TextBox1.Text + "_" + TextBox3.Text + "_Class_X_Marksheet" + ".pdf");


                // StdAClsXIIMarksheet                
                cmd.Parameters.AddWithValue("StdAClsXIIMarksheet", TextBox72.Text + "_" + DropDownList1.Text + TextBox1.Text + "_" + TextBox3.Text + "_Class_XII_Marksheet" + ".pdf");




                // StdASIMarksheet
                cmd.Parameters.AddWithValue("StdASIMarksheet", TextBox72.Text + "_" + DropDownList1.Text + TextBox1.Text + "_" + TextBox3.Text + "_Semester_I_Marksheet" + ".pdf");


                // StdASIIMarksheet
                cmd.Parameters.AddWithValue("StdASIIMarksheet", TextBox72.Text + "_" + DropDownList1.Text + TextBox1.Text + "_" + TextBox3.Text + "_Semester_II_Marksheet" + ".pdf");


                // StdASIIIMarksheet
                cmd.Parameters.AddWithValue("StdASIIIMarksheet", TextBox72.Text + "_" + DropDownList1.Text + TextBox1.Text + "_" + TextBox3.Text + "_Semester_III_Marksheet" + ".pdf");


                // StdASIVMarksheet
                cmd.Parameters.AddWithValue("StdASIVMarksheet", TextBox72.Text + "_" + DropDownList1.Text + TextBox1.Text + "_" + TextBox3.Text + "_Semester_IV_Marksheet" + ".pdf");



                cmd.Parameters.AddWithValue("StdASVMarksheet", "");
            }


            else if (DropDownList5.Text == "Semester 6")
            {

                // StdAClsXMarksheet                
                cmd.Parameters.AddWithValue("StdAClsXMarksheet", TextBox72.Text + "_" + DropDownList1.Text + TextBox1.Text + "_" + TextBox3.Text + "_Class_X_Marksheet" + ".pdf");


                // StdAClsXIIMarksheet                
                cmd.Parameters.AddWithValue("StdAClsXIIMarksheet", TextBox72.Text + "_" + DropDownList1.Text + TextBox1.Text + "_" + TextBox3.Text + "_Class_XII_Marksheet" + ".pdf");




                // StdASIMarksheet
                cmd.Parameters.AddWithValue("StdASIMarksheet", TextBox72.Text + "_" + DropDownList1.Text + TextBox1.Text + "_" + TextBox3.Text + "_Semester_I_Marksheet" + ".pdf");


                // StdASIIMarksheet
                cmd.Parameters.AddWithValue("StdASIIMarksheet", TextBox72.Text + "_" + DropDownList1.Text + TextBox1.Text + "_" + TextBox3.Text + "_Semester_II_Marksheet" + ".pdf");


                // StdASIIIMarksheet
                cmd.Parameters.AddWithValue("StdASIIIMarksheet", TextBox72.Text + "_" + DropDownList1.Text + TextBox1.Text + "_" + TextBox3.Text + "_Semester_III_Marksheet" + ".pdf");


                // StdASIVMarksheet
                cmd.Parameters.AddWithValue("StdASIVMarksheet", TextBox72.Text + "_" + DropDownList1.Text + TextBox1.Text + "_" + TextBox3.Text + "_Semester_IV_Marksheet" + ".pdf");


                // StdASIVMarksheet
                cmd.Parameters.AddWithValue("StdASVMarksheet", TextBox72.Text + "_" + DropDownList1.Text + TextBox1.Text + "_" + TextBox3.Text + "_Semester_V_Marksheet" + ".pdf");


            }



            // Signature
            cmd.Parameters.AddWithValue("StdASignature", TextBox72.Text + "_" + DropDownList1.Text + TextBox1.Text + "_" + TextBox3.Text + "_Signature" + ".jpg");

            //con.Close();






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


        // Assigning User ID and PAssword to the Student

        try
        {
            con.Open();

            SqlCommand cmdssd = new SqlCommand("select * from Student_Details where StdApplicationID='" + TextBox72.Text + "' ", con);

            SqlDataReader drssd = cmdssd.ExecuteReader();
            drssd.Read();
            int uid = Convert.ToInt32(drssd["StdAdmissionID"]);
            String pass = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
            Random r = new Random();
            char[] mypass = new char[8];
            for (int i = 0; i < 8; i++)
            {
                mypass[i] = pass[(int)(62 * r.NextDouble())];
            }

            string upass = new string(mypass);
            //Image3.ImageUrl = "Images/Student Admission Applications/Passport Size Photos/" + dr["StdAPassSizePhoto"].ToString();
            //  TextBox72.Text = dr["StdAID"].ToString();

            SqlCommand cmdlogin = new SqlCommand("insert into Student_Login (LoginID,LoginPassword) values (@LoginID,@LoginPassword) ", con);
            cmdlogin.Parameters.AddWithValue("LoginID", Convert.ToInt32(uid));
            cmdlogin.Parameters.AddWithValue("LoginPassword", upass);

            drssd.Close();
            cmdlogin.ExecuteNonQuery();

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
            Response.Write("Error Occured While Assigning ID PAssword to the Student..." + ex.ToString());
            Response.Write("<script LANGUAGE='JavaScript' >alert('\tError Occured While Assigning ID, Password to the Student...''" + ex.ToString() + "')</script>");


        }


        // Sending Admission Confirmation and User ID and PAssword AS E-Mail to the Student

        try
        {
            con.Open();

            SqlCommand cmdssd = new SqlCommand("select * from Student_Details where StdApplicationID='" + TextBox72.Text + "' ", con);

            SqlDataReader drssd = cmdssd.ExecuteReader();
            drssd.Read();
            int chkuid = Convert.ToInt32(drssd["StdAdmissionID"]);

            string UserName = DropDownList1.Text + TextBox1.Text + " " + TextBox2.Text + " " + TextBox3.Text;
            string UserEmail = drssd["StdAEmail"].ToString();

            drssd.Close();
            SqlCommand cmdsendsd = new SqlCommand("select * from Student_Login where LoginID='" + chkuid + "' ", con);

            SqlDataReader drsendsd = cmdsendsd.ExecuteReader();
            drsendsd.Read();
            int uid = Convert.ToInt32(drsendsd["LoginID"]);
            string upass = drsendsd["LoginPassword"].ToString();



            try
            {
                SendEmail(UserName, UserEmail, uid, upass);
            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('Error: An Error Occured While Sending Admission Confirmation E-mail to the Student...')</script>");
                Response.Write("Error: An Error Occured While Sending Admission Confirmation E-mail to the Student...\n Error : " + ex.ToString());
            }

            con.Close();

        }
        catch (Exception ex)
        {
            Response.Write("Error Occured While Sending ID & PAssword to the Student..." + ex.ToString());
            Response.Write("<script LANGUAGE='JavaScript' >alert('\tError Occured While Sending ID & PAssword to the Student...''" + ex.ToString() + "')</script>");


        }




        try
        {
            con.Open();
            //Show Data
            SqlCommand cmddispimg = new SqlCommand("select * from Student_Details where StdApplicationID='" + Request.QueryString["StdAID"].ToString() + "' ", con);
            //cmd2.ExecuteNonQuery();
            SqlDataReader dr = cmddispimg.ExecuteReader();
            dr.Read();
            Image1.ImageUrl = "Images/Student Details/Passport Size Photos/" + dr["StdAPassSizePhoto"].ToString();
            Image2.ImageUrl = "Images/Student Details/Signatures/" + dr["StdASignature"].ToString();
            Image3.ImageUrl = "Images/Student Details/Passport Size Photos/" + dr["StdAPassSizePhoto"].ToString();

            dr.Close();
            con.Close();
        }
        catch (Exception ex)
        {

            Response.Write("<script>alert('Error: An Error Occured While Displaying Images of the Student...')</script>");
            Response.Write("Error: An Error Occured While Displaying Images of the Student...\n Error : " + ex.ToString());
        }


    }



    private static void SendEmail(string UserName, string UserEmail, int uid, string upass)
    {
        // try
        //{



        string unm = UserName;

        string to = String.Format(UserEmail);

        string userid = Convert.ToString(uid);

        string userpassword = upass;

        MailMessage mailMessage = new MailMessage("anandcommercecollegebca@gmail.com", to);  //   userEmail

        mailMessage.Body = "Dear " + unm + ",<br/><br/>Congratulations You have been Admitted to Anand Commerce College, Anand- BCA Department. <br/><br/>Your User ID and Password for College Website Login are : <br/><br/> USER ID : " + userid.ToString() + "<br/><br/> PASSWORD : " + userpassword.ToString() + "<br/><br/> Thanks & Regards,<br/><br/> Anand Commerce College, Anand.";

        mailMessage.IsBodyHtml = true;

        mailMessage.Subject = "Admission Confirmation E-mail, Anand Commerce College, BCA";



        SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);

        smtpClient.Credentials = new System.Net.NetworkCredential()
        {
            UserName = "anandcommercecollegebca@gmail.com",
            Password = "ixrf alfd ycpm hsoc"     //"AnandCommerceCollegeBca143"
        };

        smtpClient.EnableSsl = true;

        smtpClient.Send(mailMessage);

        //}
        // catch (Exception ex)
        // {
        //     // Error occurred while sending email
        //     //Label27.Visible = true;
        //     //Label27.ForeColor = System.Drawing.Color.Red;
        //     //Label27.Text = "Error: " + ex.ToString();
        //     //Response.Write("<script>alert('Pls Enter Valid Email')</script>");
        //     //Response.Write("Error" + ex.ToString());
        // }


    }


    protected void Button13_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admin_Student_Admission_Application_Whole_List.aspx");
    }
    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button14_Click(object sender, EventArgs e)
    {
        con.Open();
        ////Show Data
        SqlCommand cmd = new SqlCommand("select * from New_Student_Applications where StdAID='" + Request.QueryString["StdAID"].ToString() + "' ", con);
        ////cmd2.ExecuteNonQuery();
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();
        string filename = dr["StdAClsXMarksheet"].ToString();

        string filepath = Server.MapPath("Images/Student Admission Applications/Class X Marksheets/" + filename);
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
        SqlCommand cmd = new SqlCommand("select * from New_Student_Applications where StdAID='" + Request.QueryString["StdAID"].ToString() + "' ", con);
        ////cmd2.ExecuteNonQuery();
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();
        string filename = dr["StdAClsXIIMarksheet"].ToString();

        string filepath = Server.MapPath("Images/Student Admission Applications/Class XII Marksheets/" + filename);
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
        SqlCommand cmd = new SqlCommand("select * from New_Student_Applications where StdAID='" + Request.QueryString["StdAID"].ToString() + "' ", con);
        ////cmd2.ExecuteNonQuery();
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();
        string filename = dr["StdASIMarksheet"].ToString();

        string filepath = Server.MapPath("Images/Student Admission Applications/Semester 1 Marksheets/" + filename);
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
        SqlCommand cmd = new SqlCommand("select * from New_Student_Applications where StdAID='" + Request.QueryString["StdAID"].ToString() + "' ", con);
        ////cmd2.ExecuteNonQuery();
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();
        string filename = dr["StdASIIMarksheet"].ToString();

        string filepath = Server.MapPath("Images/Student Admission Applications/Semester 2 Marksheets/" + filename);
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
        SqlCommand cmd = new SqlCommand("select * from New_Student_Applications where StdAID='" + Request.QueryString["StdAID"].ToString() + "' ", con);
        ////cmd2.ExecuteNonQuery();
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();
        string filename = dr["StdASIIIMarksheet"].ToString();

        string filepath = Server.MapPath("Images/Student Admission Applications/Semester 3 Marksheets/" + filename);
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
        SqlCommand cmd = new SqlCommand("select * from New_Student_Applications where StdAID='" + Request.QueryString["StdAID"].ToString() + "' ", con);
        ////cmd2.ExecuteNonQuery();
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();
        string filename = dr["StdASIVMarksheet"].ToString();

        string filepath = Server.MapPath("Images/Student Admission Applications/Semester 4 Marksheets/" + filename);
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
        SqlCommand cmd = new SqlCommand("select * from New_Student_Applications where StdAID='" + Request.QueryString["StdAID"].ToString() + "' ", con);
        ////cmd2.ExecuteNonQuery();
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();
        string filename = dr["StdASVMarksheet"].ToString();

        string filepath = Server.MapPath("Images/Student Admission Applications/Semester 5 Marksheets/" + filename);
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
        SqlCommand cmd = new SqlCommand("select * from New_Student_Applications where StdAID='" + Request.QueryString["StdAID"].ToString() + "' ", con);
        ////cmd2.ExecuteNonQuery();
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();
        string filename = dr["StdAPassSizePhoto"].ToString();

        string filepath = Server.MapPath("Images/Student Admission Applications/Passport Size Photos/" + filename);
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
        SqlCommand cmd = new SqlCommand("select * from New_Student_Applications where StdAID='" + Request.QueryString["StdAID"].ToString() + "' ", con);
        ////cmd2.ExecuteNonQuery();
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();
        string filename = dr["StdASignature"].ToString();

        string filepath = Server.MapPath("Images/Student Admission Applications/Signatures/" + filename);
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
        con.Open();
        try
        {

            SqlCommand cmddf = new SqlCommand("select * from New_Student_Applications where StdAID=" + TextBox72.Text + " ", con);  //Request.QueryString["StdAID"].ToString()
            ////cmd2.ExecuteNonQuery();

            SqlDataReader drdf = cmddf.ExecuteReader();
            drdf.Read();



            // StdAPassSizePhoto  File Deletion
            DirectoryInfo sourceStdAPassSizePhoto = new DirectoryInfo(MapPath("~/Images/Student Admission Applications/Passport Size Photos/"));
            File.Delete(sourceStdAPassSizePhoto + drdf["StdAPassSizePhoto"].ToString());

            if (DropDownList5.Text == "Semester 1")
            {
                // Class X Marksheet  File Deletion
                DirectoryInfo sourceStdAClsXMarksheet = new DirectoryInfo(MapPath("~/Images/Student Admission Applications/Class X Marksheets/"));
                File.Delete(sourceStdAClsXMarksheet + drdf["StdAClsXMarksheet"].ToString());

                // Class XII Marksheet  File Deletion
                DirectoryInfo sourceStdAClsXIIMarksheet = new DirectoryInfo(MapPath("~/Images/Student Admission Applications/Class XII Marksheets/"));
                File.Delete(sourceStdAClsXIIMarksheet + drdf["StdAClsXIIMarksheet"].ToString());

            }


            else if (DropDownList5.Text == "Semester 2")
            {
                // Class X Marksheet  File Deletion
                DirectoryInfo sourceStdAClsXMarksheet = new DirectoryInfo(MapPath("~/Images/Student Admission Applications/Class X Marksheets/"));
                File.Delete(sourceStdAClsXMarksheet + drdf["StdAClsXMarksheet"].ToString());

                // Class XII Marksheet  File Deletion
                DirectoryInfo sourceStdAClsXIIMarksheet = new DirectoryInfo(MapPath("~/Images/Student Admission Applications/Class XII Marksheets/"));
                File.Delete(sourceStdAClsXIIMarksheet + drdf["StdAClsXIIMarksheet"].ToString());

                // Semester 1 Marksheet  File Deletion
                DirectoryInfo sourceStdASIMarksheet = new DirectoryInfo(MapPath("~/Images/Student Admission Applications/Semester 1 Marksheets/"));
                File.Delete(sourceStdASIMarksheet + drdf["StdASIMarksheet"].ToString());
            }



            else if (DropDownList5.Text == "Semester 3")
            {
                // Class X Marksheet  File Deletion
                DirectoryInfo sourceStdAClsXMarksheet = new DirectoryInfo(MapPath("~/Images/Student Admission Applications/Class X Marksheets/"));
                File.Delete(sourceStdAClsXMarksheet + drdf["StdAClsXMarksheet"].ToString());

                // Class XII Marksheet  File Deletion
                DirectoryInfo sourceStdAClsXIIMarksheet = new DirectoryInfo(MapPath("~/Images/Student Admission Applications/Class XII Marksheets/"));
                File.Delete(sourceStdAClsXIIMarksheet + drdf["StdAClsXIIMarksheet"].ToString());

                // Semester 1 Marksheet  File Deletion
                DirectoryInfo sourceStdASIMarksheet = new DirectoryInfo(MapPath("~/Images/Student Admission Applications/Semester 1 Marksheets/"));
                File.Delete(sourceStdASIMarksheet + drdf["StdASIMarksheet"].ToString());

                // Semester 2 Marksheet  File Deletion
                DirectoryInfo sourceStdASIIMarksheet = new DirectoryInfo(MapPath("~/Images/Student Admission Applications/Semester 2 Marksheets/"));
                File.Delete(sourceStdASIIMarksheet + drdf["StdASIIMarksheet"].ToString());
            }

            else if (DropDownList5.Text == "Semester 4")
            {
                // Class X Marksheet  File Deletion
                DirectoryInfo sourceStdAClsXMarksheet = new DirectoryInfo(MapPath("~/Images/Student Admission Applications/Class X Marksheets/"));
                File.Delete(sourceStdAClsXMarksheet + drdf["StdAClsXMarksheet"].ToString());

                // Class XII Marksheet  File Deletion
                DirectoryInfo sourceStdAClsXIIMarksheet = new DirectoryInfo(MapPath("~/Images/Student Admission Applications/Class XII Marksheets/"));
                File.Delete(sourceStdAClsXIIMarksheet + drdf["StdAClsXIIMarksheet"].ToString());

                // Semester 1 Marksheet  File Deletion
                DirectoryInfo sourceStdASIMarksheet = new DirectoryInfo(MapPath("~/Images/Student Admission Applications/Semester 1 Marksheets/"));
                File.Delete(sourceStdASIMarksheet + drdf["StdASIMarksheet"].ToString());

                // Semester 2 Marksheet  File Deletion
                DirectoryInfo sourceStdASIIMarksheet = new DirectoryInfo(MapPath("~/Images/Student Admission Applications/Semester 2 Marksheets/"));
                File.Delete(sourceStdASIIMarksheet + drdf["StdASIIMarksheet"].ToString());

                // Semester 3 Marksheet  File Deletion
                DirectoryInfo sourceStdASIIIMarksheet = new DirectoryInfo(MapPath("~/Images/Student Admission Applications/Semester 3 Marksheets/"));
                File.Delete(sourceStdASIIIMarksheet + drdf["StdASIIIMarksheet"].ToString());
            }

            else if (DropDownList5.Text == "Semester 5")
            {
                // Class X Marksheet  File Deletion
                DirectoryInfo sourceStdAClsXMarksheet = new DirectoryInfo(MapPath("~/Images/Student Admission Applications/Class X Marksheets/"));
                File.Delete(sourceStdAClsXMarksheet + drdf["StdAClsXMarksheet"].ToString());

                // Class XII Marksheet  File Deletion
                DirectoryInfo sourceStdAClsXIIMarksheet = new DirectoryInfo(MapPath("~/Images/Student Admission Applications/Class XII Marksheets/"));
                File.Delete(sourceStdAClsXIIMarksheet + drdf["StdAClsXIIMarksheet"].ToString());

                // Semester 1 Marksheet  File Deletion
                DirectoryInfo sourceStdASIMarksheet = new DirectoryInfo(MapPath("~/Images/Student Admission Applications/Semester 1 Marksheets/"));
                File.Delete(sourceStdASIMarksheet + drdf["StdASIMarksheet"].ToString());

                // Semester 2 Marksheet  File Deletion
                DirectoryInfo sourceStdASIIMarksheet = new DirectoryInfo(MapPath("~/Images/Student Admission Applications/Semester 2 Marksheets/"));
                File.Delete(sourceStdASIIMarksheet + drdf["StdASIIMarksheet"].ToString());

                // Semester 3 Marksheet  File Deletion
                DirectoryInfo sourceStdASIIIMarksheet = new DirectoryInfo(MapPath("~/Images/Student Admission Applications/Semester 3 Marksheets/"));
                File.Delete(sourceStdASIIIMarksheet + drdf["StdASIIIMarksheet"].ToString());

                // Semester 4 Marksheet  File Deletion
                DirectoryInfo sourceStdASignature = new DirectoryInfo(MapPath("~/Images/Student Admission Applications/Semester 4 Marksheets/"));
                File.Delete(sourceStdASignature + drdf["StdASIVMarksheet"].ToString());
            }


            else if (DropDownList5.Text == "Semester 6")
            {
                // Class X Marksheet  File Deletion
                DirectoryInfo sourceStdAClsXMarksheet = new DirectoryInfo(MapPath("~/Images/Student Admission Applications/Class X Marksheets/"));
                File.Delete(sourceStdAClsXMarksheet + drdf["StdAClsXMarksheet"].ToString());

                // Class XII Marksheet  File Deletion
                DirectoryInfo sourceStdAClsXIIMarksheet = new DirectoryInfo(MapPath("~/Images/Student Admission Applications/Class XII Marksheets/"));
                File.Delete(sourceStdAClsXIIMarksheet + drdf["StdAClsXIIMarksheet"].ToString());

                // Semester 1 Marksheet  File Deletion
                DirectoryInfo sourceStdASIMarksheet = new DirectoryInfo(MapPath("~/Images/Student Admission Applications/Semester 1 Marksheets/"));
                File.Delete(sourceStdASIMarksheet + drdf["StdASIMarksheet"].ToString());

                // Semester 2 Marksheet  File Deletion
                DirectoryInfo sourceStdASIIMarksheet = new DirectoryInfo(MapPath("~/Images/Student Admission Applications/Semester 2 Marksheets/"));
                File.Delete(sourceStdASIIMarksheet + drdf["StdASIIMarksheet"].ToString());

                // Semester 3 Marksheet  File Deletion
                DirectoryInfo sourceStdASIIIMarksheet = new DirectoryInfo(MapPath("~/Images/Student Admission Applications/Semester 3 Marksheets/"));
                File.Delete(sourceStdASIIIMarksheet + drdf["StdASIIIMarksheet"].ToString());

                // Semester 4 Marksheet  File Deletion
                DirectoryInfo sourceStdASignature = new DirectoryInfo(MapPath("~/Images/Student Admission Applications/Semester 4 Marksheets/"));
                File.Delete(sourceStdASignature + drdf["StdASIVMarksheet"].ToString());

                // Semester 5 Marksheet  File Deletion
                DirectoryInfo sourceStdASVMarksheet = new DirectoryInfo(MapPath("~/Images/Student Admission Applications/Semester 5 Marksheets/"));
                File.Delete(sourceStdASVMarksheet + drdf["StdASVMarksheet"].ToString());
            }



            //  Signature File Deletion
            DirectoryInfo sourceStdASignatures = new DirectoryInfo(MapPath("~/Images/Student Admission Applications/Signatures/"));
            File.Delete(sourceStdASignatures + drdf["StdASignature"].ToString());

            drdf.Close();



            SqlCommand cmddel = new SqlCommand("delete from New_Student_Applications where StdAID=@StdAID", con);
            cmddel.Parameters.AddWithValue("StdAID", TextBox72.Text);

            cmddel.ExecuteNonQuery();

            Label154.Visible = true;
            Label154.ForeColor = System.Drawing.Color.Green;
            Label154.Text = "<center>" + "Student Application Deleted Successfully....." + "<br/>" + "Thank You....." + "<br/>" + "Visit Again....." + "</center>";
            Label154.Focus();


            Response.Write("<script LANGUAGE='JavaScript' >alert('\\tStudent Application Deleted Successfully.....\\n\\tThank You.....\\n\\tVisit Again.....')</script>");

            Response.Redirect("Admin_Student_Admission_Application_Whole_List.aspx");



            con.Close();

        }
        catch (Exception ex)
        {
            Response.Write("Error" + ex.ToString());
            Response.Write("<script LANGUAGE='JavaScript' >alert('\tError..!''" + ex.ToString() + "')</script>");


        }

    }
}
