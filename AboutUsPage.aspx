<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AboutUsPage.aspx.cs" Inherits="BeautySalony.AboutUsPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>About Us</title>
    <!--font awesome-->
    <link href="Content/font-awesome.min.css" rel="stylesheet" />
    <!--Bootstrap 4-->
    <link rel="stylesheet" href="Content/bootstrap.min.css" />
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/umd/popper.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>

  <style type="text/css">
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
                </div>
                <div class="col-md-8 mx-auto">
                    <div class="card" style="background-color: #effafc">
                        <div class="card-body">
                            <div class="row">
                                <div class="col">
                                    <h2 style="color: #352d7d;">About Us</h2>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <p style="color: #352d7d;text-align:justify">As we noted in our society that many of females go to beauty salons and wait until the Hairstylist chair is free. The waiting could be more than one hour. When there are many clients waiting the Hairstylist chair to be free, you will thing to leave and come again next time. </p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <p style="color: #352d7d;text-align:justify">It is a web application to book appointments in a beauty salon that continuously provides all services by providing excellent service at a reasonable price and high quality to customer satisfaction. Very easy as the user can book an appointment for a cosmetic service with easy steps. The salon manager can follow up on appointments and evaluation, as well as confirm appointments from smartphone, wherever and whenever they are, at all times. </p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <h2 style="color: #352d7d;">Team Members</h2>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                                        <div class="img-box">
                                                            <img src="Images/Basil.jpeg" alt="" />
                                                        </div>
                                                        <h5 style="color: black; text-align: center; text-transform: uppercase; font-family: Cool Linked Font,cursive; font-weight: bold; position: relative; margin:2px;">Basil Saud Alhazmi</h5>
                                                        <p style="color: black; text-align: center;  font-family: Cool Linked Font,cursive;  position: relative; margin-top:-5px ">Responsible for the programming and public relations department</p>
                                                        <p style="color: black; text-align: center;  font-family: Cool Linked Font,cursive;  position: relative; margin:-17px;">public relations department</p>
                                </div>
                                <div class="col-md-4">
                                                        <div class="img-box">
                                                            <img src="Images/Shafi.jpeg" alt="" />
                                                        </div>
                                                        <h5 style="color: black; text-align: center; text-transform: uppercase; font-family: Cool Linked Font,cursive; font-weight: bold; position: relative; margin:2px;">Shafiullah Mohammad</h5>
                                                        <p style="color: black; text-align: center;  font-family: Cool Linked Font,cursive;  position: relative; margin-top:-5px ">Responsible for the marketing and visual identity</p>
                                </div>
                                <div class="col-md-4">
                                                        <div class="img-box">
                                                            <img src="Images/Ibra1.jpeg" alt="" />
                                                        </div>
                                                        <h5 style="color: black; text-align: center; text-transform: uppercase; font-family: Cool Linked Font,cursive; font-weight: bold; position: relative; margin:2px;">Ibraihm Suliman Owaidah</h5>
                                                        <p style="color: black; text-align: center;  font-family: Cool Linked Font,cursive;  position: relative; margin-top:-5px ">Responsible for research and analysis</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
