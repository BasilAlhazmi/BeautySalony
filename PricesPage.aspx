<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PricesPage.aspx.cs" Inherits="BeautySalony.PricesPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Prices Page</title>
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
            width: 250px;
            border: 2px solid #008CBA;
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
                                    <h2 style="color: #352d7d; padding-left: 40px">Prices Tabel</h2>
                                </div>
                            </div>
                            <br />
                            <br />
                            <div class="row">
                                <div class="col-md-4 mx-auto">
                                    <div class="card CardServices" style="height: 450px; width: 400px;">
                                        <div class="card-body">
                                            <div class="img-box1">
                                                <img src="Images/haircut.png" alt="Facial" />
                                            </div>
                                            <h3 style="color: #352d7d; font-weight: bold; text-align: center; font-family: Cool Linked Font,cursive; font-size: 22px;">Haircut</h3>
                                            <h4 style="color: black; font-weight: bold; text-align: left; font-family: Cool Linked Font,cursive; font-size: 18px; padding-left: 5px">Starting from</h4>
                                            <h4 style="color: black; font-weight: bold; text-align: left; font-family: Cool Linked Font,cursive; font-size: 18px;">$50</h4>
                                            <hr />
                                            <div class="row">
                                                <div class="col-md-8 mx-auto">
                                                    <p style="color: black; font-weight: bold; text-align: left; font-family: 'Courier New', monospace; font-size: 18px; padding-left: 5px">Teen's haircut</p>
                                                </div>
                                                <div class="col-md-4 mx-auto">
                                                    <p style="color: black; font-weight: bold; text-align: left; font-family: 'Courier New', monospace; font-size: 18px;">$45</p>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-8 mx-auto">
                                                    <p style="color: black; font-weight: bold; text-align: left; font-family: 'Courier New', monospace; font-size: 18px; padding-left: 5px">Children's haircut</p>
                                                </div>
                                                <div class="col-md-4 mx-auto">
                                                    <p style="color: black; font-weight: bold; text-align: left; font-family: 'Courier New', monospace; font-size: 18px;">$56</p>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-8 mx-auto">
                                                    <p style="color: black; font-weight: bold; text-align: left; font-family: 'Courier New', monospace; font-size: 18px; padding-left: 5px">Women's haircut</p>
                                                </div>
                                                <div class="col-md-4 mx-auto">
                                                    <p style="color: black; font-weight: bold; text-align: left; font-family: 'Courier New', monospace; font-size: 18px;">$76</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4 mx-auto">
                                    <div class="card CardServices" style="height: 450px; width: 400px;">
                                        <div class="card-body">
                                            <div class="img-box1">
                                                <img src="Images/Makeup.png" alt="Facial" />
                                            </div>
                                            <h3 style="color: #352d7d; font-weight: bold; text-align: center; font-family: Cool Linked Font,cursive; font-size: 22px;">Makeup</h3>
                                            <h4 style="color: black; font-weight: bold; text-align: left; font-family: Cool Linked Font,cursive; font-size: 18px; padding-left: 5px">Starting from</h4>
                                            <h4 style="color: black; font-weight: bold; text-align: left; font-family: Cool Linked Font,cursive; font-size: 18px;">$50</h4>
                                            <hr />
                                            <div class="row">
                                                <div class="col-md-8 mx-auto">
                                                    <p style="color: black; font-weight: bold; text-align: left; font-family: 'Courier New', monospace; font-size: 18px; padding-left: 5px">Just eyes</p>
                                                </div>
                                                <div class="col-md-4 mx-auto">
                                                    <p style="color: black; font-weight: bold; text-align: left; font-family: 'Courier New', monospace; font-size: 18px;">$45</p>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-8 mx-auto">
                                                    <p style="color: black; font-weight: bold; text-align: left; font-family: 'Courier New', monospace; font-size: 18px; padding-left: 5px">Bridal trail</p>
                                                </div>
                                                <div class="col-md-4 mx-auto">
                                                    <p style="color: black; font-weight: bold; text-align: left; font-family: 'Courier New', monospace; font-size: 18px;">$42</p>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-8 mx-auto">
                                                    <p style="color: black; font-weight: bold; text-align: left; font-family: 'Courier New', monospace; font-size: 18px; padding-left: 5px">Regular makeup</p>
                                                </div>
                                                <div class="col-md-4 mx-auto">
                                                    <p style="color: black; font-weight: bold; text-align: left; font-family: 'Courier New', monospace; font-size: 18px;">$56</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-md-4 mx-auto">
                                    <div class="card CardServices" style="height: 450px; width: 400px;">
                                        <div class="card-body">
                                            <div class="img-box1">
                                                <img src="Images/hairdye.png" alt="Facial" />
                                            </div>
                                            <h3 style="color: #352d7d; font-weight: bold; text-align: center; font-family: Cool Linked Font,cursive; font-size: 22px;">Hair Dye</h3>
                                            <h4 style="color: black; font-weight: bold; text-align: left; font-family: Cool Linked Font,cursive; font-size: 18px; padding-left: 5px">Starting from</h4>
                                            <h4 style="color: black; font-weight: bold; text-align: left; font-family: Cool Linked Font,cursive; font-size: 18px;">$60</h4>
                                            <hr />
                                            <div class="row">
                                                <div class="col-md-8 mx-auto">
                                                    <p style="color: black; font-weight: bold; text-align: left; font-family: 'Courier New', monospace; font-size: 18px; padding-left: 5px">Highlight (Short Hair)</p>
                                                </div>
                                                <div class="col-md-4 mx-auto">
                                                    <p style="color: black; font-weight: bold; text-align: left; font-family: 'Courier New', monospace; font-size: 18px;">$60</p>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-8 mx-auto">
                                                    <p style="color: black; font-weight: bold; text-align: left; font-family: 'Courier New', monospace; font-size: 18px; padding-left: 5px">Highlight (Long Hair)</p>
                                                </div>
                                                <div class="col-md-4 mx-auto">
                                                    <p style="color: black; font-weight: bold; text-align: left; font-family: 'Courier New', monospace; font-size: 18px;">$90</p>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-8 mx-auto">
                                                    <p style="color: black; font-weight: bold; text-align: left; font-family: 'Courier New', monospace; font-size: 18px; padding-left: 5px">Additional Color</p>
                                                </div>
                                                <div class="col-md-4 mx-auto">
                                                    <p style="color: black; font-weight: bold; text-align: left; font-family: 'Courier New', monospace; font-size: 18px;">$65</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4 mx-auto">
                                    <div class="card CardServices" style="height: 450px; width: 400px;">
                                        <div class="card-body">
                                            <div class="img-box1">
                                                <img src="Images/Facial.png" alt="Facial" />
                                            </div>
                                            <h3 style="color: #352d7d; font-weight: bold; text-align: center; font-family: Cool Linked Font,cursive; font-size: 22px;">Facial</h3>
                                            <h4 style="color: black; font-weight: bold; text-align: left; font-family: Cool Linked Font,cursive; font-size: 18px; padding-left: 5px">Starting from</h4>
                                            <h4 style="color: black; font-weight: bold; text-align: left; font-family: Cool Linked Font,cursive; font-size: 18px;">$50</h4>
                                            <hr />
                                            <div class="row">
                                                <div class="col-md-8 mx-auto">
                                                    <p style="color: black; font-weight: bold; text-align: left; font-family: 'Courier New', monospace; font-size: 18px; padding-left: 5px">For Teens</p>
                                                </div>
                                                <div class="col-md-4 mx-auto">
                                                    <p style="color: black; font-weight: bold; text-align: left; font-family: 'Courier New', monospace; font-size: 18px;">$35</p>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-8 mx-auto">
                                                    <p style="color: black; font-weight: bold; text-align: left; font-family: 'Courier New', monospace; font-size: 18px; padding-left: 5px">For Childrens</p>
                                                </div>
                                                <div class="col-md-4 mx-auto">
                                                    <p style="color: black; font-weight: bold; text-align: left; font-family: 'Courier New', monospace; font-size: 18px;">$20</p>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-8 mx-auto">
                                                    <p style="color: black; font-weight: bold; text-align: left; font-family: 'Courier New', monospace; font-size: 18px; padding-left: 5px">For Women</p>
                                                </div>
                                                <div class="col-md-4 mx-auto">
                                                    <p style="color: black; font-weight: bold; text-align: left; font-family: 'Courier New', monospace; font-size: 18px;">$70</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-md-4 mx-auto">
                                    <div class="card CardServices" style="height: 450px; width: 400px;">
                                        <div class="card-body">
                                            <div class="img-box1">
                                                <img src="Images/dryer.png" alt="Facial" />
                                            </div>
                                            <h3 style="color: #352d7d; font-weight: bold; text-align: center; font-family: Cool Linked Font,cursive; font-size: 22px;">Dryer</h3>
                                            <h4 style="color: black; font-weight: bold; text-align: left; font-family: Cool Linked Font,cursive; font-size: 18px; padding-left: 5px">Starting from</h4>
                                            <h4 style="color: black; font-weight: bold; text-align: left; font-family: Cool Linked Font,cursive; font-size: 18px;">$20</h4>
                                            <hr />
                                            <div class="row">
                                                <div class="col-md-8 mx-auto">
                                                    <p style="color: black; font-weight: bold; text-align: left; font-family: 'Courier New', monospace; font-size: 18px; padding-left: 5px">Long Hair</p>
                                                </div>
                                                <div class="col-md-4 mx-auto">
                                                    <p style="color: black; font-weight: bold; text-align: left; font-family: 'Courier New', monospace; font-size: 18px;">$45</p>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-8 mx-auto">
                                                    <p style="color: black; font-weight: bold; text-align: left; font-family: 'Courier New', monospace; font-size: 18px; padding-left: 5px">Short Hair</p>
                                                </div>
                                                <div class="col-md-4 mx-auto">
                                                    <p style="color: black; font-weight: bold; text-align: left; font-family: 'Courier New', monospace; font-size: 18px;">$30</p>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-8 mx-auto">
                                                    <p style="color: black; font-weight: bold; text-align: left; font-family: 'Courier New', monospace; font-size: 18px; padding-left: 5px">For Childrens</p>
                                                </div>
                                                <div class="col-md-4 mx-auto">
                                                    <p style="color: black; font-weight: bold; text-align: left; font-family: 'Courier New', monospace; font-size: 18px;">$20</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4 mx-auto">
                                    <div class="card CardServices" style="height: 450px; width: 400px;">
                                        <div class="card-body">
                                            <div class="img-box1">
                                                <img src="Images/shampoo.png" alt="Facial" />
                                            </div>
                                            <h3 style="color: #352d7d; font-weight: bold; text-align: center; font-family: Cool Linked Font,cursive; font-size: 22px;">Shampoo</h3>
                                            <h4 style="color: black; font-weight: bold; text-align: left; font-family: Cool Linked Font,cursive; font-size: 18px; padding-left: 5px">Starting from</h4>
                                            <h4 style="color: black; font-weight: bold; text-align: left; font-family: Cool Linked Font,cursive; font-size: 18px;">$20</h4>
                                            <hr />
                                            <div class="row">
                                                <div class="col-md-8 mx-auto">
                                                    <p style="color: black; font-weight: bold; text-align: left; font-family: 'Courier New', monospace; font-size: 18px; padding-left: 5px">Long Hair</p>
                                                </div>
                                                <div class="col-md-4 mx-auto">
                                                    <p style="color: black; font-weight: bold; text-align: left; font-family: 'Courier New', monospace; font-size: 18px;">$45</p>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-8 mx-auto">
                                                    <p style="color: black; font-weight: bold; text-align: left; font-family: 'Courier New', monospace; font-size: 18px; padding-left: 5px">Short Hair</p>
                                                </div>
                                                <div class="col-md-4 mx-auto">
                                                    <p style="color: black; font-weight: bold; text-align: left; font-family: 'Courier New', monospace; font-size: 18px;">$30</p>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-8 mx-auto">
                                                    <p style="color: black; font-weight: bold; text-align: left; font-family: 'Courier New', monospace; font-size: 18px; padding-left: 5px">For Childrens</p>
                                                </div>
                                                <div class="col-md-4 mx-auto">
                                                    <p style="color: black; font-weight: bold; text-align: left; font-family: 'Courier New', monospace; font-size: 18px;">$20</p>
                                                </div>
                                            </div>
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
