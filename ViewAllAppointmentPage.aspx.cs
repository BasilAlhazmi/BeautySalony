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
    public partial class ViewAllAppointmentPage : System.Web.UI.Page
    {

        string myDatabase = "datasource=localhost;port=3306;username=root;password=root";

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["UsernameAdmin"] != null)
            {
                LinkAdminLogout.Visible = true;
                linkViewAllAppointment.Visible = true;
                linkAdminUsername.Text = "Hello " + Session["UsernameAdmin"];

                MySqlConnection Mycon = new MySqlConnection(myDatabase);
                Mycon.Open();
                MySqlDataAdapter sqlDataAdapter = new MySqlDataAdapter("select * from EntrepreneurialTechnology.Appointment", Mycon);
                DataTable MyDataTable = new DataTable();
                sqlDataAdapter.Fill(MyDataTable);
                GridViewAllAppointment.DataSource = MyDataTable;
                GridViewAllAppointment.DataBind();

               // Panel1.Visible = true;
                //Panel2.Visible = false;

            }

            if (!IsPostBack)
            {
                DDDate();
                DDOnlyDate();
                DDOnlyTime();

            }
        }

        private void BindingMyData()
        {
            MySqlConnection Mycon = new MySqlConnection(myDatabase);
            Mycon.Open();
            MySqlDataAdapter sqlDataAdapter = new MySqlDataAdapter("select * from EntrepreneurialTechnology.Appointment", Mycon);
            DataTable MyDataTable = new DataTable();
            sqlDataAdapter.Fill(MyDataTable);
            GridViewAllAppointment.DataSource = MyDataTable;
            GridViewAllAppointment.DataBind();
        }

        protected void GridViewAllAppointment_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

            Label AppointmentId = GridViewAllAppointment.Rows[e.RowIndex].FindControl("lblAppointmentId") as Label;
            string myDatabase = "datasource=localhost;port=3306;username=root;password=root";
            MySqlConnection conn = new MySqlConnection(myDatabase);
            conn.Open();
            MySqlCommand Mycmd = new MySqlCommand();
            Mycmd.CommandText = "DELETE  FROM EntrepreneurialTechnology.Appointment WHERE AppointmentId='" + AppointmentId.Text.ToString() + "'";
            Mycmd.Parameters.AddWithValue("", AppointmentId.Text.ToString());
            Mycmd.Connection = conn;
            Mycmd.ExecuteNonQuery();
            Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "<script>$(document).ready(function(){ $('.alert-success').show(); $('.alert-success').html('Row Data Has Been Deleted Successfully'); })</script>");
            BindingMyData();

        }


        protected void DDOnlyDate()
        {
            MySqlConnection Mycon = new MySqlConnection(myDatabase);
            Mycon.Open();
            MySqlCommand Sqlcmd = new MySqlCommand("select distinct(Date) from EntrepreneurialTechnology.Appointment order by (Date);", Mycon);
            Sqlcmd.CommandType = System.Data.CommandType.Text;
            DDDateOnly.DataSource = Sqlcmd.ExecuteReader();
            DDDateOnly.DataTextField = "Date";
            // DDDateOnly.DataValueField = "AppointmentId";
            DDDateOnly.DataBind();
            DDDateOnly.Items.Insert(0, new ListItem("--Select Date--", "0"));
        }

        protected void DDOnlyTime()
        {
            MySqlConnection Mycon = new MySqlConnection(myDatabase);
            Mycon.Open();
            MySqlCommand Sqlcmd = new MySqlCommand("select distinct(Time) from EntrepreneurialTechnology.Appointment order by (time);", Mycon);
            Sqlcmd.CommandType = System.Data.CommandType.Text;
            DDTimeOnly.DataSource = Sqlcmd.ExecuteReader();
            DDTimeOnly.DataTextField = "Time";
            // DDTimeOnly.DataValueField = "AppointmentId";
            DDTimeOnly.DataBind();
            DDTimeOnly.Items.Insert(0, new ListItem("--Select Time--", "0"));
        }

        // this Code only for both Date & Time
        protected void DDDate()
        {

            MySqlConnection Mycon = new MySqlConnection(myDatabase);
            Mycon.Open();
            MySqlCommand Sqlcmd = new MySqlCommand("select distinct(Date) from EntrepreneurialTechnology.Appointment order by (Date);", Mycon);
            Sqlcmd.CommandType = System.Data.CommandType.Text;
            DDDateFromAppointmentTable.DataSource = Sqlcmd.ExecuteReader();
            DDDateFromAppointmentTable.DataTextField = "Date";
           // DDDateFromAppointmentTable.DataValueField = "AppointmentId";
            DDDateFromAppointmentTable.DataBind();
            DDDateFromAppointmentTable.Items.Insert(0, new ListItem("--Select Date--", "0"));
        }

        protected void DDDateFromAppointmentTable_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Panel1.Visible = false;
            //Panel2.Visible = true;
            //int AppointmentId = Convert.ToInt32(DDDateFromAppointmentTable.DataTextField.ToString());
            MySqlConnection Mycon = new MySqlConnection(myDatabase);

            Mycon.Open();

            MySqlCommand Sqlcmd = new MySqlCommand("select distinct(Time) from EntrepreneurialTechnology.Appointment where Date='" + DDDateFromAppointmentTable.SelectedItem + "' order by (time);", Mycon);

            //Time
            Sqlcmd.CommandType = System.Data.CommandType.Text;
            DDTimeFromAppointmentTable.DataSource = Sqlcmd.ExecuteReader();
            DDTimeFromAppointmentTable.DataTextField = "Time";
            DDTimeFromAppointmentTable.DataBind();
            DDTimeFromAppointmentTable.Items.Insert(0, new ListItem("--Select Time--", "0"));
            Mycon.Close();
        }







        protected void btnSearchFilterDateAndTime_Click(object sender, EventArgs e)
        {
            MySqlConnection Mycon = new MySqlConnection(myDatabase);
            Mycon.Open();
            MySqlDataAdapter sqlDataAdapter = new MySqlDataAdapter("select * from EntrepreneurialTechnology.Appointment where Date='" + DDDateFromAppointmentTable.SelectedItem + "' and Time='" +DDTimeFromAppointmentTable.SelectedItem + "';", Mycon);
            DataTable MyDataTable = new DataTable();
            sqlDataAdapter.Fill(MyDataTable);
            GridViewAllAppointment.DataSource = MyDataTable;
            GridViewAllAppointment.DataBind();
        }


        protected void btnDateOnly_Click(object sender, EventArgs e)
        {
            MySqlConnection Mycon = new MySqlConnection(myDatabase);
            Mycon.Open();
            MySqlDataAdapter sqlDataAdapter = new MySqlDataAdapter("select * from EntrepreneurialTechnology.Appointment where Date='" + DDDateOnly.SelectedItem + "';", Mycon);
            DataTable MyDataTable = new DataTable();
            sqlDataAdapter.Fill(MyDataTable);
            GridViewAllAppointment.DataSource = MyDataTable;
            GridViewAllAppointment.DataBind();
        }

        protected void btnTimeOnly_Click(object sender, EventArgs e)
        {
            MySqlConnection Mycon = new MySqlConnection(myDatabase);
            Mycon.Open();
            MySqlDataAdapter sqlDataAdapter = new MySqlDataAdapter("select * from EntrepreneurialTechnology.Appointment where Time='" + DDTimeOnly.SelectedItem + "';", Mycon);
            DataTable MyDataTable = new DataTable();
            sqlDataAdapter.Fill(MyDataTable);
            GridViewAllAppointment.DataSource = MyDataTable;
            GridViewAllAppointment.DataBind();
        }


        protected void BtnViewAll_Click(object sender, EventArgs e)
        {

            MySqlConnection Mycon = new MySqlConnection(myDatabase);
            Mycon.Open();
            MySqlDataAdapter sqlDataAdapter = new MySqlDataAdapter("select * from EntrepreneurialTechnology.Appointment", Mycon);
            DataTable MyDataTable = new DataTable();
            sqlDataAdapter.Fill(MyDataTable);
            GridViewAllAppointment.DataSource = MyDataTable;
            GridViewAllAppointment.DataBind();

            // Panel1.Visible = true;
            //Panel2.Visible = false;

        }



        protected void linkAdminUsername_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminProfilePage.aspx");

        }
        protected void linkViewAllUserPage_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewAllUserPage.aspx");

        }
        protected void linkViewAllAdminPage_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewAllAdminPage.aspx");

        }
        protected void linkViewAllAppointment_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewAllAppointmentPage.aspx");

        }
        protected void LinkAdminLogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminSignInPage.aspx");

        }




    }
}