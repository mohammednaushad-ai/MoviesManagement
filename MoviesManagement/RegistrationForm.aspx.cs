using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;


namespace MoviesManagement
{
    public partial class RegistrationForm : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["WebFormMoviesDBConnectionString2"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (MaleRadioButton.Checked || FemaleRadioButton.Checked)
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }

        }

<<<<<<< HEAD
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "INSERT INTO Users (FirstName, LastName, Gender, Age, PhoneNumber, EmailAddress, Username, PasswordHash) VALUES (@fname, @lname, @gender, @age, @phone, @email, @username, @password)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@fname", FirstNameTextBox.Text);
            cmd.Parameters.AddWithValue("@lname", LastNameTextBox.Text);
            if (MaleRadioButton.Checked )
            {
                cmd.Parameters.AddWithValue("@gender", "Male");
            }
            else if (FemaleRadioButton.Checked)

            {
                cmd.Parameters.AddWithValue("@gender", "Female");
            }
            cmd.Parameters.AddWithValue("@phone", PhoneNumberTextBox.Text);
            cmd.Parameters.AddWithValue("@email", EmailTextBox.Text);
            cmd.Parameters.AddWithValue("@age", AgeTextBox.Text);
            cmd.Parameters.AddWithValue("@username", UserNameTextBox.Text);

            string encryptedPassword = FormsAuthentication.HashPasswordForStoringInConfigFile(PasswordTextBox.Text,"SHA1");


            cmd.Parameters.AddWithValue("@password", encryptedPassword);
            con.Open();
            int a = cmd.ExecuteNonQuery();
            if (a > 0)
            {
                Response.Write(" Registration  Successful !!!");
            }
            else
            {
                Response.Write("failed");
            }
            con.Close();
=======
        protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (TermsCheckBox.Checked)
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Write("Registration Successful");
>>>>>>> NivasMovie
        }
    }
}