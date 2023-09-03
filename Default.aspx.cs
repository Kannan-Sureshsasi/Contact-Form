using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Drawing;
using System.Net;
using System.Net.Mail;
using System.Text;

namespace Contact_Form
{
    public partial class _Default : Page
    {
        const String AppPassword = "your_generated_app_password_here";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BTNSUMMIT_Click(object sender, EventArgs e)
        {
            try
            {
                string host = "smtp.elasticemail.com";
                int port = 2525;
                string username = "personalprice75@gmail.com";
                string password = "D1DFBD64E4D6C813C27BFF61F2EBE1AC9201";
                string toEmail = "strkanna24@gmail.com";
                string fromEmail = "personalprice75@gmail.com";
                string subject = txtSubject.Text;
                string body = "Name: " + txtFullName.Text
                            + "<br> Email: " + txtEmailAddress.Text
                            + "<br> Subject: " + txtSubject.Text
                            + "<br> Message: " + txtMessage.Text;

                using (SmtpClient smtpClient = new SmtpClient(host, port))
                {
                    smtpClient.EnableSsl = true;
                    smtpClient.UseDefaultCredentials = false;
                    smtpClient.Credentials = new NetworkCredential(username, password);

                    using (MailMessage mailMessage = new MailMessage(fromEmail, toEmail, subject, body))
                    {
                        mailMessage.IsBodyHtml = true;

                        smtpClient.Send(mailMessage);
                        confirm.Text = "Thank You For Contacting Us!";
                        confirm.ForeColor = System.Drawing.Color.Green;
                    }
                }
            }
            catch (Exception ex)
            {
                confirm.Text = "An error occurred: " + ex.Message;
                confirm.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}