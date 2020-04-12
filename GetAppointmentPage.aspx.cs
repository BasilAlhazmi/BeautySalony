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
    public partial class GetAppointmentPage : System.Web.UI.Page
    {
        string myDatabase = "datasource=localhost;port=3306;username=root;password=root";
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

                    MySqlDataReader myReader = SqlCon.getReader("select FirstName,LastName,username,PhoneNumber from EntrepreneurialTechnology.User where username='" + Session["User"].ToString() + "';");
                    string FirstName = "";
                    string LastName = "";
                    string username = "";
                    string PhoneNumber = "";
                    while (myReader.Read())
                    {
                        if (myReader[0].ToString() == myReader[0] && myReader[1].ToString() == myReader[1] && myReader[2].ToString() == myReader[2] && myReader[3].ToString() == myReader[3])
                        {
                            FirstName += myReader["FirstName"].ToString();
                            LastName += myReader["LastName"].ToString();
                            username += myReader["username"].ToString();
                            PhoneNumber += myReader["PhoneNumber"].ToString();
                        }
                    }
                    SqlCon.CloseTheConnection();
                    txtFirstName.Text = FirstName;
                    txtLastName.Text = LastName;
                    txtUserName.Text = username;
                    txtPhoneNumber.Text = PhoneNumber;

                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }
            }
            if (!IsPostBack)
            {
                ServiceDropdown();
                TimeDropdown();
                Calendar.Visible = false;
            }
        }

        protected void btnImage_Click(object sender, EventArgs e)
        {
            if (Calendar.Visible)
            {
                Calendar.Visible = false;
            }
            else
            {
                Calendar.Visible = true;
            }
            //Calendar.Attributes.Add("style", "position:absolute");
        }

        protected void Calendar_OnSelectionChanged(object sender, EventArgs e)
        {

            //txtSelectDate.Text = Calendar.SelectedDate.ToString("dd/MM/yyyy");
            txtSelectDate.Text = Convert.ToDateTime(Calendar.SelectedDate).ToString("dd/MM/yyyy");
            Calendar.Visible = false;
        }

        protected void Calendar_OnDayRender(object sender, DayRenderEventArgs e)
        {
            DateTime pastYear = e.Day.Date;
            DateTime date = DateTime.Now;
            int year = date.Year;
            int month = date.Month;
            int day = date.Day;
            DateTime today = new DateTime(year, month, day);
            if (pastYear.CompareTo(today) < 0)
            {
                e.Cell.BackColor = System.Drawing.Color.Gray;
                e.Day.IsSelectable = false;
            }
        }

        protected void TimeDropdown()
        {                 
                    MySqlConnection Mycon = new MySqlConnection(myDatabase);
                    Mycon.Open();
                    MySqlCommand Sqlcmd = new MySqlCommand("select * from EntrepreneurialTechnology.TimeTable;", Mycon);
                    Sqlcmd.CommandType = System.Data.CommandType.Text;
                    DDTime.DataSource = Sqlcmd.ExecuteReader();
                    DDTime.DataTextField = "TimeTable";
                    DDTime.DataValueField = "TimeTableId";
                    DDTime.DataBind();
                    DDTime.Items.Insert(0, new ListItem("--Select Time--", "0"));
        }

        protected void ServiceDropdown()
        {
            MySqlConnection Mycon = new MySqlConnection(myDatabase);
            Mycon.Open();
            MySqlCommand Sqlcmd = new MySqlCommand("select * from EntrepreneurialTechnology.Services;", Mycon);
            Sqlcmd.CommandType = System.Data.CommandType.Text;
            DDService.DataSource = Sqlcmd.ExecuteReader();
            DDService.DataTextField = "ServiceName";
            DDService.DataValueField = "ServiceId";
            DDService.DataBind();
            DDService.Items.Insert(0, new ListItem("--Select Service--", "0"));
        }

        protected void DDService_SelectedIndexChanged(object sender, EventArgs e)
        {
            int ServiceId = Convert.ToInt32(DDService.SelectedValue);
            MySqlConnection Mycon = new MySqlConnection(myDatabase);
            Mycon.Open();
            MySqlCommand Sqlcmd = new MySqlCommand("select Hairstylist.HairstylistName FROM EntrepreneurialTechnology.hairstylistSpecialist AS hairstylistSpecialist LEFT JOIN EntrepreneurialTechnology.Services AS Services ON hairstylistSpecialist.ServiceId=Services.ServiceId LEFT JOIN EntrepreneurialTechnology.Hairstylist AS Hairstylist ON hairstylistSpecialist.HairstylistId = Hairstylist.HairstylistId where Services.ServiceId='" + ServiceId+"';", Mycon);
            Sqlcmd.CommandType = System.Data.CommandType.Text;
            DDHairstylist.DataSource = Sqlcmd.ExecuteReader();
            DDHairstylist.DataTextField = "HairstylistName";
            //DDHairstylist.DataValueField = "HairstylistId";
            DDHairstylist.DataBind();
            DDHairstylist.Items.Insert(0, new ListItem("--Select Hairstylist--", "0"));
        }



        protected void btnSaveAppointment_Click(object sender, EventArgs e)
        {
            if (DDService.SelectedItem.Text== DDService.Items[0].Text)
            {
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "<script>$(document).ready(function(){ $('.alert-danger').show(); $('.alert-danger').html('Sorry Select the service'); })</script>");

            }else if (DDHairstylist.SelectedItem.Text==DDHairstylist.Items[0].Text)
            {
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "<script>$(document).ready(function(){ $('.alert-danger').show(); $('.alert-danger').html('Sorry Select the Hairstylist'); })</script>");

            }else if (txtSelectDate.Text=="")
            {
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "<script>$(document).ready(function(){ $('.alert-danger').show(); $('.alert-danger').html('Sorry Select the Date'); })</script>");

            }else if (DDTime.SelectedItem.ToString()=="")
            {
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "<script>$(document).ready(function(){ $('.alert-danger').show(); $('.alert-danger').html('Sorry Select the Time'); })</script>");

            }
            else
            {

                MySqlConnection Mycon = new MySqlConnection(myDatabase);
                MySqlCommand selectCommand = new MySqlCommand("select * from EntrepreneurialTechnology.Appointment where Time='" + DDTime.SelectedItem.Text + "'and Date='"+txtSelectDate.Text+ "'and Stylist='"+DDHairstylist.SelectedItem+ "';", Mycon);
                Mycon.Open();
                MySqlDataAdapter DataAdapter = new MySqlDataAdapter(selectCommand);
                DataSet MyDataSet = new DataSet();
                DataAdapter.Fill(MyDataSet);
                int i = MyDataSet.Tables[0].Rows.Count;
                if (i > 0)
                {
                    Page.ClientScript.RegisterClientScriptBlock(
                        this.GetType(), "alert", "<script>$(document).ready(function(){ $('.alert-danger').show(); $('.alert-danger').html('Sorry This Time has been recieved'); })</script>");
                    MyDataSet.Clear();
                }
                else
                {


                    MySqlConnection Mycon1 = new MySqlConnection(myDatabase);
                    Mycon1.Open();
                    MySqlCommand InsertCommand = new MySqlCommand("insert into EntrepreneurialTechnology.Appointment (FirstName, LastName, username, PhoneNumber, Service, Stylist, Date, Time)values('" + txtFirstName.Text + "','" + txtLastName.Text + "','" + txtUserName.Text + "','" + txtPhoneNumber.Text + "','" + DDService.SelectedItem.Text + "','" + DDHairstylist.SelectedItem.Text + "','" + txtSelectDate.Text + "','" + DDTime.SelectedItem.Text + "');", Mycon1);
                    MySqlDataReader MyReaderToInsert;
                    MyReaderToInsert = InsertCommand.ExecuteReader();
                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "<script>$(document).ready(function(){ $('.alert-success').show(); $('.alert-success').html('Saved succesfully..'); })</script>");
                    while (MyReaderToInsert.Read())
                    {

                    }
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