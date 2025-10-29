using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


namespace MoviesManagement
{
    public partial class UserPage : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["WebFormMoviesDBConnectionString2"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (SearchTextBox.Text == "")
            {
                GridView1.Visible = true;
                GridView2.Visible = false;
            }
            else
            {
                using (SqlConnection con = new SqlConnection(cs))
                {
                    string query = @"SELECT Title,Genre,Language,ReleaseYear,Rating,Director FROM Movies 
                     WHERE Title LIKE '%'+@movieName+'%'";

                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("@movieName", SearchTextBox.Text.Trim());

                    con.Open();

                    SqlDataReader rd = cmd.ExecuteReader();
                    if (rd == null)
                    {
                        Response.Write("No movies based your search");
                    }
                    GridView2.Visible = true;
                    GridView2.DataSource = rd;
                    GridView2.DataBind();
                    GridView1.Visible = false;
                }
            }
            
        }
    
    }
}