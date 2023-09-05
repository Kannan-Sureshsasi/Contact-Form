using System;
using System.Data.SqlClient;
using System.Web.UI;

namespace Contact_Form
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BTNSUMMIT_Click(object sender, EventArgs e)
        {
            string FullName = txtFullName.Text;
            string EmailAddress = txtEmailAddress.Text;
            string Subject = txtSubject.Text;
            string Message = txtMessage.Text;

            if (string.IsNullOrWhiteSpace(FullName) || string.IsNullOrWhiteSpace(EmailAddress) || string.IsNullOrWhiteSpace(Subject) || string.IsNullOrWhiteSpace(Message))
            {
                // Display an error message to the user
                ErrorMessageLabel.Text = "Please fill up all the required fields.";
                ErrorMessageLabel.Visible = true;
                SuccessMessageLabel.Visible = false; // Hide success message label
            }

            else
            {
                string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["Contact_Form"].ConnectionString;

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    using (SqlCommand cmd = new SqlCommand("ESP_Contact_Form", connection))
                    {
                        connection.Open();
                        cmd.CommandType = System.Data.CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@type", "insert");
                        cmd.Parameters.AddWithValue("@FullName", FullName);
                        cmd.Parameters.AddWithValue("@EmailAddress", EmailAddress);
                        cmd.Parameters.AddWithValue("@Subject", Subject);
                        cmd.Parameters.AddWithValue("@Message", Message);
                        int rowsAffected = cmd.ExecuteNonQuery();
                        if (rowsAffected < 0)
                        {
                            // Display success message
                            ErrorMessageLabel.Visible = false; // Hide error message label
                            SuccessMessageLabel.Text = "Submitted Successfully!";
                            SuccessMessageLabel.Visible = true;
                        }
                        else
                        {
                            // Display an error message if the submission failed
                            ErrorMessageLabel.Text = "Submission failed. Please try again later.";
                            ErrorMessageLabel.Visible = true;
                            SuccessMessageLabel.Visible = false; // Hide success message label
                        }
                    }
                }
            }
        }
    }
}
