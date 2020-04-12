<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserProfilePage.aspx.cs" Inherits="BeautySalony.UserProfilePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Profile</title>
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
                </div>
                <div class="col-md-8 mx-auto">
                    <div class="card" style="background-color: #effafc">
                        <div class="card-body">
                             <h2 style="color: #352d7d;">User Profile</h2>                           
                            <br />
                            <!--Profile forms-->
                            <!--Image part-->
                            <div class="row">
                                <div class="col">
                                    <img class="center" src="images/generaluser.png" width="100" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <h4 style="text-align: center">
                                        <asp:Label ID="lblProfileName" runat="server"> </asp:Label>
                                    </h4>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <hr />
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-4">
                                    <asp:Label  runat="server" Text="First Name:"></asp:Label>
                                    <asp:Label ID="LblFirstName" runat="server" ></asp:Label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="txtFirstName" runat="server" placeholder="First Name"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <asp:Label  runat="server" Text="Last Name:"></asp:Label>
                                    <asp:Label ID="LblLastName" runat="server"></asp:Label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="txtLastName" runat="server" placeholder="Last Name"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <asp:Label  runat="server" Text="Phone Number:"></asp:Label>
                                    <asp:Label ID="LblPhoneNumber" runat="server" ></asp:Label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="txtPhoneNumber" runat="server" placeholder="Phone Number"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <asp:Label  runat="server" Text="Email Address:"></asp:Label>
                                    <asp:Label ID="LblEmailAddress" runat="server"></asp:Label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="txtEmailAddress" runat="server" placeholder="Email Address"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <asp:Label  runat="server" Text="User Name:"></asp:Label>
                                    <asp:Label ID="LblUserName" runat="server"></asp:Label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="txtUserName" runat="server" placeholder="User Name" ></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <asp:Label ID="LblOldPassword" runat="server" Text="Old Password"></asp:Label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="txtOldPassword" type="Password" runat="server" placeholder="Old Password"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <asp:Label ID="LblNewPassword" runat="server" Text="New Password"></asp:Label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="txtNewPassword"  type="Password" runat="server" placeholder="New Password"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <hr />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12">
                                    <asp:Button ID="btnUpdate" class="btn btn-lg btn-block btn-success" runat="server" OnClick="btnUpdate_Click" Text="Update" />
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


    </form>
</body>
</html>
