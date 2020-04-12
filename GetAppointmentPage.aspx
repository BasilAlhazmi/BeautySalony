<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GetAppointmentPage.aspx.cs" Inherits="BeautySalony.GetAppointmentPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Get Appointment</title>
    <!--font awesome-->
    <link href="Content/font-awesome.min.css" rel="stylesheet" />
    <!--Bootstrap 4-->
    <link rel="stylesheet" href="Content/bootstrap.min.css" />
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/umd/popper.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>

    <style type="text/css">
       .center {
            display: block;
            margin-left: auto;
            margin-right: auto;
        }
        .img-box1 {
            width: 255px;
            height: 255px;
            margin: 0 auto;
            padding: 5px;
        }

            .img-box1 img {
                width: 100%;
                height: 100%;
                display: block;
            }

        .img-box {
            width: 135px;
            height: 135px;
            margin: 0 auto;
            padding: 5px;
            border: 1px solid #ddd;
            border-radius: 50%;
        }

            .img-box img {
                width: 100%;
                height: 100%;
                display: block;
                border-radius: 50%;
            }

        .fa:hover {
            opacity: 0.7;
        }

        .button30 {
            background-color: #4CAF50; /* Green */
            border: none;
            color: white;
            padding: 16px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            transition-duration: 0.4s;
            cursor: pointer;
        }

        .MenuBtn {
            background-color: #ffc100;
            color: White;
            width: 250px;
            border-radius: 0px 15px 15px 0px;
        }

        .MenuBtn:hover {
            opacity: 0.6;
            color: black;
            font-weight: bold;
        }
        .CalendarEdit {
            margin-top:3px;
            margin-left:-20px;
        }
    </style>
</head>
<body style="background-color: #352d7d">
    <form id="form1" runat="server">

  <div class="container-fluid" style="padding-top: 10px; padding-bottom: 10px;">
            <div class="row">
                <div class="col-md-4 mx-auto">
                    <div class="btn-group-vertical" style="padding-top: 40px; padding-left: -5px">
                        <asp:LinkButton ID="linkUsername" runat="server" OnClick="linkUsername_Click" CssClass="button30 MenuBtn fa fa-picture-o" Visible="false"></asp:LinkButton><br />
                        <asp:LinkButton ID="linkHomePage" runat="server" OnClick="linkHomePage_Click"  CssClass="button30 MenuBtn fa fa-home">&nbsp;Home</asp:LinkButton><br />
                        <asp:LinkButton ID="linkAboutUsPage" runat="server" OnClick="linkAboutUsPage_Click"  CssClass="button30 MenuBtn fa fa-users">&nbsp;About Us</asp:LinkButton><br />
                        <asp:LinkButton ID="linkPricesPage" runat="server" OnClick="linkPricesPage_Click" CssClass="button30 MenuBtn fa fa-picture-o">&nbsp;Prices</asp:LinkButton><br />
                        <asp:LinkButton ID="linkServicesPage" runat="server" OnClick="linkServicesPage_Click"  CssClass="button30 MenuBtn fa fa-home">&nbsp;Services</asp:LinkButton><br />
                        <asp:LinkButton ID="LinkLogout" runat="server" OnClick="LinkAppointmentPage_Click" CssClass="button30 MenuBtn fa fa-sign-in" Visible="false">&nbsp;Get An Appointment</asp:LinkButton>
                        <asp:LinkButton ID="LinkAppointmentPage" runat="server" OnClick="LinkLogout_Click" CssClass="button30 MenuBtn fa fa-sign-out" Visible="false">&nbsp;Log Out</asp:LinkButton>
                        <asp:LinkButton ID="linkSignUpPage" runat="server" OnClick="linkSignUpPage_Click" CssClass="button30 MenuBtn fa fa-user-plus">&nbsp;Sign Up</asp:LinkButton><br />
                        <asp:LinkButton ID="linkSignInPage" runat="server" OnClick="linkSignInPage_Click" CssClass="button30 MenuBtn fa fa-sign-in">&nbsp;Sign In</asp:LinkButton><br />
                    </div>
                    <br />
                </div>
                <div class="col-md-8 mx-auto">
                    <div class="card" style="background-color: #effafc">
                        <div class="card-body">
                             <h2 style="color: #352d7d;">Start Book an appintment</h2>                           
                            <!--Sign Up forms-->
                            <div class="container-fluid" style="padding-top: 5%;">
                                <div class="row">
                                    <div class="col-md-8 mx-auto">
                                        <div class="card">
                                            <div class="card-body">
                                                <!--Image part-->
                                                <div class="row">
                                                    <div class="col">
                                                        <img class="center" src="images/generaluser.png" width="100" />
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col">
                                                        <h4 style="text-align: center">Appointment Form 
                                                        </h4>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col">
                                                        <hr />
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <asp:Label ID="lblFirstName" runat="server" Text="First Name"></asp:Label>
                                                        <div class="form-group">
                                                            <asp:TextBox CssClass="form-control" ID="txtFirstName" runat="server" placeholder="First Name" Enabled="false"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <asp:Label ID="lblLastName" runat="server" Text="Last Name"></asp:Label>
                                                        <div class="form-group">
                                                            <asp:TextBox CssClass="form-control" ID="txtLastName" runat="server" placeholder="Last Name" Enabled="false"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <asp:Label ID="lblUserName" runat="server" Text="User Name"></asp:Label>
                                                        <div class="form-group">
                                                            <asp:TextBox CssClass="form-control" ID="txtUserName" runat="server" placeholder="User Name" Enabled="false"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <asp:Label ID="lblPhoneNumber" runat="server" Text="Phone Number"></asp:Label>
                                                        <div class="form-group">
                                                            <asp:TextBox CssClass="form-control" ID="txtPhoneNumber" runat="server" placeholder="Phone Number" Enabled="false"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <asp:Label ID="lblSelectService" runat="server" Text="Select Service"></asp:Label>
                                                        <div class="form-group">
                                                            <asp:DropDownList ID="DDService" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="DDService_SelectedIndexChanged"></asp:DropDownList>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <asp:Label ID="lblSelectHairStylist" runat="server" Text="Select Hairstylist"></asp:Label>
                                                        <div class="form-group">
                                                            <asp:DropDownList ID="DDHairstylist" runat="server" CssClass="form-control" AutoPostBack="true"></asp:DropDownList>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-5">
                                                        <asp:Label ID="lblSelectDate" runat="server" Text="Select Date"></asp:Label>
                                                        <div class="form-group">
                                                            <asp:TextBox CssClass="form-control" ID="txtSelectDate" runat="server" placeholder="Select Date" Enabled="true"></asp:TextBox>
                                                            <asp:Calendar ID="Calendar" runat="server" OnSelectionChanged="Calendar_OnSelectionChanged" OnDayRender="Calendar_OnDayRender" NextPrevFormat="FullMonth">
                                                                <DayHeaderStyle BackColor="Red" Font-Bold="True" ForeColor="White" />
                                                                <DayStyle BackColor="White" Font-Bold="True" />
                                                                <NextPrevStyle Font-Bold="True" />
                                                            </asp:Calendar>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-1">
                                                        <br />
                                                            <asp:ImageButton ID="btnImage" runat="server" ImageUrl="~/Images/calendar.png" CssClass="CalendarEdit" OnClick="btnImage_Click"/>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <asp:Label ID="lblSelectTime" runat="server" Text="Select Time"></asp:Label>
                                                        <div class="form-group">
                                                            <asp:DropDownList ID="DDTime" runat="server" CssClass="form-control" AutoPostBack="true"></asp:DropDownList>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-12">
                                                        <asp:Button ID="btnSaveAppointment" class="btn btn-lg btn-block btn-success" runat="server" OnClick="btnSaveAppointment_Click" Text="Save Appointment" />
                                                    </div>
                                                    <br />
                                                    <br />
                                                    <br />
                                                </div>
                                                <div class="row">
                                                    <div class="col">
                                                        <div class="alert alert-success collapse" role="alert">
                                                        </div>
                                                        <div class="alert alert-danger collapse" role="alert"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <br />                       
                            <br />
                            <div class="row">
                                <div class="col">
                                    <h3 style="color: #352d7d">SOCIAL MEDIA</h3>
                                </div>
                            </div>
                            <!-- padding: 20px;font-size: 30px;width: 70px;text-align:center;text-decoration: none;margin: 5px 2px;border-radius: 50%;background: #3B5998;color: white;-->
                            <a href="http://www.facebook.com" class="fa fa-facebook" style="padding: 20px; font-size: 30px; width: 70px; text-align: center; text-decoration: none; margin: 5px 2px; border-radius: 50%; background: #3B5998; color: white;"></a>
                            <a href="http://www.twitter.com" class="fa fa-twitter " style="padding: 20px; font-size: 30px; width: 70px; text-align: center; text-decoration: none; margin: 5px 2px; border-radius: 50%; background: #55ACEE; color: white;"></a>
                            <a href="http://www.snapchat.com" class="fa fa-snapchat-ghost" style="padding: 20px; font-size: 30px; width: 70px; text-align: center; text-decoration: none; margin: 5px 2px; border-radius: 50%; background: #fffc00; color: white; text-shadow: -1px 0 black, 0 1px black, 1px 0 black, 0 -1px black;"></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
