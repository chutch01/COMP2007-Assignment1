<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="main.aspx.cs" Inherits="COMP2007_Assignment1.main" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <meta charset="uth-8" />
    <meta name="viewport" content="width=device-width,initial-scale =1" />
    <title>untitled</title>
    <!-- CSS sections -->
    <link href="Content/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <div class="container">
        <h1>ASP.NET PAGE</h1>
        <div class="row">
            <div class="col-md-6">
                
                

                <form id="form1" runat="server">
                    <div class="form-group">
                        <asp:Label ID="userName" runat="server" Text="User Name"></asp:Label>
                        <asp:TextBox CssClass="form-control" ID="userNameTextbox" runat="server" placeholder="Enter your Username"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="passwordLabel" runat="server" Text="User Name"></asp:Label>
                        <asp:TextBox CssClass="form-control" ID="passwordTextBox" runat="server" TextMode="Password"></asp:TextBox>
                    </div>
                    <div>
                        <asp:Button CssClass="btn btn-primary" ID="loginButton" runat="server" Text="Login" OnClick="loginButton_Click" />

                    </div><!--end button-->

                </form><!--end form-->
            </div><!--end col-md-6-->
            <div class="col-md-6">
                <p runat="server">
                    <asp:Label ID="instructionLabel" runat="server" Text="Please log in to access the system."></asp:Label>
                       
                </p>
        </div>
        </div><!--end row-->
    </div><!--end container-->
    
    <!--Javascript-->
    <script src="Scripts/lib/jquery-2.1.4.min.js"></script>
    <script src="Scripts/lib/bootstrap.min.js"></script>

</body>
</html>
