<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewAllAppointmentPage.aspx.cs" Inherits="BeautySalony.ViewAllAppointmentPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Appointment</title>
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

        .buttonDelete {
            background-color: red;
            color: White;
            width: 250px;
            border-radius: 15px 0px 15px 0px;
        }

            .buttonDelete:hover {
                opacity: 0.6;
                color: black;
                font-weight: bold;
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
        .ViewAllBtn {
            margin-right:-100px;

        }

    </style>

</head>
<body style="background-color: #352d7d">
    <form id="form1" runat="server">

        <div class="container-fluid" style="padding-top: 10px; padding-bottom: 10px;">
            <div class="row">
                <div class="col-md-2 mx-auto">
                    <div class="btn-group-vertical" style="padding-top: 40px; padding-left: -5px">
                        <asp:LinkButton ID="linkAdminUsername" runat="server" OnClick="linkAdminUsername_Click" CssClass="button30 MenuBtn fa fa-picture-o"></asp:LinkButton><br />
                        <asp:LinkButton ID="linkViewAllUserPage" runat="server" OnClick="linkViewAllUserPage_Click" CssClass="button30 MenuBtn fa fa-home">&nbsp;View All User</asp:LinkButton><br />
                        <asp:LinkButton ID="linkViewAllAdminPage" runat="server" OnClick="linkViewAllAdminPage_Click" CssClass="button30 MenuBtn fa fa-users">&nbsp;View All Admin</asp:LinkButton><br />
                        <asp:LinkButton ID="linkViewAllAppointment" runat="server" OnClick="linkViewAllAppointment_Click" CssClass="button30 MenuBtn fa fa-users" Visible="false">&nbsp;View All Appointment</asp:LinkButton><br />
                        <asp:LinkButton ID="LinkAdminLogout" runat="server" OnClick="LinkAdminLogout_Click" CssClass="button30 MenuBtn fa fa-sign-out" Visible="false">&nbsp;Log Out</asp:LinkButton>
                    </div>
                    <br />
                </div>
                <div class="col-md-10 mx-auto">
                    <div class="card" style="background-color: #effafc">
                        <div class="card-body">
                            <div class="row">
                                <div class="col">
                                    <h2 style="color: #352d7d;">All Appointment</h2>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col">
                                            <h4 style="color: #352d7d;">Filter</h4>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <asp:Button ID="BtnViewAll" class="btn btn-lg btn-block btn-success ViewAllBtn" runat="server" OnClick="BtnViewAll_Click" Text="View All" />
                                    </div>
                                    <br />
                                    <div class="card" style="background-color: #effafc">
                                        <div class="card-body">
                                            <div class="row">
                                                <div class="col">
                                                    <h5 style="color: #352d7d;">Date & Time</h5>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-3">
                                                    <h5 style="color: #352d7d;">Date:</h5>
                                                    <asp:DropDownList ID="DDDateFromAppointmentTable" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="DDDateFromAppointmentTable_SelectedIndexChanged"></asp:DropDownList>
                                                </div>
                                                <div class="col-md-3">
                                                    <h5 style="color: #352d7d;">Time:</h5>
                                                    <asp:DropDownList ID="DDTimeFromAppointmentTable" runat="server" CssClass="form-control" AutoPostBack="true"></asp:DropDownList>
                                                </div>
                                                <div class="col-md-3">
                                                    <br />
                                                    <asp:Button ID="btnSearchFilterDateAndTime" class="btn btn-lg btn-block btn-success" runat="server" OnClick="btnSearchFilterDateAndTime_Click" Text="Search" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <br />
                                    <div class="row">
                                        <div class="col-md-5 mx-auto">
                                            <div class="card" style="background-color: #effafc">
                                                <div class="card-body">
                                                    <div class="row">
                                                        <div class="col">
                                                            <h4 style="color: #352d7d;">Date</h4>
                                                            <hr />
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <h5 style="color: #352d7d;">Date:</h5>
                                                            <asp:DropDownList ID="DDDateOnly" runat="server" CssClass="form-control" AutoPostBack="true"></asp:DropDownList>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <br />
                                                            <asp:Button ID="btnDateOnly" class="btn btn-lg btn-block btn-success" runat="server" OnClick="btnDateOnly_Click" Text="Search" />
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-5 mx-auto">
                                            <div class="card" style="background-color: #effafc">
                                                <div class="card-body">
                                                    <div class="row">
                                                        <div class="col">
                                                            <h4 style="color: #352d7d;">Time</h4>
                                                            <hr />
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <h5 style="color: #352d7d;">Time:</h5>
                                                            <asp:DropDownList ID="DDTimeOnly" runat="server" CssClass="form-control" AutoPostBack="true"></asp:DropDownList>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <br />
                                                            <asp:Button ID="btnTimeOnly" class="btn btn-lg btn-block btn-success" runat="server" OnClick="btnTimeOnly_Click"  Text="Search" />
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <br />
                            <br />
                            <br />
                            <div class="row">
                                <div class="col" style="overflow: auto; height: 450px;">
                                    <asp:GridView class="table table-striped table-bordered" ID="GridViewAllAppointment" runat="server" ShowFooter="false" AutoGenerateColumns="False" OnRowDeleting="GridViewAllAppointment_RowDeleting">
                                        <Columns>
                                            <asp:TemplateField HeaderText="Appointment ID">
                                                <EditItemTemplate>
                                                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("AppointmentId") %>'></asp:Label>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="lblAppointmentId" runat="server" Text='<%# Eval("AppointmentId") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="First Name">
                                                <EditItemTemplate>
                                                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("FirstName") %>'></asp:Label>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="lblFirstName" runat="server" Text='<%# Eval("FirstName") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Last Name">
                                                <EditItemTemplate>
                                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("LastName") %>'></asp:TextBox>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="lblLastName" runat="server" Text='<%# Eval("LastName") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="User Name">
                                                <EditItemTemplate>
                                                    <asp:TextBox ID="txtusername" runat="server" Text='<%# Eval("username") %>'></asp:TextBox>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="lblusername" runat="server" Text='<%# Eval("username") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Phone Number">
                                                <EditItemTemplate>
                                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("PhoneNumber") %>'></asp:TextBox>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="lblPhoneNumber" runat="server" Text='<%# Eval("PhoneNumber") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Service">
                                                <EditItemTemplate>
                                                    <asp:TextBox ID="txtService" runat="server" Text='<%# Eval("Service") %>'></asp:TextBox>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="lblService" runat="server" Text='<%# Eval("Service") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Stylist">
                                                <EditItemTemplate>
                                                    <asp:TextBox ID="txtStylist" runat="server" Text='<%# Eval("Stylist") %>'></asp:TextBox>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="lblStylist" runat="server" Text='<%# Eval("Stylist") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Date">
                                                <EditItemTemplate>
                                                    <asp:TextBox ID="txtDate" runat="server" Text='<%# Eval("Date") %>'></asp:TextBox>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="lblDate" runat="server" Text='<%# Eval("Date") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Time">
                                                <EditItemTemplate>
                                                    <asp:TextBox ID="txtTime" runat="server" Text='<%# Eval("Time") %>'></asp:TextBox>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="lblTime" runat="server" Text='<%# Eval("Time") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Operation">
                                                <EditItemTemplate>
                                                    <asp:LinkButton ID="linkDelete" Text="Delete" runat="server" CssClass="button30 buttonDelete" CommandArgument='<%# Eval("AppointmentId") %>' />
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="linkDelete" Text="Delete" runat="server" CssClass="button30 buttonDelete" CommandArgument='<%# Eval("AppointmentId") %>' CommandName="Delete" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                    </asp:GridView>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <div class="alert alert-success collapse" role="alert">
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
