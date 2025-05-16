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

public partial class Log_in : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Conn"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        Label7.Visible = false;

        if (!IsPostBack)
        {
            if (Request.Cookies["uid"] != null && Request.Cookies["upsd"] != null && Request.Cookies["utype"] != null)
            {
                TextBox1.Text = Request.Cookies["uid"].Value;
                TextBox2.Attributes["value"] = Request.Cookies["upsd"].Value;
                DropDownList1.Text = Request.Cookies["utype"].Value;
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        if (DropDownList1.SelectedItem.Text == "Admin")
        {

            SqlCommand cmd = new SqlCommand("select * from Admin_Login where LoginID=@LoginID and LoginPassword=@LoginPassword", con);

            cmd.Parameters.AddWithValue("LoginID", TextBox1.Text);
            cmd.Parameters.AddWithValue("LoginPassword", TextBox2.Text);

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            if (dt.Rows.Count > 0)
            {
                if (CheckBox1.Checked == true)
                {
                    Response.Cookies["uid"].Value = TextBox1.Text;
                    Response.Cookies["upsd"].Value = TextBox2.Text;
                    Response.Cookies["utype"].Value = DropDownList1.Text;
                    Response.Cookies["uid"].Expires = DateTime.Now.AddMinutes(1);
                    Response.Cookies["upsd"].Expires = DateTime.Now.AddMinutes(1);
                    Response.Cookies["utype"].Expires = DateTime.Now.AddMinutes(1);

                }
                else
                {
                    Response.Cookies["uid"].Expires = DateTime.Now.AddMinutes(-1);
                    Response.Cookies["upsd"].Expires = DateTime.Now.AddMinutes(-1);
                    Response.Cookies["utype"].Expires = DateTime.Now.AddMinutes(-1);
                }
                Session["uid"] = TextBox1.Text;
                //Session.RemoveAll();

                Label7.Visible = true;
                Label7.ForeColor = System.Drawing.Color.Green;
                Label7.Text = "<center>" + "Logged in Successfully..." + "<center>";

                Response.Write("<script tytpe='text/JavaScript' >alert('\\talert('\\tLogged in Successfully...')</script>");
                Label7.Focus();
                ClientScript.RegisterClientScriptBlock(this.GetType(), "k", "swal('Logged in Successfully..','thank you for logging in','success')", true);
                Response.Redirect("Admin_Home_Page.aspx");
            }

            else
            {
                Label7.Visible = true;
                Label7.ForeColor = System.Drawing.Color.Red;
                Label7.Text = "<center>" + "\tError: Invalid User Name or Password...!" + "<center>";

                Response.Write("<script LANGUAGE='JavaScript' >alert('\\talert('\\tError: Invalid User Name or Password...!')</script>");
                Label7.Focus();
            }



        }
        //else if (DropDownList1.SelectedItem.Text == "Staff")
        //{
        //    Response.Redirect("Staff_Home_Page.aspx");
        //}
        else if (DropDownList1.SelectedItem.Text == "Student")
        {
            //try
            //{

            SqlCommand cmd = new SqlCommand("select * from Student_Login where LoginID=@LoginID and LoginPassword=@LoginPassword", con);

            cmd.Parameters.AddWithValue("LoginID", TextBox1.Text);
            cmd.Parameters.AddWithValue("LoginPassword", TextBox2.Text);

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            if (dt.Rows.Count > 0)
            {
                if (CheckBox1.Checked == true)
                {
                    Response.Cookies["uid"].Value = TextBox1.Text;
                    Response.Cookies["upsd"].Value = TextBox2.Text;
                    Response.Cookies["utype"].Value = DropDownList1.Text;
                    Response.Cookies["uid"].Expires = DateTime.Now.AddMinutes(1);
                    Response.Cookies["upsd"].Expires = DateTime.Now.AddMinutes(1);
                    Response.Cookies["utype"].Expires = DateTime.Now.AddMinutes(1);

                }
                else
                {
                    Response.Cookies["uid"].Expires = DateTime.Now.AddMinutes(-1);
                    Response.Cookies["upsd"].Expires = DateTime.Now.AddMinutes(-1);
                    Response.Cookies["utype"].Expires = DateTime.Now.AddMinutes(-1);
                }
                Session["uid"] = TextBox1.Text;
                //Session.RemoveAll();

                Label7.Visible = true;
                Label7.ForeColor = System.Drawing.Color.Green;
                Label7.Text = "<center>" + "Logged in Successfully..." + "<center>";
                ClientScript.RegisterClientScriptBlock(this.GetType(), "k", "swal('Logged in Successfully..','thank you for logging in','success')", true);
                Response.Write("<script LANGUAGE='JavaScript' >alert('\\talert('\\tLogged in Successfully...')</script>");
                Label7.Focus();

                Response.Redirect("Student_Home_Page.aspx");
            }

            else
            {
                Label7.Visible = true;
                Label7.ForeColor = System.Drawing.Color.Red;
                Label7.Text = "<center>" + "\tError: Invalid User Name or Password...!" + "<center>";

                Response.Write("<script LANGUAGE='JavaScript' >alert('\\tError: Invalid User Name or Password...!')</script>");
                Label7.Focus();
            }



            //}

            //catch (Exception ex)
            //{
            //    Response.Write("<script LANGUAGE='JavaScript' >alert('alert('\tError: " + ex.ToString() + "')</script>");

            //}

        }





        //if (DropDownList1.SelectedItem.Text == "Admin")
        //{
        //    Response.Redirect("Admin_Home_Page.aspx");
        //}
        //else if (DropDownList1.SelectedItem.Text == "Staff")
        //{
        //    Response.Redirect("Staff_Home_Page.aspx");
        //}
        //else if (DropDownList1.SelectedItem.Text == "Student")
        //{
        //    Response.Redirect("Student_Home_Page.aspx");
        //}


        //if (TextBox1.Text == "admin" && TextBox2.Text == "admin")
        //{
        //    Response.Redirect("Admin_Home_Page.aspx");
        //}

        //else if (TextBox1.Text == "staff" && TextBox2.Text == "staff")
        //{
        //    Response.Redirect("Staff_Home_Page.aspx");
        //}
        //else if (TextBox1.Text == "student" && TextBox2.Text == "student")
        //{
        //    Response.Redirect("Student_Home_Page.aspx");
        //}
        //else 
        //{
        //    Response.Write("<script LANGUAGE='JavaScript' >alert('\tError: Invalid User Name or Password...')</script>");
        //}
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        //TextBox1.Text = String.Empty;
        //TextBox2.Text = String.Empty;
        Response.Redirect("Pre_Login_Home_Page.aspx");
    }

    protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Forgot_Password.aspx?utype=" + DropDownList1.Text + "&uid=" + TextBox1.Text);
    }
}