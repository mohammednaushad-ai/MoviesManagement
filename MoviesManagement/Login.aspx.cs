using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.Security;


namespace MoviesManagement
{
    public partial class Login : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["WebFormMoviesDBConnectionString2"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "SELECT * FROM Users WHERE Username=@user and PasswordHash=@pass ";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@user", UserNameTextBox.Text);
            string encryptedPassword = FormsAuthentication.HashPasswordForStoringInConfigFile(PasswordTextBox.Text, "SHA1");
            cmd.Parameters.AddWithValue("@pass", encryptedPassword);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                if (dr.Read())
                {
                    Session["username"] = UserNameTextBox.Text;
                    Session["role"] = dr["Role"].ToString();
                    if (dr["Role"].ToString() == "Admin")
                    {
                        Response.Redirect("AdminPage.aspx");
                    }
                    else { 
                        Response.Redirect("UserPage.aspx");
                    }


                }
            }
            else { Response.Write("login failed try again"); }
                con.Close();
            
        }
    }
}