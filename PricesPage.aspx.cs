using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BeautySalony
{
    public partial class PricesPage : System.Web.UI.Page
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