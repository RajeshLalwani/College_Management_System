using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Pre_Login_Apply_For_Admission : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Conn"].ConnectionString);

    public static string verificationCode;
    public static string to;
    protected void Page_Load(object sender, EventArgs e)
    {

        //try
        //{
        //    SqlCommand aid = new SqlCommand("select max(StdAID) from New_Student_Applications", con);



        //    aid.ExecuteNonQuery();

        //    Response.Write("<script LANGUAGE='JavaScript' >alert('\tWelcome to New Students' Application Form....')</script>");




        //    con.Close();

        //}
        //catch (Exception ex)
        //{
        //    Response.Write("<script LANGUAGE='JavaScript' >alert('\tError..!''" + ex.ToString() + "')</script>");
        //    Response.Write("Error" + ex.ToString());
        //}
        Label146.Visible = false;
        Label147.Visible = false;
        Label148.Visible = false;
        Label149.Visible = false;

        Label149.Text = DateTime.Today.ToString("yyyy/MM/dd");
        con.Open();


        Label25.Visible = false;
        Label26.Visible = false;
        Image1.Visible = false;
        //Panel1.Visible = false;
        Label27.Visible = false;
        //Label27.Visible = true;
        Label41.Visible = false;
        Label68.Visible = false;
        Label69.Visible = false;
        Label78.Visible = false;
        Label79.Visible = false;
        Image2.Visible = false;
        Panel3.Visible = true;

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

        //Panel9.Visible = false;
        Image2.Visible = false;
        Label138.Visible = false;
        Label139.Visible = false;

        Label154.Visible = false;
        Panel11.Visible = false;

        if (DropDownList5.Text == "Semester 1")
        {
            Panel3.Visible = true;     // std 10 12 
            //Panel3.Focus();          // std 10 12


        }
        else if (DropDownList5.Text == "Semester 2")
        {
            Panel3.Visible = true;     // std 10 12
            Panel4.Visible = true;    // sem 1
            Panel14.Visible = true;    // sem 1 Marksheet
           // Panel3.Focus();          // std 10 12
        }
        else if (DropDownList5.Text == "Semester 3")
        {
            Panel3.Visible = true;    // std 10 12
            Panel4.Visible = true;    // sem 1
            Panel14.Visible = true;    // sem 1 Marksheet
            Panel5.Visible = true;     // sem 2
            Panel15.Visible = true;    // sem 2 Marksheet
           // Panel3.Focus();           // std 10 12
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
            //Panel3.Focus();          // std 10 12
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
           // Panel3.Focus();          // std 10 12
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
           // Panel3.Focus();          // std 10 12
        }

        else
        {
            //Response.Write("<script LANGUAGE='JavaScript' >alert('\tError: Please Select Semester First...')</script>");

        }

        if (TextBox5.Text != "")
        {
            Panel1.Visible = true;
            Panel1.Focus();
        }
    }

    //protected void Button1_Click(object sender, EventArgs e)
    //{
    //    //  Label25.Visible = true;



    //    if (FileUpload1.HasFile)
    //    {
    //        String strpath = System.IO.Path.GetExtension(FileUpload1.FileName);

    //        if (strpath != ".jpg" && strpath != ".pdf" && strpath != ".jpeg" && strpath != ".png")  //FileUpload1.FileName
    //        {
    //            Label25.Visible = true;
    //            Label25.ForeColor = System.Drawing.Color.Red;
    //            Label25.Text = "Only (jpg, .jpeg, .png, .pdf, ) File Formats are Accepted..!";
    //        }
    //        else
    //        {
    //            int filesize = FileUpload1.PostedFile.ContentLength;

    //            if (filesize > 1000000)
    //            {
    //                Label25.Visible = true;
    //                Label25.ForeColor = System.Drawing.Color.Red;
    //                Label25.Text = "Error : Please Upload files within 1MB only...!";
    //            }
    //            else
    //            {
    //                Label25.Visible = true;
    //                Label25.ForeColor = System.Drawing.Color.Green;

    //                Label25.Text = "File(" + FileUpload1.FileName + ") Uploaded Successfully ";
    //                FileUpload1.SaveAs(Server.MapPath("Images/Student Admission Applications/Passport Size Photos//" + FileUpload1.FileName));

    //                String filename = FileUpload1.FileName;
    //                Image1.ImageUrl = "Images/Student Admission Applications/Passport Size Photos/" + filename;
    //                Image1.Visible = true;
    //                Image1.Height = 200;
    //                Image1.Width = 200;
    //                Label26.Visible = true;
    //                Label26.ForeColor = System.Drawing.Color.Green;
    //                Label26.Text = "Your File Size is :" + FileUpload1.FileBytes.Length.ToString() + " KB";

    //            }
    //        }
    //    }
    //    else
    //    {
    //        Label25.Visible = true;
    //        Label25.ForeColor = System.Drawing.Color.Red;
    //        Label25.Text = "Error : Please Select Any File...!";
    //    }
    //}
    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        string UserName = TextBox1.Text;
        string UserEmail = TextBox5.Text;

        try
        {
            SendEmail(UserName, UserEmail);
        }
        catch (Exception ex)
        {
            // Error occurred while sending email
            //Label27.Visible = true;
            //Label27.ForeColor = System.Drawing.Color.Red;
            //Label27.Text = "Error: " + ex.ToString();
            Response.Write("<script>alert('Error: InValid Email Verification Code see on the Top of the Page for more Error Details...')</script>");
            Response.Write("Error" + ex.ToString());
        }

        //Random rand = new Random();
        //verificationCode = rand.Next(999999).ToString();
        //SendVerificationEmail(userEmail, verificationCode);
    }

    private static void SendEmail(string UserName, string UserEmail)
    {
        // try
        //{


        Random rand = new Random();
        //Int32 code = Int32.Parse(rand.Next(0, 1000000).ToString());
        verificationCode = (rand.Next(0, 1000000).ToString());
        string unm = UserName;

        string to = String.Format(UserEmail);

        MailMessage mailMessage = new MailMessage("anandcommercecollegebca@gmail.com", to);  //   userEmail

        mailMessage.Body = "Dear " + unm + ",\n\nYour E-mail Verification code is: " + verificationCode.ToString() + "\n\nThanks & Regards,\nAnand Commerce College, Anand.";

        mailMessage.Subject = "Email Verification for Admission Application Anand Commerce College, BCA";



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


    //private void SendVerificationEmail(string toEmail, string verificationCode)
    //{
    //    string subject = "Email Verification for Admission Application Anand Commerce College BCA";
    //    string body = "Dear " + TextBox1.Text + ",\n\nYour E-mail Verification code is: " + verificationCode + "\n\nThanks & Regards,\nAnand Commerce College, Anand";

    //    try
    //    {




    //        //using (MailMessage message = new MailMessage("anandcommercecollegebca@gmail.com", toEmail, subject, body))
    //        //{
    //        //    message.IsBodyHtml = false;

    //        //    using (SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587))
    //        //    {
    //        //        smtp.Credentials = new System.Net.NetworkCredential("anandcommercecollegebca@gmail.com", "AnandCommerceCollegeBca143");
    //        //        smtp.EnableSsl = true;
    //        //        smtp.Send(message);
    //        //    }
    //        //}
    //        //// Email sent successfully
    //        //// You may add code here for further actions after successful email sending
    //    }
    //    catch (Exception ex)
    //    {
    //        // Error occurred while sending email
    //        Label27.Visible = true;
    //        Label27.ForeColor = System.Drawing.Color.Red;
    //        Label27.Text = "Error: " + ex.ToString();
    //    }




    //    //using (MailMessage message = new MailMessage("anandcommerccecollegebca@gmail.com", toEmail, subject, body))
    //    //{
    //    //    message.IsBodyHtml = false;

    //    //    using (SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587))
    //    //    {
    //    //        smtp.Credentials = new NetworkCredential("anandcommerccecollegebca@gmail.com", "AnandCommerceCollegeBca143");
    //    //        smtp.EnableSsl = true;
    //    //        smtp.Send(message);
    //    //    }
    //    //}
    //}


    protected void Button3_Click(object sender, EventArgs e)
    {
        if (verificationCode == (TextBox6.Text).ToString())
        {
            Label27.Visible = true;
            Label27.ForeColor = System.Drawing.Color.Green;
            Label27.Text = "E-mail Successfully Verified..";
            Label27.Focus();
        }

        else
        {
            TextBox5.Text = String.Empty;
            Label27.Visible = true;
            Label27.ForeColor = System.Drawing.Color.Red;
            Label27.Text = "Error: Invalid Verification Code..";
            Label27.Focus();
        }
    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        if (CheckBox1.Checked == true)
        {
            TextBox19.Text = TextBox15.Text;
            TextBox19.ReadOnly = true;
            TextBox20.Text = TextBox16.Text;
            TextBox20.ReadOnly = true;
            TextBox21.Text = TextBox17.Text;
            TextBox21.ReadOnly = true;
            TextBox22.Text = TextBox18.Text;
            TextBox22.ReadOnly = true;
            DropDownList3.Focus();
        }
        else
        {
            TextBox19.Text = String.Empty;
            TextBox19.ReadOnly = false;
            TextBox20.Text = String.Empty;
            TextBox20.ReadOnly = false;
            TextBox21.Text = String.Empty;
            TextBox21.ReadOnly = false;
            TextBox22.Text = String.Empty;
            TextBox22.ReadOnly = false;
            TextBox19.Focus();

        }
    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList3.Text == "BCA")
        {
            Label41.Visible = true;
            Label41.ForeColor = System.Drawing.Color.Green;
            Label41.Text = "Course Seleced Successfully...";
            DropDownList4.Focus();


        }
        else if (DropDownList3.Text != "BCA")
        {
            Label41.Visible = true;
            Label41.ForeColor = System.Drawing.Color.Red;
            Label41.Text = "<center>" + "<br/>" + " Error: This Course is Unavailable for online application" + "<br/>" + " Please Visit our College Physically For Admission inquiry" + "<br/>" + " Address : Opp. Town Hall, Anand-388 001, Gujarat - India " + "<br/>" + " OR " + "<br/>" + " Contact Us on " + "<br/>" + " Phone: +91 2692 250769 " + "<br/>" + " BCA : +91 2692 266062 " + "<br/>" + " E-mail: principal_acc@yahoo.com " + "<br/>" + " Website: www.acc.ac.in" + "</center>";
            DropDownList3.Text = "BCA";
            DropDownList4.Focus();

        }

        else
        {
            Label41.Visible = true;
            Label41.ForeColor = System.Drawing.Color.Red;
            Label41.Text = "<center>" + "<br/>" + " Error: Please Select Any Course.....</center>";
            DropDownList4.Focus();

        }
    }
    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
    {
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
            Response.Write("<script LANGUAGE='JavaScript' >alert('\tError: Please Select Semester First...')</script>");

        }
    }

    //protected void Button4_Click(object sender, EventArgs e)
    //{
    //    //  Label25.Visible = true;



    //    if (FileUpload2.HasFile)
    //    {
    //        String strpath = System.IO.Path.GetExtension(FileUpload2.FileName);

    //        if (strpath != ".pdf")  //FileUpload1.FileName
    //        {
    //            Label68.Visible = true;
    //            Label68.ForeColor = System.Drawing.Color.Red;
    //            Label68.Text = "<center>Only (.pdf ) File Formats are Accepted..!</center>";
    //            FileUpload2.Focus();

    //        }
    //        else
    //        {
    //            int filesize = FileUpload2.PostedFile.ContentLength;

    //            if (filesize > 1000000)
    //            {
    //                Label68.Visible = true;
    //                Label68.ForeColor = System.Drawing.Color.Red;
    //                Label68.Text = "<center>Error : Please Upload files within 1MB only...!</center>";
    //                FileUpload2.Focus();
    //            }
    //            else
    //            {
    //                Label68.Visible = true;
    //                Label68.ForeColor = System.Drawing.Color.Green;

    //                Label68.Text = "<center>File (Name : " + FileUpload2.FileName + " ) Uploaded Successfully </center>";
    //                FileUpload2.SaveAs(Server.MapPath("Images/Student Admission Applications/Class X Marksheets//" + FileUpload2.FileName));

    //                String filename = FileUpload2.FileName;
    //                //Image2.ImageUrl = "Images/Student Admission/Class X Marksheets/" + filename;
    //                //Image2.Visible = true;
    //                //Image2.Height = 200;
    //                // Image2.Width = 200;
    //                Label69.Visible = true;
    //                Label69.ForeColor = System.Drawing.Color.Green;
    //                Label69.Text = "<center>Your File Size is : " + FileUpload2.FileBytes.Length.ToString() + " KB</center>";
    //                FileUpload2.Focus();
    //            }
    //        }
    //    }
    //    else
    //    {
    //        Label68.Visible = true;
    //        Label68.ForeColor = System.Drawing.Color.Red;
    //        Label68.Text = "<center>Error : Please Select Any File...!</center>";
    //        FileUpload2.Focus();
    //    }
    //}
    //protected void Button5_Click(object sender, EventArgs e)
    //{
    //    //  Label25.Visible = true;



    //    if (FileUpload3.HasFile)
    //    {
    //        String strpath = System.IO.Path.GetExtension(FileUpload3.FileName);

    //        if (strpath != ".pdf")  //FileUpload3.FileName
    //        {
    //            Label78.Visible = true;
    //            Label78.ForeColor = System.Drawing.Color.Red;
    //            Label78.Text = "<center>Only (.pdf ) File Formats are Accepted..!</center>";
    //            FileUpload3.Focus();

    //        }
    //        else
    //        {
    //            int filesize = FileUpload3.PostedFile.ContentLength;

    //            if (filesize > 1000000)
    //            {
    //                Label78.Visible = true;
    //                Label78.ForeColor = System.Drawing.Color.Red;
    //                Label78.Text = "<center>Error : Please Upload files within 1MB only...!</center>";
    //                FileUpload3.Focus();
    //            }
    //            else
    //            {
    //                Label78.Visible = true;
    //                Label78.ForeColor = System.Drawing.Color.Green;

    //                Label78.Text = "<center>File (Name : " + FileUpload3.FileName + " ) Uploaded Successfully </center>";
    //                FileUpload3.SaveAs(Server.MapPath("Images/Student Admission Applications/Class XII Marksheets//" + FileUpload3.FileName));

    //                //String filename = FileUpload3.FileName;
    //                //Image2.ImageUrl = "Images/Student Admission Applications/Class XII Marksheets/" + filename;
    //                //Image2.Visible = true;
    //                //Image2.Height = 200;
    //                // Image2.Width = 200;
    //                Label79.Visible = true;
    //                Label79.ForeColor = System.Drawing.Color.Green;
    //                Label79.Text = "<center>Your File Size is : " + FileUpload3.FileBytes.Length.ToString() + " KB</center>";
    //                FileUpload3.Focus();
    //            }
    //        }
    //    }
    //    else
    //    {
    //        Label78.Visible = true;
    //        Label78.ForeColor = System.Drawing.Color.Red;
    //        Label78.Text = "<center>Error : Please Select Any File...!</center>";
    //        FileUpload3.Focus();
    //    }
    //}
    //protected void Button6_Click(object sender, EventArgs e)
    //{
    //    //  Label25.Visible = true;



    //    if (FileUpload4.HasFile)
    //    {
    //        String strpath = System.IO.Path.GetExtension(FileUpload4.FileName);

    //        if (strpath != ".pdf")  //FileUpload4.FileName
    //        {
    //            Label90.Visible = true;
    //            Label90.ForeColor = System.Drawing.Color.Red;
    //            Label90.Text = "<center>Only (.pdf ) File Formats are Accepted..!</center>";
    //            FileUpload4.Focus();

    //        }
    //        else
    //        {
    //            int filesize = FileUpload4.PostedFile.ContentLength;

    //            if (filesize > 1000000)
    //            {
    //                Label90.Visible = true;
    //                Label90.ForeColor = System.Drawing.Color.Red;
    //                Label90.Text = "<center>Error : Please Upload files within 1MB only...!</center>";
    //                FileUpload4.Focus();
    //            }
    //            else
    //            {
    //                Label90.Visible = true;
    //                Label90.ForeColor = System.Drawing.Color.Green;

    //                Label90.Text = "<center>File (Name : " + FileUpload4.FileName + " ) Uploaded Successfully </center>";
    //                FileUpload4.SaveAs(Server.MapPath("Images/Student Admission Applications/Semester 1 Marksheets//" + FileUpload4.FileName));

    //                //String filename = FileUpload4.FileName;
    //                //Image2.ImageUrl = "Images/Student Admission Applications/Class XII Marksheets/" + filename;
    //                //Image2.Visible = true;
    //                //Image2.Height = 200;
    //                // Image2.Width = 200;
    //                Label91.Visible = true;
    //                Label91.ForeColor = System.Drawing.Color.Green;
    //                Label91.Text = "<center>Your File Size is : " + FileUpload4.FileBytes.Length.ToString() + " KB</center>";
    //                FileUpload4.Focus();
    //            }
    //        }
    //    }
    //    else
    //    {
    //        Label90.Visible = true;
    //        Label90.ForeColor = System.Drawing.Color.Red;
    //        Label90.Text = "<center>Error : Please Select Any File...!</center>";
    //        FileUpload4.Focus();
    //    }
    //}

    //protected void Button7_Click(object sender, EventArgs e)
    //{
    //    //  Label25.Visible = true;



    //    if (FileUpload5.HasFile)
    //    {
    //        String strpath = System.IO.Path.GetExtension(FileUpload5.FileName);

    //        if (strpath != ".pdf")  //FileUpload5.FileName
    //        {
    //            Label101.Visible = true;
    //            Label101.ForeColor = System.Drawing.Color.Red;
    //            Label101.Text = "<center>Only (.pdf ) File Formats are Accepted..!</center>";
    //            FileUpload5.Focus();

    //        }
    //        else
    //        {
    //            int filesize = FileUpload5.PostedFile.ContentLength;

    //            if (filesize > 1000000)
    //            {
    //                Label101.Visible = true;
    //                Label101.ForeColor = System.Drawing.Color.Red;
    //                Label101.Text = "<center>Error : Please Upload files within 1MB only...!</center>";
    //                FileUpload5.Focus();
    //            }
    //            else
    //            {
    //                Label101.Visible = true;
    //                Label101.ForeColor = System.Drawing.Color.Green;

    //                Label101.Text = "<center>File (Name : " + FileUpload5.FileName + " ) Uploaded Successfully </center>";
    //                FileUpload5.SaveAs(Server.MapPath("Images/Student Admission Applications/Semester 2 Marksheets//" + FileUpload5.FileName));

    //                //String filename = FileUpload4.FileName;
    //                //Image2.ImageUrl = "Images/Student Admission Applications/Class XII Marksheets/" + filename;
    //                //Image2.Visible = true;
    //                //Image2.Height = 200;
    //                // Image2.Width = 200;
    //                Label102.Visible = true;
    //                Label102.ForeColor = System.Drawing.Color.Green;
    //                Label102.Text = "<center>Your File Size is : " + FileUpload5.FileBytes.Length.ToString() + " KB</center>";
    //                FileUpload5.Focus();
    //            }
    //        }
    //    }
    //    else
    //    {
    //        Label101.Visible = true;
    //        Label101.ForeColor = System.Drawing.Color.Red;
    //        Label101.Text = "<center>Error : Please Select Any File...!</center>";
    //        FileUpload5.Focus();
    //    }
    //}


    //protected void Button8_Click(object sender, EventArgs e)
    //{
    //    //  Label25.Visible = true;



    //    if (FileUpload6.HasFile)
    //    {
    //        String strpath = System.IO.Path.GetExtension(FileUpload6.FileName);

    //        if (strpath != ".pdf")  //FileUpload6.FileName
    //        {
    //            Label112.Visible = true;
    //            Label112.ForeColor = System.Drawing.Color.Red;
    //            Label112.Text = "<center>Only (.pdf ) File Formats are Accepted..!</center>";
    //            FileUpload6.Focus();

    //        }
    //        else
    //        {
    //            int filesize = FileUpload6.PostedFile.ContentLength;

    //            if (filesize > 1000000)
    //            {
    //                Label112.Visible = true;
    //                Label112.ForeColor = System.Drawing.Color.Red;
    //                Label112.Text = "<center>Error : Please Upload files within 1MB only...!</center>";
    //                FileUpload6.Focus();
    //            }
    //            else
    //            {
    //                Label112.Visible = true;
    //                Label112.ForeColor = System.Drawing.Color.Green;

    //                Label112.Text = "<center>File (Name : " + FileUpload6.FileName + " ) Uploaded Successfully </center>";
    //                FileUpload6.SaveAs(Server.MapPath("Images/Student Admission Applications/Semester 3 Marksheets//" + FileUpload6.FileName));

    //                //String filename = FileUpload6.FileName;
    //                //Image2.ImageUrl = "Images/Student Admission Applications/Semester 3 Marksheets/" + filename;
    //                //Image2.Visible = true;
    //                //Image2.Height = 200;
    //                // Image2.Width = 200;
    //                Label113.Visible = true;
    //                Label113.ForeColor = System.Drawing.Color.Green;
    //                Label113.Text = "<center>Your File Size is : " + FileUpload6.FileBytes.Length.ToString() + " KB</center>";
    //                FileUpload6.Focus();
    //            }
    //        }
    //    }
    //    else
    //    {
    //        Label112.Visible = true;
    //        Label112.ForeColor = System.Drawing.Color.Red;
    //        Label112.Text = "<center>Error : Please Select Any File...!</center>";
    //        FileUpload6.Focus();
    //    }
    //}
    //protected void Button9_Click(object sender, EventArgs e)
    //{
    //    //  Label25.Visible = true;



    //    if (FileUpload7.HasFile)
    //    {
    //        String strpath = System.IO.Path.GetExtension(FileUpload7.FileName);

    //        if (strpath != ".pdf")  //FileUpload7.FileName
    //        {
    //            Label123.Visible = true;
    //            Label123.ForeColor = System.Drawing.Color.Red;
    //            Label123.Text = "<center>Only (.pdf ) File Formats are Accepted..!</center>";
    //            FileUpload7.Focus();

    //        }
    //        else
    //        {
    //            int filesize = FileUpload7.PostedFile.ContentLength;

    //            if (filesize > 1000000)
    //            {
    //                Label123.Visible = true;
    //                Label123.ForeColor = System.Drawing.Color.Red;
    //                Label123.Text = "<center>Error : Please Upload files within 1MB only...!</center>";
    //                FileUpload7.Focus();
    //            }
    //            else
    //            {
    //                Label123.Visible = true;
    //                Label123.ForeColor = System.Drawing.Color.Green;

    //                Label123.Text = "<center>File (Name : " + FileUpload7.FileName + " ) Uploaded Successfully </center>";
    //                FileUpload7.SaveAs(Server.MapPath("Images/Student Admission Applications/Semester 4 Marksheets//" + FileUpload7.FileName));

    //                //String filename = FileUpload6.FileName;
    //                //Image2.ImageUrl = "Images/Student Admission Applications/Semester 4 Marksheets/" + filename;
    //                //Image2.Visible = true;
    //                //Image2.Height = 200;
    //                // Image2.Width = 200;
    //                Label124.Visible = true;
    //                Label124.ForeColor = System.Drawing.Color.Green;
    //                Label124.Text = "<center>Your File Size is : " + FileUpload7.FileBytes.Length.ToString() + " KB</center>";
    //                FileUpload7.Focus();
    //            }
    //        }
    //    }
    //    else
    //    {
    //        Label123.Visible = true;
    //        Label123.ForeColor = System.Drawing.Color.Red;
    //        Label123.Text = "<center>Error : Please Select Any File...!</center>";
    //        FileUpload7.Focus();
    //    }
    //}
    //protected void Button10_Click(object sender, EventArgs e)
    //{
    //    //  Label25.Visible = true;



    //    if (FileUpload8.HasFile)
    //    {
    //        String strpath = System.IO.Path.GetExtension(FileUpload8.FileName);

    //        if (strpath != ".pdf")  //FileUpload8.FileName
    //        {
    //            Label134.Visible = true;
    //            Label134.ForeColor = System.Drawing.Color.Red;
    //            Label134.Text = "<center>Only (.pdf ) File Formats are Accepted..!</center>";
    //            FileUpload8.Focus();

    //        }
    //        else
    //        {
    //            int filesize = FileUpload8.PostedFile.ContentLength;

    //            if (filesize > 1000000)
    //            {
    //                Label134.Visible = true;
    //                Label134.ForeColor = System.Drawing.Color.Red;
    //                Label134.Text = "<center>Error : Please Upload files within 1MB only...!</center>";
    //                FileUpload8.Focus();
    //            }
    //            else
    //            {
    //                Label134.Visible = true;
    //                Label134.ForeColor = System.Drawing.Color.Green;

    //                Label134.Text = "<center>File (Name : " + FileUpload8.FileName + " ) Uploaded Successfully </center>";
    //                FileUpload8.SaveAs(Server.MapPath("Images/Student Admission Applications/Semester 5 Marksheets//" + FileUpload8.FileName));

    //                //String filename = FileUpload6.FileName;
    //                //Image2.ImageUrl = "Images/Student Admission Applications/Semester 5 Marksheets/" + filename;
    //                //Image2.Visible = true;
    //                //Image2.Height = 200;
    //                // Image2.Width = 200;
    //                Label135.Visible = true;
    //                Label135.ForeColor = System.Drawing.Color.Green;
    //                Label135.Text = "<center>Your File Size is : " + FileUpload8.FileBytes.Length.ToString() + " KB</center>";
    //                FileUpload8.Focus();
    //            }
    //        }
    //    }
    //    else
    //    {
    //        Label134.Visible = true;
    //        Label134.ForeColor = System.Drawing.Color.Red;
    //        Label134.Text = "<center>Error : Please Select Any File...!</center>";
    //        FileUpload8.Focus();
    //    }
    //}
    //protected void Button11_Click(object sender, EventArgs e)
    //{
    //    //  Label25.Visible = true;


    //    if (FileUpload9.HasFile)
    //    {
    //        String strpath = System.IO.Path.GetExtension(FileUpload9.FileName);

    //        if (strpath != ".jpg" && strpath != ".jpeg" && strpath != ".png")  //FileUpload9.FileName
    //        {
    //            Label138.Visible = true;
    //            Label138.ForeColor = System.Drawing.Color.Red;
    //            Label138.Text = "<center>Only (jpg, .jpeg, .png ) File Formats are Accepted..!</center>";
    //            FileUpload9.Focus();

    //        }
    //        else
    //        {
    //            int filesize = FileUpload9.PostedFile.ContentLength;

    //            if (filesize > 1000000)
    //            {
    //                Label138.Visible = true;
    //                Label138.ForeColor = System.Drawing.Color.Red;
    //                Label138.Text = "<center>Error : Please Upload files within 1MB only...!</center>";
    //                FileUpload9.Focus();
    //            }
    //            else
    //            {
    //                Label138.Visible = true;
    //                Label138.ForeColor = System.Drawing.Color.Green;

    //                Label138.Text = "<center>File (Name : " + FileUpload9.FileName + " ) Uploaded Successfully </center>";
    //                FileUpload9.SaveAs(Server.MapPath("Images/Student Admission Applications/Signatures//" + FileUpload9.FileName));

    //                String filename = FileUpload9.FileName;
    //                Image2.ImageUrl = "Images/Student Admission Applications/Signatures/" + filename;
    //                Image2.Visible = true;
    //                Image2.Height = 200;
    //                Image2.Width = 200;
    //                Label139.Visible = true;
    //                Label139.ForeColor = System.Drawing.Color.Green;
    //                Label139.Text = "<center>Your File Size is : " + FileUpload9.FileBytes.Length.ToString() + " KB</center>";
    //                FileUpload9.Focus();
    //            }
    //        }
    //    }
    //    else
    //    {
    //        Label138.Visible = true;
    //        Label138.ForeColor = System.Drawing.Color.Red;
    //        Label138.Text = "<center>Error : Please Select Any File...!</center>";
    //        FileUpload9.Focus();
    //    }
    //}

    protected void DropDownList6_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList6.Text == "Custom")
        {
            Panel11.Visible = true;
            Panel11.Focus();
            TextBox70.Focus();


        }
        else if (DropDownList6.Text != "Custom")
        {
            Panel11.Visible = false;
            DropDownList6.Focus();
        }

        else
        {
            Response.Write("<script LANGUAGE='JavaScript' >alert('\tError: Please Select Security Question First...')</script>");

        }
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

            //SqlCommand cmd = new SqlCommand("insert into RegistrationTable values (@FirstName, @LastName,@Address,@City,@MobileNumber,@Email,@Password)", con);
            //cmd.Parameters.AddWithValue("FirstName", FnameTxt.Text);
            //cmd.Parameters.AddWithValue("LastName", LnameTxt.Text);
            //cmd.Parameters.AddWithValue("Address", AddressTxt.Text);
            //cmd.Parameters.AddWithValue("City", City.Text);
            //cmd.Parameters.AddWithValue("MobileNumber", MobileNumber.Text);
            //cmd.Parameters.AddWithValue("Email", Email.Text);
            //cmd.Parameters.AddWithValue("Password", Password.Text);
            //cmd.ExecuteNonQuery();
            //Label1.Visible = true;
            //Label1.Text = "User registered successfully";
            //FnameTxt.Text = "";
            //LnameTxt.Text = "";
            //Email.Text = "";
            //MobileNumber.Text = "";
            //Password.Text = "";
            //FnameTxt.Focus();
            //Response.Redirect("http://localhost:25671/sony E_sopping/homepage.aspx");


            //SqlCommand cmd = new SqlCommand("insert into New_Student_Applications (StdAdate,StdAPassSizePhoto,StdASalutation,StdAfname,StdAmname,StdAlname,StdAbdate,StdABldgroup,StdAEmail,StdAMNo,StdAGen,StdAMaritalStatus,StdAReligion,StdACasteCat,StdAFatherSpouseName,StdAFatherSpouseMNo,StfAMotherName,StfAMotherMNo,StdAFatherSpouseOccupation,StdAAnnualIncome,StdAPresentAddr,StdAPresentAddrCity,StdAPresentAddrPinCode,StdAPresentAddrState,StdAPrmntAddr,StdAPrmntAddrCity,StdAPrmntAddrPinCode,StdAPrmntAddrState,StdACourse,StdAMedOfInstrctn,StdASemester,StdAClsXSchool,StdAClsXBoard,StdAClsXCity,StdAClsXMedOfInstrctn,StdAClsXYearOfPassing,StdAClsXPercentage,StdAClsXMarksheet,StdAClsXIISchool,StdAClsXIIBoard,StdAClsXIICity,StdAClsXIIMedOfInstrctn,StdAClsXIIYearOfPassing,StdAClsXIIStreamDiscipline,StdAClsXIIPercentage,StdAClsXIIMarksheet,StdASICollege,StdASIUniversity,StdASICity,StdASIYearOfPassing,StdASIPerGPA,StdASIMarksheet,StdASIICollege,StdASIIUniversity,StdASIICity,StdASIIYearOfPassing,StdASIIPerGPA,StdASIIMarksheet,StdASIIICollege,StdASIIIUniversity,StdASIIICity,StdASIIIYearOfPassing,StdASIIIPerGPA,StdASIIIMarksheet,StdASIVCollege,StdASIVUniversity,StdASIVCity,StdASIVYearOfPassing,StdASIVPerGPA,StdASIVMarksheet,StdASVCollege,StdASVUniversity,StdASVCity,StdASVYearOfPassing,StdASVPerGPA,StdASVMarksheet,StdASignature,StdASecQue,StdASecAns) values (@StdAdate,@StdAPassSizePhoto,@StdASalutation,@StdAfname,@StdAmname,@StdAlname,@StdAbdate,@StdABldgroup,@StdAEmail,@StdAMNo,@StdAGen,@StdAMaritalStatus,@StdAReligion,@StdACasteCat,@StdAFatherSpouseName,@StdAFatherSpouseMNo,@StfAMotherName,@StfAMotherMNo,@StdAFatherSpouseOccupation,@StdAAnnualIncome,@StdAPresentAddr,@StdAPresentAddrCity,@StdAPresentAddrPinCode,@StdAPresentAddrState,@StdAPrmntAddr,@StdAPrmntAddrCity,@StdAPrmntAddrPinCode,@StdAPrmntAddrState,@StdACourse,@StdAMedOfInstrctn,@StdASemester,@StdAClsXSchool,@StdAClsXBoard,@StdAClsXCity,@StdAClsXMedOfInstrctn,@StdAClsXYearOfPassing,@StdAClsXPercentage,@StdAClsXMarksheet,@StdAClsXIISchool,@StdAClsXIIBoard,@StdAClsXIICity,@StdAClsXIIMedOfInstrctn,@StdAClsXIIYearOfPassing,@StdAClsXIIStreamDiscipline,@StdAClsXIIPercentage,@StdAClsXIIMarksheet,@StdASICollege,@StdASIUniversity,@StdASICity,@StdASIYearOfPassing,@StdASIPerGPA,@StdASIMarksheet,@StdASIICollege,@StdASIIUniversity,@StdASIICity,@StdASIIYearOfPassing,@StdASIIPerGPA,@StdASIIMarksheet,@StdASIIICollege,@StdASIIIUniversity,@StdASIIICity,@StdASIIIYearOfPassing,@StdASIIIPerGPA,@StdASIIIMarksheet,@StdASIVCollege,@StdASIVUniversity,@StdASIVCity,@StdASIVYearOfPassing,@StdASIVPerGPA,@StdASIVMarksheet,@StdASVCollege,@StdASVUniversity,@StdASVCity,@StdASVYearOfPassing,@StdASVPerGPA,@StdASVMarksheet,@StdASignature,@StdASecQue,@StdASecAns)", con);

            SqlCommand cmd = new SqlCommand("insert into New_Student_Applications values (@StdAdate,@StdAPassSizePhoto,@StdASalutation,@StdAfname,@StdAmname,@StdAlname,@StdAbdate,@StdABldgroup,@StdAEmail,@StdAMNo,@StdAGen,@StdAMaritalStatus,@StdAReligion,@StdACasteCat,@StdAFatherSpouseName,@StdAFatherSpouseMNo,@StfAMotherName,@StfAMotherMNo,@StdAFatherSpouseOccupation,@StdAAnnualIncome,@StdAPresentAddr,@StdAPresentAddrCity,@StdAPresentAddrPinCode,@StdAPresentAddrState,@StdAPrmntAddr,@StdAPrmntAddrCity,@StdAPrmntAddrPinCode,@StdAPrmntAddrState,@StdACourse,@StdAMedOfInstrctn,@StdASemester,@StdAClsXSchool,@StdAClsXBoard,@StdAClsXCity,@StdAClsXMedOfInstrctn,@StdAClsXYearOfPassing,@StdAClsXPercentage,@StdAClsXMarksheet,@StdAClsXIISchool,@StdAClsXIIBoard,@StdAClsXIICity,@StdAClsXIIMedOfInstrctn,@StdAClsXIIYearOfPassing,@StdAClsXIIStreamDiscipline,@StdAClsXIIPercentage,@StdAClsXIIMarksheet,@StdASICollege,@StdASIUniversity,@StdASICity,@StdASIYearOfPassing,@StdASIPerGPA,@StdASIMarksheet,@StdASIICollege,@StdASIIUniversity,@StdASIICity,@StdASIIYearOfPassing,@StdASIIPerGPA,@StdASIIMarksheet,@StdASIIICollege,@StdASIIIUniversity,@StdASIIICity,@StdASIIIYearOfPassing,@StdASIIIPerGPA,@StdASIIIMarksheet,@StdASIVCollege,@StdASIVUniversity,@StdASIVCity,@StdASIVYearOfPassing,@StdASIVPerGPA,@StdASIVMarksheet,@StdASVCollege,@StdASVUniversity,@StdASVCity,@StdASVYearOfPassing,@StdASVPerGPA,@StdASVMarksheet,@StdASignature,@StdASecQue,@StdASecAns)", con);   //(StdAdate,StdAPassSizePhoto,StdASalutation,StdAfname,StdAmname,StdAlname,StdAbdate,StdABldgroup,StdAEmail,StdAMNo,StdAGen,StdAMaritalStatus,StdAReligion,StdACasteCat,StdAFatherSpouseName,StdAFatherSpouseMNo,StfAMotherName,StfAMotherMNo,StdAFatherSpouseOccupation,StdAAnnualIncome,StdAPresentAddr,StdAPresentAddrCity,StdAPresentAddrPinCode,StdAPresentAddrState,StdAPrmntAddr,StdAPrmntAddrCity,StdAPrmntAddrPinCode,StdAPrmntAddrState,StdACourse,StdAMedOfInstrctn,StdASemester,StdAClsXSchool,StdAClsXBoard,StdAClsXCity,StdAClsXMedOfInstrctn,StdAClsXYearOfPassing,StdAClsXPercentage,StdAClsXMarksheet,StdAClsXIISchool,StdAClsXIIBoard,StdAClsXIICity,StdAClsXIIMedOfInstrctn,StdAClsXIIYearOfPassing,StdAClsXIIStreamDiscipline,StdAClsXIIPercentage,StdAClsXIIMarksheet,StdASICollege,StdASIUniversity,StdASICity,StdASIYearOfPassing,StdASIPerGPA,StdASIMarksheet,StdASIICollege,StdASIIUniversity,StdASIICity,StdASIIYearOfPassing,StdASIIPerGPA,StdASIIMarksheet,StdASIIICollege,StdASIIIUniversity,StdASIIICity,StdASIIIYearOfPassing,StdASIIIPerGPA,StdASIIIMarksheet,StdASIVCollege,StdASIVUniversity,StdASIVCity,StdASIVYearOfPassing,StdASIVPerGPA,StdASIVMarksheet,StdASVCollege,StdASVUniversity,StdASVCity,StdASVYearOfPassing,StdASVPerGPA,StdASVMarksheet,StdASignature,StdASecQue,StdASecAns)
            DateTime currentDate = DateTime.Now;
            string dt = currentDate.ToString("yyyy/MM/dd");

            cmd.Parameters.AddWithValue("StdAdate", Label149.Text);   //  dt.ToString(format)    Label149.Text  dt

            if (FileUpload1.HasFile)
            {
                String strpath = System.IO.Path.GetExtension(FileUpload1.FileName);

                if (strpath != ".jpg")  //FileUpload1.FileName  // && strpath != ".pdf" && strpath != ".jpeg" && strpath != ".png"
                {
                    Label25.Visible = true;
                    Label25.ForeColor = System.Drawing.Color.Red;
                    Label25.Text = "Only (.jpg) File Formats are Accepted..!";  // , .jpeg, .png, .pdf, 
                }
                else if (strpath == ".jpg")
                {
                    int filesize = FileUpload1.PostedFile.ContentLength;

                    if (filesize > 1000000)
                    {
                        Label25.Visible = true;
                        Label25.ForeColor = System.Drawing.Color.Red;
                        Label25.Text = "Error : Please Upload files within 1MB only...!";
                    }
                    else
                    {
                        Label25.Visible = true;
                        Label25.ForeColor = System.Drawing.Color.Green;

                        Label25.Text = "File(" + FileUpload1.FileName + ") Uploaded Successfully ";
                        FileUpload1.SaveAs(Server.MapPath("Images/Student Admission Applications/Passport Size Photos//" + FileUpload1.FileName));

                        String filename = FileUpload1.FileName;
                        Image1.ImageUrl = "Images/Student Admission Applications/Passport Size Photos/" + filename;
                        Image1.Visible = true;
                        Image1.Height = 200;
                        Image1.Width = 200;
                        Label26.Visible = true;
                        Label26.ForeColor = System.Drawing.Color.Green;
                        Label26.Text = "Your File Size is :" + FileUpload1.FileBytes.Length.ToString() + " KB";

                        string filepath = "Images/Student Admission Applications/Passport Size Photos/" + filename;
                        cmd.Parameters.AddWithValue("StdAPassSizePhoto", filename);


                    }
                }
            }
            else
            {
                Label25.Visible = true;
                Label25.ForeColor = System.Drawing.Color.Red;
                Label25.Text = "Error : Please Select Any File...!";
            }



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
            cmd.Parameters.AddWithValue("StfAMotherName", TextBox11.Text);
            cmd.Parameters.AddWithValue("StfAMotherMNo", TextBox12.Text);
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

            cmd.Parameters.AddWithValue("StdAClsXSchool", TextBox23.Text);
            cmd.Parameters.AddWithValue("StdAClsXBoard", TextBox24.Text);
            cmd.Parameters.AddWithValue("StdAClsXCity", TextBox25.Text);
            cmd.Parameters.AddWithValue("StdAClsXMedOfInstrctn", TextBox26.Text);
            cmd.Parameters.AddWithValue("StdAClsXYearOfPassing", TextBox27.Text);
            cmd.Parameters.AddWithValue("StdAClsXPercentage", TextBox28.Text);



            if (FileUpload2.HasFile)
            {
                String strpath = System.IO.Path.GetExtension(FileUpload2.FileName);

                if (strpath != ".pdf")  //FileUpload1.FileName
                {
                    Label68.Visible = true;
                    Label68.ForeColor = System.Drawing.Color.Red;
                    Label68.Text = "<center>Only (.pdf ) File Formats are Accepted..!</center>";
                    FileUpload2.Focus();

                }
                else
                {
                    int filesize = FileUpload2.PostedFile.ContentLength;

                    if (filesize > 1000000)
                    {
                        Label68.Visible = true;
                        Label68.ForeColor = System.Drawing.Color.Red;
                        Label68.Text = "<center>Error : Please Upload files within 1MB only...!</center>";
                        FileUpload2.Focus();
                    }
                    else
                    {
                        Label68.Visible = true;
                        Label68.ForeColor = System.Drawing.Color.Green;

                        Label68.Text = "<center>File (Name : " + FileUpload2.FileName + " ) Uploaded Successfully </center>";
                        FileUpload2.SaveAs(Server.MapPath("Images/Student Admission Applications/Class X Marksheets//" + FileUpload2.FileName));

                        String filename = FileUpload2.FileName;
                        //Image2.ImageUrl = "Images/Student Admission/Class X Marksheets/" + filename;
                        //Image2.Visible = true;
                        //Image2.Height = 200;
                        // Image2.Width = 200;
                        Label69.Visible = true;
                        Label69.ForeColor = System.Drawing.Color.Green;
                        Label69.Text = "<center>Your File Size is : " + FileUpload2.FileBytes.Length.ToString() + " KB</center>";
                        FileUpload2.Focus();

                        string filepath = "Images/Student Admission Applications/Class X Marksheets/" + filename;
                        cmd.Parameters.AddWithValue("StdAClsXMarksheet", filename);
                    }
                }
            }
            else
            {
                Label68.Visible = true;
                Label68.ForeColor = System.Drawing.Color.Red;
                Label68.Text = "<center>Error : Please Select Any File...!</center>";
                FileUpload2.Focus();
            }





            cmd.Parameters.AddWithValue("StdAClsXIISchool", TextBox29.Text);
            cmd.Parameters.AddWithValue("StdAClsXIIBoard", TextBox30.Text);
            cmd.Parameters.AddWithValue("StdAClsXIICity", TextBox31.Text);
            cmd.Parameters.AddWithValue("StdAClsXIIMedOfInstrctn", TextBox32.Text);
            cmd.Parameters.AddWithValue("StdAClsXIIYearOfPassing", TextBox33.Text);
            cmd.Parameters.AddWithValue("StdAClsXIIStreamDiscipline", TextBox34.Text);
            cmd.Parameters.AddWithValue("StdAClsXIIPercentage", TextBox35.Text);




            if (FileUpload3.HasFile)
            {
                String strpath = System.IO.Path.GetExtension(FileUpload3.FileName);

                if (strpath != ".pdf")  //FileUpload3.FileName
                {
                    Label78.Visible = true;
                    Label78.ForeColor = System.Drawing.Color.Red;
                    Label78.Text = "<center>Only (.pdf ) File Formats are Accepted..!</center>";
                    FileUpload3.Focus();

                }
                else
                {
                    int filesize = FileUpload3.PostedFile.ContentLength;

                    if (filesize > 1000000)
                    {
                        Label78.Visible = true;
                        Label78.ForeColor = System.Drawing.Color.Red;
                        Label78.Text = "<center>Error : Please Upload files within 1MB only...!</center>";
                        FileUpload3.Focus();
                    }
                    else
                    {
                        Label78.Visible = true;
                        Label78.ForeColor = System.Drawing.Color.Green;

                        Label78.Text = "<center>File (Name : " + FileUpload3.FileName + " ) Uploaded Successfully </center>";
                        FileUpload3.SaveAs(Server.MapPath("Images/Student Admission Applications/Class XII Marksheets//" + FileUpload3.FileName));

                        String filename = FileUpload3.FileName;
                        //Image2.ImageUrl = "Images/Student Admission Applications/Class XII Marksheets/" + filename;
                        //Image2.Visible = true;
                        //Image2.Height = 200;
                        // Image2.Width = 200;
                        Label79.Visible = true;
                        Label79.ForeColor = System.Drawing.Color.Green;
                        Label79.Text = "<center>Your File Size is : " + FileUpload3.FileBytes.Length.ToString() + " KB</center>";
                        FileUpload3.Focus();

                        string filepath = "Images/Student Admission Applications/Class XII Marksheets/" + filename;
                        cmd.Parameters.AddWithValue("StdAClsXIIMarksheet", filename);
                    }
                }
            }
            else
            {
                Label78.Visible = true;
                Label78.ForeColor = System.Drawing.Color.Red;
                Label78.Text = "<center>Error : Please Select Any File...!</center>";
                FileUpload3.Focus();
            }



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
                        FileUpload4.SaveAs(Server.MapPath("Images/Student Admission Applications/Semester 1 Marksheets//" + FileUpload4.FileName));

                        String filename = FileUpload4.FileName;
                        //Image2.ImageUrl = "Images/Student Admission Applications/Class XII Marksheets/" + filename;
                        //Image2.Visible = true;
                        //Image2.Height = 200;
                        // Image2.Width = 200;
                        Label91.Visible = true;
                        Label91.ForeColor = System.Drawing.Color.Green;
                        Label91.Text = "<center>Your File Size is : " + FileUpload4.FileBytes.Length.ToString() + " KB</center>";
                        FileUpload4.Focus();

                        string filepath = "Images/Student Admission Applications/Semester 1 Marksheets/" + filename;
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
                        FileUpload5.SaveAs(Server.MapPath("Images/Student Admission Applications/Semester 2 Marksheets//" + FileUpload5.FileName));

                        String filename = FileUpload5.FileName;
                        //Image2.ImageUrl = "Images/Student Admission Applications/Class XII Marksheets/" + filename;
                        //Image2.Visible = true;
                        //Image2.Height = 200;
                        // Image2.Width = 200;
                        Label102.Visible = true;
                        Label102.ForeColor = System.Drawing.Color.Green;
                        Label102.Text = "<center>Your File Size is : " + FileUpload5.FileBytes.Length.ToString() + " KB</center>";
                        FileUpload5.Focus();

                        string filepath = "Images/Student Admission Applications/Semester 2 Marksheets/" + filename;
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
                        FileUpload6.SaveAs(Server.MapPath("Images/Student Admission Applications/Semester 3 Marksheets//" + FileUpload6.FileName));

                        String filename = FileUpload6.FileName;
                        //Image2.ImageUrl = "Images/Student Admission Applications/Semester 3 Marksheets/" + filename;
                        //Image2.Visible = true;
                        //Image2.Height = 200;
                        // Image2.Width = 200;
                        Label113.Visible = true;
                        Label113.ForeColor = System.Drawing.Color.Green;
                        Label113.Text = "<center>Your File Size is : " + FileUpload6.FileBytes.Length.ToString() + " KB</center>";
                        FileUpload6.Focus();

                        string filepath = "Images/Student Admission Applications/Semester 3 Marksheets/" + filename;
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
                        FileUpload7.SaveAs(Server.MapPath("Images/Student Admission Applications/Semester 4 Marksheets//" + FileUpload7.FileName));

                        String filename = FileUpload6.FileName;
                        //Image2.ImageUrl = "Images/Student Admission Applications/Semester 4 Marksheets/" + filename;
                        //Image2.Visible = true;
                        //Image2.Height = 200;
                        // Image2.Width = 200;
                        Label124.Visible = true;
                        Label124.ForeColor = System.Drawing.Color.Green;
                        Label124.Text = "<center>Your File Size is : " + FileUpload7.FileBytes.Length.ToString() + " KB</center>";
                        FileUpload7.Focus();

                        string filepath = "Images/Student Admission Applications/Semester 4 Marksheets/" + filename;
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
                        FileUpload8.SaveAs(Server.MapPath("Images/Student Admission Applications/Semester 5 Marksheets//" + FileUpload8.FileName));

                        String filename = FileUpload6.FileName;
                        //Image2.ImageUrl = "Images/Student Admission Applications/Semester 5 Marksheets/" + filename;
                        //Image2.Visible = true;
                        //Image2.Height = 200;
                        // Image2.Width = 200;
                        Label135.Visible = true;
                        Label135.ForeColor = System.Drawing.Color.Green;
                        Label135.Text = "<center>Your File Size is : " + FileUpload8.FileBytes.Length.ToString() + " KB</center>";
                        FileUpload8.Focus();

                        string filepath = "Images/Student Admission Applications/Semester 5 Marksheets/" + filename;
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











            if (FileUpload9.HasFile)
            {
                String strpath = System.IO.Path.GetExtension(FileUpload9.FileName);

                if (strpath != ".jpg")  //FileUpload9.FileName   //  && strpath != ".jpeg" && strpath != ".png"
                {
                    Label138.Visible = true;
                    Label138.ForeColor = System.Drawing.Color.Red;
                    Label138.Text = "<center>Only (.jpg) File Formats are Accepted..!</center>";  // , .jpeg, .png 
                    FileUpload9.Focus();

                }
                else
                {
                    int filesize = FileUpload9.PostedFile.ContentLength;

                    if (filesize > 1000000)
                    {
                        Label138.Visible = true;
                        Label138.ForeColor = System.Drawing.Color.Red;
                        Label138.Text = "<center>Error : Please Upload files within 1MB only...!</center>";
                        FileUpload9.Focus();
                    }
                    else
                    {
                        Label138.Visible = true;
                        Label138.ForeColor = System.Drawing.Color.Green;

                        Label138.Text = "<center>File (Name : " + FileUpload9.FileName + " ) Uploaded Successfully </center>";
                        FileUpload9.SaveAs(Server.MapPath("Images/Student Admission Applications/Signatures//" + FileUpload9.FileName));

                        String filename = FileUpload9.FileName;
                        Image2.ImageUrl = "Images/Student Admission Applications/Signatures/" + filename;
                        Image2.Visible = true;
                        Image2.Height = 200;
                        Image2.Width = 200;
                        Label139.Visible = true;
                        Label139.ForeColor = System.Drawing.Color.Green;
                        Label139.Text = "<center>Your File Size is : " + FileUpload9.FileBytes.Length.ToString() + " KB</center>";
                        FileUpload9.Focus();

                        string filepath = "Images/Student Admission Applications/Signatures/" + filename;
                        cmd.Parameters.AddWithValue("StdASignature", filename);

                    }
                }
            }
            else
            {
                Label138.Visible = true;
                Label138.ForeColor = System.Drawing.Color.Red;
                Label138.Text = "<center>Error : Please Select Any File...!</center>";
                FileUpload9.Focus();
            }









            if (DropDownList6.Text == "Custom")
            {

                cmd.Parameters.AddWithValue("StdASecQue", TextBox70.Text);

            }
            else if (DropDownList6.Text != "Custom")
            {
                cmd.Parameters.AddWithValue("StdASecQue", DropDownList6.Text);
            }

            else
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('\tError: Please Select Security Qestion First...')</script>");

            }

            //cmd.Parameters.AddWithValue("StdASecQue", );
            cmd.Parameters.AddWithValue("StdASecAns", TextBox71.Text);



            //cmd.Parameters.AddWithValue("", );
            //cmd.CommandText = "insert into New_Stud_Applications values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "')";
            //cmd.Connection = con;


            cmd.ExecuteNonQuery();

            // Personal Details
            DropDownList1.ClearSelection();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            RadioButton1.Checked = false;
            RadioButton2.Checked = false;
            RadioButton3.Checked = false;
            RadioButton4.Checked = false;
            RadioButton5.Checked = false;
            TextBox8.Text = "";
            RadioButton6.Checked = false;
            RadioButton7.Checked = false;
            RadioButton8.Checked = false;
            RadioButton9.Checked = false;
            RadioButton10.Checked = false;
            TextBox9.Text = "";
            TextBox10.Text = "";
            TextBox11.Text = "";
            TextBox12.Text = "";
            TextBox13.Text = "";
            TextBox14.Text = "";

            // Present / Current Address
            TextBox15.Text = "";
            TextBox16.Text = "";
            TextBox17.Text = "";
            TextBox18.Text = "";
            CheckBox1.Checked = false;

            // Permanent Address
            TextBox19.Text = "";
            TextBox20.Text = "";
            TextBox21.Text = "";
            TextBox22.Text = "";

            // Course & Semester Selection 
            DropDownList3.ClearSelection();
            Label41.Visible = false;
            DropDownList4.ClearSelection();
            DropDownList5.ClearSelection();

            // Academic Details

            // Class X Details
            TextBox23.Text = "";
            TextBox24.Text = "";
            TextBox25.Text = "";
            TextBox26.Text = "";
            TextBox27.Text = "";
            TextBox28.Text = "";

            // Class XII Details
            TextBox29.Text = "";
            TextBox30.Text = "";
            TextBox31.Text = "";
            TextBox32.Text = "";
            TextBox33.Text = "";
            TextBox34.Text = "";
            TextBox35.Text = "";

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

            //Password Recovery Information
            DropDownList6.ClearSelection();
            TextBox70.Text = "";
            TextBox71.Text = "";

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
            Response.Write("<script LANGUAGE='JavaScript' >alert('\tError..!''" + ex.ToString() + "')</script>");
            Response.Write("Error" + ex.ToString());

        }

    }
    protected void Button13_Click(object sender, EventArgs e)
    {

    }
    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox5_TextChanged(object sender, EventArgs e)
    {
        Panel1.Visible = true;
    }
    protected void TextBox5_Unload(object sender, EventArgs e)
    {
        Panel1.Visible = true;
    }
}