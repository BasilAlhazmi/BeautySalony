using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using BeautySalony;

namespace BeautySalony
{
    public partial class UserProfilePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["User"] != null)
            {
                linkSignInPage.Visible = false;
                linkSignUpPage.Visible = false;
                LinkLogout.Visible = true;
                linkUsername.Visible = true;
                LinkAppointmentPage.Visible = true;
                linkUsername.Text = "Hello " + Session["User"];

                try
                {
                    SqlConnection SqlCon = new SqlConnection();

                    lblProfileName.Text = Session["User"].ToString();
                    MySqlDataReader myReader = SqlCon.getReader("select FirstName,LastName,PhoneNumber,username,EmailAddress from EntrepreneurialTechnology.User where username='" + lblProfileName.Text + "';");
                    //convert(userID using utf8)
                    string FirstName = "";
                    string LastName = "";
                    string PhoneNumber = "";
                    string username = "";
                    string EmailAddress = "";
                    while (myReader.Read())
                    {
                        if (myReader[0].ToString() == myReader[0] && myReader[1].ToString() == myReader[1] && myReader[2].ToString() == myReader[2] && myReader[3].ToString() == myReader[3] && myReader[4].ToString() == myReader[4])
                        {
                            FirstName += myReader["FirstName"].ToString();
                            LastName += myReader["LastName"].ToString();
                            PhoneNumber += myReader["PhoneNumber"].ToString();
                            username += myReader["username"].ToString();
                            EmailAddress += myReader["EmailAddress"].ToString();
                        }
                    }
                    SqlCon.CloseTheConnection();
                    LblFirstName.Text = FirstName;
                    LblLastName.Text = LastName;
                    LblPhoneNumber.Text = PhoneNumber;
                    LblUserName.Text = username;
                    LblEmailAddress.Text = EmailAddress;

                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }


            }
        }


        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string myDatabase = "datasource=localhost;port=3306;username=root;password=root";

            MySqlConnection Mycon3 = new MySqlConnection(myDatabase);
            MySqlCommand selectCheckUsername = new MySqlCommand("select * from EntrepreneurialTechnology.User where username='" + this.txtUserName.Text + "';", Mycon3);
            Mycon3.Open();
            MySqlDataAdapter DataAdapterUsername = new MySqlDataAdapter(selectCheckUsername);
            DataSet MyDataSetUsername = new DataSet();
            DataAdapterUsername.Fill(MyDataSetUsername);
            int j = MyDataSetUsername.Tables[0].Rows.Count;
            if (j > 0)
            {
                Page.ClientScript.RegisterClientScriptBlock(
                     this.GetType(), "alert", "<script>$(document).ready(function(){ $('.alert-danger').show(); $('.alert-danger').html('Sorry dublicated username'); })</script>");
                MyDataSetUsername.Clear();

            }
            else
            {

                if (txtFirstName.Text == "" || txtLastName.Text == "" || txtPhoneNumber.Text == "" || txtEmailAddress.Text == "" || txtUserName.Text == "" || txtOldPassword.Text == "" || txtNewPassword.Text == "")
                {
                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "<script>$(document).ready(function(){ $('.alert-success').show(); $('.alert-success').html('Sorry, you need to refill all fields..'); })</script>");


                }
                else
                {
                    MySqlConnection Mycon1 = new MySqlConnection(myDatabase);
                    MySqlDataAdapter selectCommand = new MySqlDataAdapter("select Password from EntrepreneurialTechnology.User where Password=aes_encrypt('" + this.txtOldPassword.Text + "','secret1');", Mycon1);
                    DataTable dt = new DataTable();
                    selectCommand.Fill(dt);

                    if (dt.Rows.Count.ToString() == "1")
                    {
                        Mycon1.Open();
                        MySqlCommand cmd = new MySqlCommand("update EntrepreneurialTechnology.User set FirstName='" + txtFirstName.Text + "',LastName='" + txtLastName.Text + "',PhoneNumber='" + txtPhoneNumber.Text + "',EmailAddress='" + txtEmailAddress.Text + "',username='" + txtUserName.Text + "',Password=aes_encrypt('" + this.txtNewPassword.Text + "','secret1') where username='" + LblUserName.Text + "';", Mycon1);
                        cmd.ExecuteNonQuery();
                        Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "<script>$(document).ready(function(){ $('.alert-success').show(); $('.alert-success').html('Saved succesfully..'); })</script>");
                        Mycon1.Close();

                        try
                        {
                            Session["User"] = txtUserName.Text;
                            SqlConnection SqlCon = new SqlConnection();
                            MySqlDataReader myReader1 = SqlCon.getReader("select FirstName,LastName,PhoneNumber,username,EmailAddress from EntrepreneurialTechnology.User where username='" + txtUserName.Text + "';");
                            //convert(userID using utf8)
                            string FirstName = "";
                            string LastName = "";
                            string PhoneNumber = "";
                            string username = "";
                            string EmailAddress = "";
                            while (myReader1.Read())
                            {
                                if (myReader1[0].ToString() == myReader1[0] && myReader1[1].ToString() == myReader1[1] && myReader1[2].ToString() == myReader1[2] && myReader1[3].ToString() == myReader1[3] && myReader1[4].ToString() == myReader1[4])
                                {
                                    FirstName += myReader1["FirstName"].ToString();
                                    LastName += myReader1["LastName"].ToString();
                                    PhoneNumber += myReader1["PhoneNumber"].ToString();
                                    username += myReader1["username"].ToString();
                                    EmailAddress += myReader1["EmailAddress"].ToString();
                                }
                            }
                            SqlCon.CloseTheConnection();
                            LblFirstName.Text = FirstName;
                            LblLastName.Text = LastName;
                            LblPhoneNumber.Text = PhoneNumber;
                            LblUserName.Text = username;
                            LblEmailAddress.Text = EmailAddress;
                            Response.Redirect("UserProfilePage.aspx");

                        }
                        catch (Exception ex)
                        {
                            Response.Write(ex.Message);
                        }

                    }
                    else
                    {
                        Page.ClientScript.RegisterClientScriptBlock(
                            this.GetType(), "alert", "<script>$(document).ready(function(){ $('.alert-danger').show(); $('.alert-danger').html('Sorry the old Password is incorrect'); })</script>");
                        //MyDataSet.Clear();  
                    }




                    //MySqlDataReader myReader;
                    //Mycon1.Open();
                    //myReader = selectCommand.ExecuteReader();
                    //int count = 0;
                    //while (myReader.Read())
                    //{
                    //    count = count + 1;
                    //}
                    //if (count == 1)
                    //{

                    //    MySqlConnection Mycon2 = new MySqlConnection(myDatabase);
                    //    MySqlCommand cmd = new MySqlCommand("update EntrepreneurialTechnology.AdminTable set FirstName='" + txtFirstName.Text + "',LastName='" + txtLastName.Text + "',PhoneNumber='" + txtPhoneNumber.Text + "',EmailAddress='" + txtEmailAddress.Text + "',username='" + txtUserName.Text + "',Password=aes_encrypt('" + txtNewPassword.Text + "','secrect1') where username='" + LblUserName.Text + "';", Mycon2);
                    //    Mycon2.Open();
                    //    MySqlDataReader myred;
                    //    myred = cmd.ExecuteReader();
                    //    while (myred.Read())
                    //    {

                    //    }

                    //    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "<script>$(document).ready(function(){ $('.alert-success').show(); $('.alert-success').html('Saved succesfully..'); })</script>");
                    //    Mycon2.Close();

                    //    try
                    //    {
                    //        Session["UsernameAdmin"] = txtUserName.Text;
                    //        SqlConnection SqlCon = new SqlConnection();
                    //        MySqlDataReader myReader1 = SqlCon.getReader("select FirstName,LastName,PhoneNumber,username,EmailAddress from EntrepreneurialTechnology.AdminTable where username='" + txtUserName.Text + "';");
                    //        //convert(userID using utf8)
                    //        string FirstName = "";
                    //        string LastName = "";
                    //        string PhoneNumber = "";
                    //        string username = "";
                    //        string EmailAddress = "";
                    //        while (myReader1.Read())
                    //        {
                    //            if (myReader1[0].ToString() == myReader1[0] && myReader1[1].ToString() == myReader1[1] && myReader1[2].ToString() == myReader1[2] && myReader1[3].ToString() == myReader1[3] && myReader1[4].ToString() == myReader1[4])
                    //            {
                    //                FirstName += myReader1["FirstName"].ToString();
                    //                LastName += myReader1["LastName"].ToString();
                    //                PhoneNumber += myReader1["PhoneNumber"].ToString();
                    //                username += myReader1["username"].ToString();
                    //                EmailAddress += myReader1["EmailAddress"].ToString();
                    //            }
                    //        }
                    //        SqlCon.CloseTheConnection();
                    //        LblFirstName.Text = FirstName;
                    //        LblLastName.Text = LastName;
                    //        LblPhoneNumber.Text = PhoneNumber;
                    //        LblUserName.Text = username;
                    //        LblEmailAddress.Text = EmailAddress;
                    //        Response.Redirect("AdminProfilePage.aspx");

                    //    }
                    //    catch (Exception ex)
                    //    {
                    //        Response.Write(ex.Message);
                    //    }
                    //}
                    //else
                    //{
                    //    Page.ClientScript.RegisterClientScriptBlock(
                    //        this.GetType(), "alert", "<script>$(document).ready(function(){ $('.alert-danger').show(); $('.alert-danger').html('Sorry the old Password is incorrect'); })</script>");
                    //    //MyDataSet.Clear();  
                    //}




                    //MySqlDataAdapter DataAdapter = new MySqlDataAdapter(selectCommand);
                    //DataSet MyDataSet = new DataSet();
                    //DataAdapter.Fill(MyDataSet);
                    //int i = MyDataSet.Tables[0].Rows.Count;
                    //if (i > 0)
                    //{

                    //}
                    //else
                    //{
                    //}
                }
            }

        }



        protected void linkUsername_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserProfilePage.aspx");

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
        protected void LinkAppointmentPage_Click(object sender, EventArgs e)
        {
            Response.Redirect("GetAppointmentPage.aspx");

        }
        protected void linkSignUpPage_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignUpPage.aspx");

        }
        protected void linkSignInPage_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignInPage.aspx");

        }
        protected void LinkLogout_Click(object sender, EventArgs e)
        {

            //Session.Abandon();
            //Session.RemoveAll();
            Session.Clear();
            Session.RemoveAll();
            // if (Session["User"] == null)
            //{
            //     LinkSignIn.Visible = true;
            //    LinkSignUp.Visible = true;
            //   LinkLogout.Visible = false;
            //  LinkUserName.Visible = false;
            //  LinkAppointmentPage.Visible = false;

            // }

            Response.Redirect("HomePage.aspx");

        }



    }
}