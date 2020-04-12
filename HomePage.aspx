<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="BeautySalony.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
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
                        <asp:LinkButton ID="LinkAppointmentPage" runat="server" OnClick="LinkAppointmentPage_Click" CssClass="button30 MenuBtn fa fa-sign-in" Visible="false">&nbsp;Get An Appointment</asp:LinkButton>
                        <asp:LinkButton ID="LinkLogout" runat="server" OnClick="LinkLogout_Click" CssClass="button30 MenuBtn fa fa-sign-out" Visible="false">&nbsp;Log Out</asp:LinkButton>
                        <asp:LinkButton ID="linkSignUpPage" runat="server" OnClick="linkSignUpPage_Click" CssClass="button30 MenuBtn fa fa-user-plus">&nbsp;Sign Up</asp:LinkButton><br />
                        <asp:LinkButton ID="linkSignInPage" runat="server" OnClick="linkSignInPage_Click" CssClass="button30 MenuBtn fa fa-sign-in">&nbsp;Sign In</asp:LinkButton><br />
                    </div>
                    <br />
                    <div class="card" style="background-color: #69d5e2;">
                        <div class="card-body">
                            <div class="row">
                                <div class="col">
                                    <h3 style="color: white; font-weight: bold; text-align: center; text-transform: uppercase; font-family: Roboto,sans-serif;">Stylist</h3>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <div class="bd-example">
                                        <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
                                            <!-- Carousel indicators -->
                                            <ol class="carousel-indicators">
                                                <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
                                                <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
                                                <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
                                            </ol>
                                            <!-- Wrapper for carousel items -->
                                            <div class="carousel-inner">
                                                <div class="carousel-item active" style="height: 386px">
                                                    <div class="img-box1">
                                                        <img src="Images/stylist.png" alt="..." />
                                                    </div>
                                                    <br />
                                                    <div class="carousel-caption d-none d-md-block" style="color: black; font-weight: bold">
                                                        <h5>Susan</h5>
                                                        <p>Specializing in Hair Cut</p>
                                                    </div>
                                                </div>
                                                <div class="carousel-item" style="height: 386px">
                                                    <div class="img-box1">
                                                        <img src="Images/stylist.png" alt="..." />
                                                    </div>
                                                    <br />
                                                    <div class="carousel-caption d-none d-md-block" style="color: black; font-weight: bold">
                                                        <h5>Lenda</h5>
                                                        <p>Specializing in Shampoo</p>
                                                    </div>
                                                </div>
                                                <div class="carousel-item" style="height: 386px">
                                                    <div class="img-box1">
                                                        <img src="Images/stylist.png" alt="..." />
                                                    </div>
                                                    <br />
                                                    <div class="carousel-caption d-none d-md-block" style="color: black; font-weight: bold">
                                                        <h5>Mary</h5>
                                                        <p>Specializing in Facial</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Carousel controls -->
                                            <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
                                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                                <span class="sr-only">Previous</span>
                                            </a>
                                            <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
                                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                                <span class="sr-only">Next</span>
                                            </a>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-8 mx-auto">
                    <div class="card" style="background-color: #effafc">
                        <div class="card-body">
                            <div class="card" style="background-color: #ffffff">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-md-8 mx-auto">
                                            <h2 style="color: #352d7d;">Start Book an appintment</h2>
                                            <p style="text-align: justify; color: #b4b2cf">
                                                It started back in 2008 in London around a dining room table. Since then we have been on a mission to inspire people to express their beauty in every way. 
                                                    We believe there is a better way to find and book your hair and beauty services. More choice and the confidence to try new things.
                                                    We want to make booking beauty, styling and wellness appointments simple,
                                                    effortless and fast – around the clock. It’s beauty to the people, no matter what you choose.
                                            </p>

                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-8 mx-auto">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <br />
                            <br />
                            <br />
                            <br />
                            <div class="card" style="background-color: #69d5e2">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-md-8 col-center m-auto">
                                            <h2 style="color: white; text-align: center; text-transform: uppercase; font-family: Roboto,sans-serif; font-weight: bold; position: relative; margin: 30px 0 60px;">Services</h2>
                                            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                                                <!-- Carousel indicators -->
                                                <ol class="carousel-indicators">
                                                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                                                    <li data-target="#myCarousel" data-slide-to="1"></li>
                                                    <li data-target="#myCarousel" data-slide-to="2"></li>
                                                </ol>
                                                <!-- Wrapper for carousel items -->
                                                <div class="carousel-inner">
                                                    <div class="carousel-item active">
                                                        <div class="img-box">
                                                            <img src="Images/HairCut.png" alt="" />
                                                        </div>
                                                        <h2 style="color: black; text-align: center; text-transform: uppercase; font-family: Cool Linked Font,cursive; font-weight: bold; position: relative; margin: 30px 0 60px;">Haircut</h2>
                                                    </div>
                                                    <div class="carousel-item">
                                                        <div class="img-box">
                                                            <img src="Images/shampoo.png" alt="" />
                                                        </div>
                                                        <h2 style="color: black; text-align: center; text-transform: uppercase; font-family: Cool Linked Font,cursive; font-weight: bold; position: relative; margin: 30px 0 60px;">Shampoo</h2>
                                                    </div>
                                                    <div class="carousel-item">
                                                        <div class="img-box">
                                                            <img src="Images/NailCare.png" alt="" />
                                                        </div>
                                                        <h2 style="color: black; text-align: center; text-transform: uppercase; font-family: Cool Linked Font,cursive; font-weight: bold; position: relative; margin: 30px 0 60px;">Nail Care</h2>
                                                    </div>
                                                </div>
                                                <br />
                                                <br />
                                                <!-- Carousel controls -->
                                                <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
                                                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                                    <span class="sr-only">Previous</span>
                                                </a>
                                                <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
                                                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                                    <span class="sr-only">Next</span>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                        </div>
                    </div>
                </div>
            </div>
        </div>

 <div class="card" style="background-color:#69d5e2;height:390px">
      <div class="card-body">
              <div class="row">
                  <div class="col-md-4">
                      <div class="card" style="margin:0px 0px 15px 5px;background-color:#FFF8DC;">
                          <div class="card-body">
                              <h5>ABOUT US</h5>
                                <ul class="list-group list-group-flush">
                                  <li class="list-group-item" style="background-color:#365676;font-weight:bold;color:white"><i class="fa fa-map-marker" aria-hidden="true"></i> Adress:</li>                                    
                                    <p style="color:black">Islamic university of Medinah, Faculty of computer science and</p>
                                    <p style="color:black;margin-top:-22px">Information Technology</p>
                                  <li class="list-group-item" style="background-color:#365676;font-weight:bold;color:white;margin-top:-14px"><i class="fa fa-envelope-o" aria-hidden="true"></i> Have any questions?</li>
                                    <p style="color:black">Basilalhazmi10@gmail.com</p>
                                    <br />
                                  <li class="list-group-item" style="background-color:#365676;font-weight:bold;;margin-top:-21px;color:white"><i class="fa fa-phone" aria-hidden="true"></i> Phone Number:</li>
                                    <p style="color:black">+966 55 903 8514</p>
                                    <p style="color:#FFF8DC;margin-top:-24px">s</p>
                                </ul>
                          </div>
                      </div>
                  </div>
                  <div class="col-md-4">
                      <div class="card" style="margin:0px 0px 15px 0px;background-color:#FFF8DC;">
                          <div class="card-body">
                              <h5>TEAM MEMBERS</h5>
                                <ul class="list-group list-group-flush">
                                  <li class="list-group-item" style="background-color:#365676;font-weight:bold;color:white">Basil Saud Alhazmi</li>                                    
                                    <p style="color:#ee6637;margin-top:-22px;font-weight:bold">Student ID:</p><p style="color:black;margin-top:-39px;margin-left:90px">361018893</p>
                                    <p style="color:#ee6637;margin-top:-22px;font-weight:bold">Department:</p><p style="color:black;margin-top:-39px;margin-left:100px">Information Technology</p>
                                    <p style="color:#ee6637;margin-top:-22px;font-weight:bold">Email Address:</p><p style="color:black;margin-top:-39px;margin-left:115px">Basilalhazmi10@gmail.com</p>
                                   <li class="list-group-item" style="background-color:#365676;font-weight:bold;margin-top:-13px;color:white">Shafiullah Mohammad</li>                                    
                                    <p style="color:#ee6637;margin-top:-22px;font-weight:bold">Student ID:</p><p style="color:black;margin-top:-39px;margin-left:90px">361018893</p>
                                    <p style="color:#ee6637;margin-top:-22px;font-weight:bold">Department:</p><p style="color:black;margin-top:-39px;margin-left:100px">Computer Science</p>
                                    <p style="color:#ee6637;margin-top:-22px;font-weight:bold">Email Address:</p><p style="color:black;margin-top:-39px;margin-left:115px">Shafiullah10@gmail.com</p>                                 
                                    <li class="list-group-item" style="background-color:#365676;font-weight:bold;margin-top:-13px;color:white">Ibraihm Suliman Owaidah</li>
                                    <p style="color:#ee6637;margin-top:-22px;font-weight:bold">Student ID:</p><p style="color:black;margin-top:-39px;margin-left:90px">361018893</p>
                                    <p style="color:#ee6637;margin-top:-22px;font-weight:bold">Department:</p><p style="color:black;margin-top:-39px;margin-left:100px">Information Technology</p>
                                    <p style="color:#ee6637;margin-top:-22px;font-weight:bold">Email Address:</p><p style="color:black;margin-top:-39px;margin-left:115px">Ibraihm909@gmail.com</p>
                                </ul>
                          </div>
                      </div>
                  </div>
                  <div class="col-md-4">
                      <div class="card" style="margin:0px 5px 15px 0px;background-color:#FFF8DC;">
                          <div class="card-body">
                              <h5>SUPERVISED BY</h5>
                                    <ul class="list-group list-group-flush">
                                  <li class="list-group-item" style="background-color:#365676;font-weight:bold;color:white">Dr. Ahmed Alrehaili</li>   
                                    <p style="color:#ee6637;margin-top:-3px;font-weight:bold">Department:</p><p style="color:black;margin-top:-39px;margin-left:100px">Computer Science</p>
                                    <p style="color:#ee6637;margin-top:-24px;font-weight:bold">Email Address:</p><p style="color:black;margin-top:-39px;margin-left:115px">alrehailiium@gmail.com</p>
                                </ul>
                          </div>
                      </div>
                      <div class="card" style="margin:35px 5px 0px 0px;background-color:#FFF8DC;">
                          <div class="card-body">
                              <h5>SOCIAL MEDIA</h5>
                            <a href="http://www.twitter.com" class="fa fa-twitter " style="padding: 20px; font-size: 30px; width: 70px; text-align: center; text-decoration: none; margin: 5px 2px; border-radius: 50%; background: #55ACEE; color: white;"></a>
                            <a href="http://www.facebook.com" class="fa fa-facebook" style="padding: 20px; font-size: 30px; width: 70px; text-align: center; text-decoration: none; margin: 5px 2px; border-radius: 50%; background: #3B5998; color: white;"></a>
                            <a href="http://www.snapchat.com" class="fa fa-snapchat-ghost" style="padding: 20px; font-size: 30px; width: 70px; text-align: center; text-decoration: none; margin: 5px 2px; border-radius: 50%; background: #fffc00; color: white; text-shadow: -1px 0 black, 0 1px black, 1px 0 black, 0 -1px black;"></a>
                          </div>
                      </div>
                  </div>
              </div>
      </div>
  </div>

    </form>
</body>
</html>
