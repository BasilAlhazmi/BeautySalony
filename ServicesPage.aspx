<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ServicesPage.aspx.cs" Inherits="BeautySalony.ServicesPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Services</title>
    <!--font awesome-->
    <link href="Content/font-awesome.min.css" rel="stylesheet" />
    <!--Bootstrap 4-->
    <link rel="stylesheet" href="Content/bootstrap.min.css" />
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/umd/popper.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>

    <style type="text/css">
        .img-box1 {
            width: 100px;
            height: 100px;
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
        .CardServices {
          background-color: white; 
          color: black; 
          width:250px;
          border:2px solid #008CBA;  
        }

        .CardServices:hover {
          background-color: #008CBA;
          color: white;
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
                                    <h2 style="color: #352d7d;padding-left:40px">Services</h2>
                                </div>
                            </div>
                            <br />
                            <br />
                            <div class="row">
                                <div class="col-md-2.6 mx-auto">
                                    <div class="card CardServices" style="height: 190px; width: 190px;">
                                        <div class="card-body">
                                            <div class="img-box1">
                                                <img src="Images/massage.png" alt="massage" />
                                            </div>
                                            <h3 style="color: #352d7d; font-weight: bold; text-align: center; font-family: Cool Linked Font,cursive; font-size: 22px; padding-top: 20px;">Massage</h3>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-2.6 mx-auto">
                                    <div class="card CardServices" style="height: 190px; width: 190px;">
                                        <div class="card-body">
                                            <div class="img-box1">
                                                <img src="Images/Facial.png" alt="Facial" />
                                            </div>
                                            <h3 style="color: #352d7d; font-weight: bold; text-align: center; font-family: Cool Linked Font,cursive; font-size: 22px; padding-top: 20px;">Facial</h3>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-2.6 mx-auto">
                                    <div class="card CardServices" style="height: 190px; width: 190px;">
                                        <div class="card-body">
                                            <div class="img-box1">
                                                <img src="Images/HairRemoval.png" alt="Waxing" />
                                            </div>
                                            <h3 style="color: #352d7d; font-weight: bold; text-align: center; font-family: Cool Linked Font,cursive; font-size: 22px; padding-top: 20px;">Waxing</h3>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-md-2.6 mx-auto">
                                    <div class="card CardServices" style="height: 190px; width: 190px;">
                                        <div class="card-body">
                                            <div class="img-box1">
                                                <img src="Images/Makeup.png" alt="Makeup" />
                                            </div>
                                            <h3 style="color: #352d7d; font-weight: bold; text-align: center; font-family: Cool Linked Font,cursive; font-size: 22px; padding-top: 20px;">MakeUp</h3>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-2.6 mx-auto">
                                    <div class="card CardServices" style="height: 190px; width: 190px;">
                                        <div class="card-body">
                                            <div class="img-box1">
                                                <img src="Images/NailCare.png" alt="NailCare" />
                                            </div>
                                            <h3 style="color: #352d7d; font-weight: bold; text-align: center; font-family: Cool Linked Font,cursive; font-size: 22px; padding-top: 20px;">Nail Care</h3>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-2.6 mx-auto">
                                    <div class="card CardServices" style="height: 190px; width: 190px;">
                                        <div class="card-body">
                                            <div class="img-box1">
                                                <img src="Images/HairCut.png" alt="HairCut" />
                                            </div>
                                            <h3 style="color: #352d7d; font-weight: bold; text-align: center; font-family: Cool Linked Font,cursive; font-size: 22px; padding-top: 20px;">Hair Cut</h3>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-md-2.6 mx-auto">
                                    <div class="card CardServices" style="height: 190px; width: 190px;">
                                        <div class="card-body">
                                            <div class="img-box1">
                                                <img src="Images/hairdye.png" alt="Hairdye" />
                                            </div>
                                            <h3 style="color: #352d7d; font-weight: bold; text-align: center; font-family: Cool Linked Font,cursive; font-size: 22px; padding-top: 20px;">Hair Dye</h3>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-2.6 mx-auto">
                                    <div class="card CardServices" style="height: 190px; width: 190px;">
                                        <div class="card-body">
                                            <div class="img-box1">
                                                <img src="Images/dryer.png" alt="HairDryer" />
                                            </div>
                                            <h3 style="color: #352d7d; font-weight: bold; text-align: center; font-family: Cool Linked Font,cursive; font-size: 22px; padding-top: 20px;">Hair Dryer</h3>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-2.6 mx-auto">
                                    <div class="card CardServices" style="height: 190px; width: 190px;">
                                        <div class="card-body">
                                            <div class="img-box1">
                                                <img src="Images/shampoo.png" alt="Shampoo" />
                                            </div>
                                            <h3 style="color: #352d7d; font-weight: bold; text-align: center; font-family: Cool Linked Font,cursive; font-size: 22px; padding-top: 20px;">Shampoo</h3>
                                        </div>
                                    </div>
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
