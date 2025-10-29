using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MoviesManagement
{
    public partial class AdminPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlDataSource1.InsertParameters["Title"].DefaultValue = MoviesTitleTextBox.Text;
            SqlDataSource1.InsertParameters["Genre"].DefaultValue = GenreTextBox.Text;
            SqlDataSource1.InsertParameters["Director"].DefaultValue = DirectorTextBox1.Text;
            SqlDataSource1.InsertParameters["Language"].DefaultValue = LangTextBox.Text;
            SqlDataSource1.InsertParameters["ReleaseYear"].DefaultValue = YearTextBox.Text;
            SqlDataSource1.InsertParameters["Rating"].DefaultValue = RatingTextBox.Text;
            SqlDataSource1.InsertParameters["BoxOfficeCollection"].DefaultValue = BoxTextBox.Text;
            SqlDataSource1.InsertParameters["Description"].DefaultValue = DirectorTextBox1.Text;
            int a = SqlDataSource1.Insert();
            if (a > 0)
            {
                Response.Write("New data added successfully");
            }
            else
            {
                Response.Write("Insertion failed");
            }

        }
        
    }
}