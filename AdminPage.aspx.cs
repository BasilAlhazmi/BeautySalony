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
    public partial class AdminPage : System.Web.UI.Page
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
                MySqlDataAdapter sqlDataAdapter = new MySqlDataAdapter("select * from EntrepreneurialTechnology.User", Mycon);
                DataTable MyDataTable = new DataTable();
                sqlDataAdapter.Fill(MyDataTable);
                GridViewAllUser.DataSource = MyDataTable;
                GridViewAllUser.DataBind();

            }
        }


        private void BindingMyData()
        {
            MySqlConnection Mycon = new MySqlConnection(myDatabase);
            Mycon.Open();
            MySqlDataAdapter sqlDataAdapter = new MySqlDataAdapter("select * from EntrepreneurialTechnology.User", Mycon);
            DataTable MyDataTable = new DataTable();
            sqlDataAdapter.Fill(MyDataTable);
            GridViewAllUser.DataSource = MyDataTable;
            GridViewAllUser.DataBind();
        }


        protected void GridViewAllUser_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

            Label username = GridViewAllUser.Rows[e.RowIndex].FindControl("lblusername") as Label;
            string myDatabase = "datasource=localhost;port=3306;username=root;password=root";
            MySqlConnection conn = new MySqlConnection(myDatabase);
            conn.Open();
            MySqlCommand Mycmd = new MySqlCommand();
            Mycmd.CommandText = "DELETE  FROM EntrepreneurialTechnology.User WHERE username = '" + username.Text + "'";
            Mycmd.Parameters.AddWithValue("",username.Text);
            Mycmd.Connection = conn;
            Mycmd.ExecuteNonQuery();
            Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "<script>$(document).ready(function(){ $('.alert-success').show(); $('.alert-success').html('Row Data Has Been Deleted Successfully'); })</script>");
            BindingMyData();



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
 