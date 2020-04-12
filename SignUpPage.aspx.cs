using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

namespace BeautySalony
{
    public partial class SignUpPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            string myDatabase = "datasource=localhost;port=3306;username=root;password=root";

            try
            {

                if (txtPassword.Text != txtConfirmPassword.Text)
                {

                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "<script>$(document).ready(function(){ $('.alert-danger').show(); $('.alert-danger').html('Sorry password do not match'); })</script>");

                }
                else if (txtFirstName.Text == "" || txtLastName.Text == "" || txtPhoneNumber.Text == "" || txtUserName.Text == ""
                  || txtEmailAddress.Text == "" || txtPassword.Text == "" || txtConfirmPassword.Text == "")
                {
                    Page.ClientScript.RegisterClientScriptBlock(
                        this.GetType(), "alert", "<script>$(document).ready(function(){ $('.alert-danger').show();" +
                        " $('.alert-danger').html('Please Fill Mandatory Fields'); })</script>");


                }
                else
                {
                    MySqlConnection Mycon1 = new MySqlConnection(myDatabase);
                    MySqlCommand selectCommand = new MySqlCommand("select * from EntrepreneurialTechnology.User where username='" + this.txtUserName.Text + "';", Mycon1);
                    Mycon1.Open();
                    MySqlDataAdapter DataAdapter = new MySqlDataAdapter(selectCommand);
                    DataSet MyDataSet = new DataSet();
                    DataAdapter.Fill(MyDataSet);
                    int i = MyDataSet.Tables[0].Rows.Count;
                    if (i > 0)
                    {
                        Page.ClientScript.RegisterClientScriptBlock(
                            this.GetType(), "alert", "<script>$(document).ready(function(){ $('.alert-danger').show(); $('.alert-danger').html('Duplicate username '); })</script>");
                        MyDataSet.Clear();
                    }
                    else
                    {
                        MySqlConnection Mycon2 = new MySqlConnection(myDatabase);
                        MySqlCommand InsertCommand = new MySqlCommand("insert into EntrepreneurialTechnology.User (FirstName, LastName, PhoneNumber, username, EmailAddress, Password)values('" + txtFirstName.Text + "','" + txtLastName.Text + "','" + txtPhoneNumber.Text + "','" + txtUserName.Text + "','" + txtEmailAddress.Text + "',aes_encrypt('" + txtPassword.Text + "','secret1'));", Mycon2);
                        MySqlDataReader MyReaderToInsert;
                        Mycon2.Open();
                        MyReaderToInsert = InsertCommand.ExecuteReader();
                        Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "<script>$(document).ready(function(){ $('.alert-success').show(); $('.alert-success').html('Saved succesfully..'); })</script>");
                        while (MyReaderToInsert.Read())
                        {

                        }
                    }
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