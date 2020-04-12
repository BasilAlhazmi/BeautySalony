using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.Net;
using System.Net.Mail;

namespace BeautySalony
{

    public partial class ForgetPasswordPage : System.Web.UI.Page
    {

        string myDatabase = "datasource=localhost;port=3306;username=root;password=root";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGetPassword_Click(object sender, EventArgs e)
        {
            try
            {
                MySqlConnection Mycon = new MySqlConnection(myDatabase);
                MySqlCommand selectCommand = new MySqlCommand("select FirstName,LastName,username,convert(aes_decrypt(Password,'secret1')using utf8) from EntrepreneurialTechnology.User where EmailAddress='" + this.txtEmailAddress.Text + "';", Mycon);
                Mycon.Open();

                MySqlDataReader myReader = selectCommand.ExecuteReader();

                if (myReader.Read())
                {
                    string FirstName = myReader["FirstName"].ToString();
                    string LastName = myReader["LastName"].ToString();
                    string Username = myReader["username"].ToString();
                    string Password = myReader["convert(aes_decrypt(Password,'secret1')using utf8)"].ToString();

                    MailMessage message = new MailMessage("basilalhazmi9@gmail.com", txtEmailAddress.Text);
                    message.Subject = "Your Password !";
                    message.Body = string.Format("Hello: <p>{0}</p><p>{1}</p><br/>Username is: <p>{2}</p><br/>Password is: <p>{3}</p>", FirstName, LastName, Username, Password);
                    message.IsBodyHtml = true;
                    SmtpClient smtp = new SmtpClient();
                    smtp.Host = "smtp.gmail.com";
                    smtp.EnableSsl = true;
                    NetworkCredential NC = new NetworkCredential();
                    NC.UserName = "basilalhazmi9@gmail.com";
                    NC.Password = "BasilSaud";
                    smtp.UseDefaultCredentials = true;
                    smtp.Credentials = NC;
                    smtp.Port = 587;
                    smtp.Send(message);

                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "<script>$(document).ready(function(){ $('.alert-success').show(); $('.alert-success').html('Your Password has been sent to " + txtEmailAddress.Text + "'); })</script>");
                }
                else
                {
                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "<script>$(document).ready(function(){ $('.alert-danger').show(); $('.alert-danger').html('This Email is not exists !!'); })</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void linkHomePage_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");

        }
        protected void linkAboutUsPage_Click(object sender, EventArgs e)
        {
             Response.Redirect("AboutUsPage.aspx");

        }
        protected void linkPricesPage_Click(object sender, EventArgs e)
        {
             Response.Redirect("PricesPage.aspx");

        }
        protected void linkServicesPage_Click(object sender, EventArgs e)
        {
             Response.Redirect("ServicesPage.aspx");

        }
        protected void linkSignUpPage_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignUpPage.aspx");

        }
        protected void linkSignInPage_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignInPage.aspx");

        }
    }
}