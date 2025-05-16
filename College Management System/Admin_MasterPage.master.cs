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

public partial class Admin_MasterPage : System.Web.UI.MasterPage
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Conn"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uid"] != null)
        {
          
        }
        else
        {
            Response.Redirect("Pre_Login_Home_Page.aspx");
        }
    }
    protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
    {

    }
}
