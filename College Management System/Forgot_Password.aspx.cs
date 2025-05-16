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

public partial class Forgot_Password : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Conn"].ConnectionString);

    public static string verificationCode;
    protected void Page_Load(object sender, EventArgs e)
    {

        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = false;
        Label7.Visible = false;




        if (Request.QueryString["utype"].ToString() == "Admin")
        {
            Panel4.Visible = true;
            TextBox3.Text = "rajlalwani5111@gmail.com";
            TextBox3.ReadOnly = true;
        }

        else if (Request.QueryString["utype"].ToString() == "Student")
        {
            Panel2.Visible = true;

            con.Open();
            //Show Data
            SqlCommand cmd2 = new SqlCommand("select * from Student_Details where StdAdmissionID='" + Request.QueryString["uid"].ToString() + "' ", con);
            //cmd2.ExecuteNonQuery();
            SqlDataReader dr = cmd2.ExecuteReader();
            dr.Read();

            if (DropDownList1.Text == "Via Security Question")
            {
                Panel3.Visible = true;
                TextBox1.Text = dr["StdASecQue"].ToString();


            }

            else if (DropDownList1.Text == "Via E-mail Verification")
            {
                Panel4.Visible = true;

            }
            dr.Close();
            con.Close();

        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.Text == "Via Security Question")
        {
            Panel3.Visible = true;

        }

        else if (DropDownList1.Text == "Via E-mail Verification")
        {
            Panel4.Visible = true;

        }
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        con.Open();
        //Show Data
        SqlCommand cmd2 = new SqlCommand("select * from Student_Details where StdAdmissionID='" + Request.QueryString["uid"].ToString() + "' ", con);
        //cmd2.ExecuteNonQuery();
        SqlDataReader dr = cmd2.ExecuteReader();
        dr.Read();

        if (dr["StdASecAns"].ToString() == TextBox2.Text)
        {
            Response.Write("<script type='javascript'>alert('Verification Successful...');</script>");

            Response.Redirect("Reset_Password.aspx?uid=" + Request.QueryString["uid"].ToString() + "&utype=" + Request.QueryString["utype"].ToString());
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        if (Request.QueryString["utype"].ToString() == "Student")
        {
            Panel2.Visible = true;
            Panel4.Visible = true;

            SqlCommand cmd = new SqlCommand("select * from Student_Details where StdAEmail=@StdAEmail", con);

            cmd.Parameters.AddWithValue("StdAEmail", TextBox3.Text);


            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            if (dt.Rows.Count > 0)
            {
                string UserName = "User";
                string UserEmail = TextBox3.Text;

                try
                {
                    SendEmail(UserName, UserEmail);
                    Response.Write("<script>alert('Verification Code Sent Successfuly... ')</script>");
                }
                catch (Exception ex)
                {
                    // Error occurred while sending email
                    //Label27.Visible = true;
                    //Label27.ForeColor = System.Drawing.Color.Red;
                    //Label27.Text = "Error: " + ex.ToString();
                    Response.Write("<script>alert('Error: An Error Occured While Sending Email Verification Code...! ')</script>");
                    Label7.Visible = true;
                    Label7.ForeColor = System.Drawing.Color.Red;
                    Label7.Text = ex.ToString();
                }
            }
            else
            {
                Label7.Visible = true;
                Label7.ForeColor = System.Drawing.Color.Red;
                Label7.Text = "Please Enter Valid  E-mail which is Associated with your user account...!";
            }
        }

        else if (Request.QueryString["utype"].ToString() == "Admin")
        {
            Panel4.Visible = true;

            SqlCommand cmd = new SqlCommand("select * from Admin_Login where LoginID=@LoginID", con);

            cmd.Parameters.AddWithValue("LoginID", Request.QueryString["uid"].ToString());


            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            if (dt.Rows.Count > 0)
            {
                string UserName = "Admin";
                string UserEmail = "rajlalwani5111@gmail.com";

                try
                {
                    SendEmail(UserName, UserEmail);
                    Response.Write("<script>alert('Verification Code Sent Successfuly... ')</script>");
                }
                catch (Exception ex)
                {
                    // Error occurred while sending email
                    //Label27.Visible = true;
                    //Label27.ForeColor = System.Drawing.Color.Red;
                    //Label27.Text = "Error: " + ex.ToString();
                    Response.Write("<script>alert('Error: An Error Occured While Sending Email Verification Code...! ')</script>");
                    Label7.Visible = true;
                    Label7.ForeColor = System.Drawing.Color.Red;
                    Label7.Text = ex.ToString();
                }
            }
            else
            {
                Label7.Visible = true;
                Label7.ForeColor = System.Drawing.Color.Red;
                Label7.Text = "Please Enter Valid  E-mail which is Associated with your user account...!";
            }
        }
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

        mailMessage.Subject = "Email Verification for Updating User ID, Password of Anand Commerce College, BCA";



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


    protected void Button4_Click(object sender, EventArgs e)
    {
        if (Request.QueryString["utype"].ToString() == "Student")
        {
            Panel4.Visible = true;

            if (verificationCode == (TextBox4.Text).ToString())
            {
                Label7.Visible = true;
                Label7.ForeColor = System.Drawing.Color.Green;
                Label7.Text = "E-Mail Verified Successfully...";
                Label7.Focus();
                Response.Redirect("Reset_Password.aspx?uid=" + Request.QueryString["uid"].ToString() + "&utype=" + Request.QueryString["utype"].ToString());


            }

            else
            {
                Label7.Visible = true;
                Label7.ForeColor = System.Drawing.Color.Red;
                Label7.Text = "Error: Invalid Verification Code...";
                Label7.Focus(); ;
            }
        }

        else if (Request.QueryString["utype"].ToString() == "Admin")
        {
            Panel4.Visible = true;

            if (verificationCode == (TextBox4.Text).ToString())
            {
                Label7.Visible = true;
                Label7.ForeColor = System.Drawing.Color.Green;
                Label7.Text = "E-Mail Verified Successfully...";
                Label7.Focus();
                Response.Redirect("Reset_Password.aspx?uid=" + Request.QueryString["uid"].ToString() + "&utype=" + Request.QueryString["utype"].ToString());

            }

            else
            {
                Label7.Visible = true;
                Label7.ForeColor = System.Drawing.Color.Red;
                Label7.Text = "Error: Invalid Verification Code...";
                Label7.Focus(); ;
            }


        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Log in.aspx");
    }
}