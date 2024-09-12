using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Data.SqlTypes;

namespace MovieMeter
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Text;
            string password = txtPassword.Text;

            if (string.IsNullOrEmpty(email) || string.IsNullOrEmpty(password))
            {
                lblMessage.Text = "Email and password are required.";
                return;
            }

            string connectionString = WebConfigurationManager.ConnectionStrings["MovieMeter"].ConnectionString;


            string query = "SELECT * FROM [User] WHERE Email = @Email AND Password = @Password";

            SqlConnection conn = new SqlConnection(connectionString);

            try
            {
               
                using (conn)
                {
                
                    

                    SqlCommand cmd = new SqlCommand(query, conn);


                    cmd.Parameters.AddWithValue("@Email", email);
                    cmd.Parameters.AddWithValue("@Password", password);
                    
                    conn.Open();
                    SqlDataReader rdr = cmd.ExecuteReader();

                    if (rdr.Read())
                    {
                        
                        Session["Email"] = email;
                        Response.Redirect("Home.aspx");
                    }

                    else
                    {

                        lblMessage.Text = "Invalid Email or password.";
                    }
                    

                }
               
            }
            catch (Exception ex)
            {
                // Log the exception and show message
                lblMessage.Text = "An error occurred while processing your request.";

            }

        }
    }
}