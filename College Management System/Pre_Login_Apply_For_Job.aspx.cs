using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
public partial class Pre_Login_Apply_For_Job : System.Web.UI.Page
{
    public string verificationCode;
    public static string to;

    protected void Page_Load(object sender, EventArgs e)
    {
        Label25.Visible = false;
        Label26.Visible = false;
        Image1.Visible = false;
        Panel1.Visible = false;
        Label27.Visible = false;
        Label27.Visible = true;
        //Label41.Visible = false;
        Label68.Visible = false;
        Label69.Visible = false;
        Label78.Visible = false;
        Label79.Visible = false;
        //Image2.Visible = false;
        // Panel3.Visible = true;

        //Panel4.Visible = false;
        Label90.Visible = false;
        Label91.Visible = false;

        // Panel5.Visible = false;
        Label101.Visible = false;
        Label102.Visible = false;

        // Panel6.Visible = false;
        Label112.Visible = false;
        Label113.Visible = false;

        // Panel7.Visible = false;
        Label123.Visible = false;
        Label124.Visible = false;

        // Panel8.Visible = false;
        Label134.Visible = false;
        Label135.Visible = false;

        // Panel9.Visible = false;
        Image2.Visible = false;
        Label138.Visible = false;
        Label139.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //  Label25.Visible = true;



        if (FileUpload1.HasFile)
        {
            String strpath = System.IO.Path.GetExtension(FileUpload1.FileName);

            if (strpath != ".jpg" && strpath != ".pdf" && strpath != ".jpeg" && strpath != ".png")  //FileUpload1.FileName
            {
                Label25.Visible = true;
                Label25.ForeColor = System.Drawing.Color.Red;
                Label25.Text = "Only (jpg, .jpeg, .png, .pdf, ) File Formats are Accepted..!";
            }
            else
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
                    FileUpload1.SaveAs(Server.MapPath("Images/Staff Hiring Applications/Passport Size Photos//" + FileUpload1.FileName));

                    String filename = FileUpload1.FileName;
                    Image1.ImageUrl = "Images/Staff Hiring Applications/Passport Size Photos/" + filename;
                    Image1.Visible = true;
                    Image1.Height = 200;
                    Image1.Width = 200;
                    Label26.Visible = true;
                    Label26.ForeColor = System.Drawing.Color.Green;
                    Label26.Text = "Your File Size is :" + FileUpload1.FileBytes.Length.ToString() + " KB";

                }
            }
        }
        else
        {
            Label25.Visible = true;
            Label25.ForeColor = System.Drawing.Color.Red;
            Label25.Text = "Error : Please Select Any File...!";
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        string userEmail = TextBox5.Text.Trim();

        Random rand = new Random();
        verificationCode = rand.Next(999999).ToString();
        SendVerificationEmail(userEmail, verificationCode);
    }

    private void SendVerificationEmail(string toEmail, string verificationCode)
    {
        string subject = "Email Verification for Admission Application Anand Commerce College BCA";
        string body = "Dear " + TextBox1.Text + ",\n\nYour E-mail Verification code is: " + verificationCode + "\n\nThanks & Regards,\nAnand Commerce College, Anand";

        try
        {
            using (MailMessage message = new MailMessage("anandcommercecollegebca@gmail.com", toEmail, subject, body))
            {
                message.IsBodyHtml = false;

                using (SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587))
                {
                    smtp.Credentials = new System.Net.NetworkCredential("anandcommercecollegebca@gmail.com", "AnandCommerceCollegeBca143");
                    smtp.EnableSsl = true;
                    smtp.Send(message);
                }
            }
            // Email sent successfully
            // You may add code here for further actions after successful email sending
        }
        catch (Exception ex)
        {
            // Error occurred while sending email
            Label27.Visible = true;
            Label27.ForeColor = System.Drawing.Color.Red;
            Label27.Text = "Error: " + ex.ToString();
        }




        //using (MailMessage message = new MailMessage("anandcommerccecollegebca@gmail.com", toEmail, subject, body))
        //{
        //    message.IsBodyHtml = false;

        //    using (SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587))
        //    {
        //        smtp.Credentials = new NetworkCredential("anandcommerccecollegebca@gmail.com", "AnandCommerceCollegeBca143");
        //        smtp.EnableSsl = true;
        //        smtp.Send(message);
        //    }
        //}
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        if (verificationCode == (TextBox6.Text).ToString())
        {
            Label27.Visible = true;
            Label27.ForeColor = System.Drawing.Color.Green;
            Label27.Text = "E-mail Successfully verified..";
        }

        else
        {
            TextBox5.Text = String.Empty;
            Label27.Visible = true;
            Label27.ForeColor = System.Drawing.Color.Red;
            Label27.Text = "Error: Invalid Code..";
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

    }
    protected void Button4_Click(object sender, EventArgs e)
    {

    }
    protected void Button5_Click(object sender, EventArgs e)
    {

    }
    protected void Button6_Click(object sender, EventArgs e)
    {

    }
    protected void Button7_Click(object sender, EventArgs e)
    {

    }
    protected void Button8_Click(object sender, EventArgs e)
    {

    }
    protected void Button9_Click(object sender, EventArgs e)
    {

    }
    protected void Button10_Click(object sender, EventArgs e)
    {

    }
    protected void Button11_Click(object sender, EventArgs e)
    {

    }
    protected void Button12_Click(object sender, EventArgs e)
    {

    }
    protected void Button13_Click(object sender, EventArgs e)
    {

    }
    protected void Button14_Click(object sender, EventArgs e)
    {

    }
    protected void Button15_Click(object sender, EventArgs e)
    {

    }
    protected void Button16_Click(object sender, EventArgs e)
    {

    }

    protected void Button17_Click(object sender, EventArgs e)
    {

    }
    protected void Button18_Click(object sender, EventArgs e)
    {

    }
}