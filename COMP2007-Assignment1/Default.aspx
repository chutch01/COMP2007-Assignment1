<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Frontend.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="COMP2007_Assignment1.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
<html lang="en">
<body>
    <div class="container">
        <h1>Game Input</h1>



            <form id="GameInput" runat="server">
                <!-- ++++++++++++++++++++++++++++++++++GAME 1++++++++++++++++++++++++++++++++++++++++ -->
                  <div="row">
                <!-- Win/Loss Radio Button -->
              
                <div class="col-md-3">
                <div class="form-group">
                        <h2>Game 1</h2>
                        <asp:Label ID="WinLossLabel1" runat="server" Text="Win Or Lose:"></asp:Label><br />
                        <asp:RadioButtonList ID="WinLossRadioButtonList1" runat="server">
                            <asp:ListItem Text="Win" Value="Win"></asp:ListItem>
                            <asp:ListItem Text="Lose" Value="Lose"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>

                <!-- input for points scored -->
                <div class="form-group">
                  
                        <asp:Label ID="PointsScoredLabel1" runat="server" Text="Points Scored:"></asp:Label><br />
                        <asp:TextBox ID="PointsScoredTextBox1" runat="server"></asp:TextBox>
                    </div>
            

                <!-- input for points allowed -->
                <div class="form-group">
               
                        <asp:Label ID="PointsAllowedLabel1" runat="server" Text="Points Allowed:"></asp:Label><br />
                        <asp:TextBox ID="PointsAllowedTextBox1" runat="server"></asp:TextBox>
                    </div>
              
                <!-- input for spectators -->
                <div class="form-group">
                   
                        <asp:Label ID="SpectatorsLabel1" runat="server" Text="Spectators:"></asp:Label><br />
                        <asp:TextBox ID="SpectatorsTextBox1" runat="server"></asp:TextBox>
                    </div>
              </div>
                   
                  
                      
                

                  <!-- ++++++++++++++++++++++++++++++++++GAME 2++++++++++++++++++++++++++++++++++++++++ -->

                <!-- Win/Loss Radio Button -->
              
                <div class="col-md-3">
                <div class="form-group">
                        <h2>Game 2</h2>
                        <asp:Label ID="WinLossLabel2" runat="server" Text="Win Or Lose:"></asp:Label><br />
                        <asp:RadioButtonList ID="WinLossRadioButtonList2" runat="server">
                            <asp:ListItem Text="Win" Value="Win"></asp:ListItem>
                            <asp:ListItem Text="Lose" Value="Lose"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>

                <!-- input for points scored -->
                <div class="form-group">
                  
                        <asp:Label ID="PointsScoredLabel2" runat="server" Text="Points Scored:"></asp:Label><br />
                        <asp:TextBox ID="PointsScoredTextBox2" runat="server"></asp:TextBox>
                    </div>
            

                <!-- input for points allowed -->
                <div class="form-group">
               
                        <asp:Label ID="PointsAllowedLabel2" runat="server" Text="Points Allowed:"></asp:Label><br />
                        <asp:TextBox ID="PointsAllowedTextBox2" runat="server"></asp:TextBox>
                    </div>
              
                <!-- input for spectators -->
                <div class="form-group">
                   
                        <asp:Label ID="SpectatorsLabel2" runat="server" Text="Spectators:"></asp:Label><br />
                        <asp:TextBox ID="SpectatorsTextBox2" runat="server"></asp:TextBox>
                    </div>
              </div>
                     

                        <!-- ++++++++++++++++++++++++++++++++++GAME 3++++++++++++++++++++++++++++++++++++++++ -->

                <!-- Win/Loss Radio Button -->
              
                <div class="col-md-3">
                <div class="form-group">
                        <h2>Game 3</h2>
                        <asp:Label ID="WinLossLabel3" runat="server" Text="Win Or Lose:"></asp:Label><br />
                        <asp:RadioButtonList ID="WinLossRadioButtonList3" runat="server">
                            <asp:ListItem Text="Win" Value="Win"></asp:ListItem>
                            <asp:ListItem Text="Lose" Value="Lose"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>

                <!-- input for points scored -->
                <div class="form-group">
                  
                        <asp:Label ID="PointsScoredLabel3" runat="server" Text="Points Scored:"></asp:Label><br />
                        <asp:TextBox ID="PointsScoredTextBox3" runat="server"></asp:TextBox>
                    </div>
            

                <!-- input for points allowed -->
                <div class="form-group">
               
                        <asp:Label ID="PointsAllowedLabel3" runat="server" Text="Points Allowed:"></asp:Label><br />
                        <asp:TextBox ID="PointsAllowedTextBox3" runat="server"></asp:TextBox>
                    </div>
              
                <!-- input for spectators -->
                <div class="form-group">
                   
                        <asp:Label ID="SpectatorsLabel3" runat="server" Text="Spectators:"></asp:Label><br />
                        <asp:TextBox ID="SpectatorsTextBox3" runat="server"></asp:TextBox>
                    </div>
              </div>

                        <!-- ++++++++++++++++++++++++++++++++++GAME 4++++++++++++++++++++++++++++++++++++++++ -->

                <!-- Win/Loss Radio Button -->
              
                <div class="col-md-3">
                <div class="form-group">
                        <h2>Game 4</h2>
                        <asp:Label ID="WinLossLabel4" runat="server" Text="Win Or Lose:"></asp:Label><br />
                        <asp:RadioButtonList ID="WinLossRadioButtonList4" runat="server">
                            <asp:ListItem Text="Win" Value="Win"></asp:ListItem>
                            <asp:ListItem Text="Lose" Value="Lose"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>

                <!-- input for points scored -->
                <div class="form-group">
                  
                        <asp:Label ID="PointsScoredLabel4" runat="server" Text="Points Scored:"></asp:Label><br />
                        <asp:TextBox ID="PointsScoredTextBox4" runat="server"></asp:TextBox>
                    </div>
            

                <!-- input for points allowed -->
                <div class="form-group">
               
                        <asp:Label ID="PointsAllowedLabel4" runat="server" Text="Points Allowed:"></asp:Label><br />
                        <asp:TextBox ID="PointsAllowedTextBox4" runat="server"></asp:TextBox>
                    </div>
              
                <!-- input for spectators -->
                <div class="form-group">
                   
                        <asp:Label ID="SpectatorsLabel4" runat="server" Text="Spectators:"></asp:Label><br />
                        <asp:TextBox ID="SpectatorsTextBox4" runat="server"></asp:TextBox>
                    </div>
              </div>
                      <div>
                        <asp:Button ID="SubmitButton" runat="server" Text="Summary" OnClick="SubmitButton_Click" />
                      </div>
                      

            </div> <!-- end row -->
            </form>
            <!--end form-->


     
        <!--end row-->
    </div>
    <!--end container-->

    <!--Javascript-->
    <script src="Scripts/lib/jquery-2.1.4.min.js"></script>
    <script src="Scripts/lib/bootstrap.min.js"></script>

</body>
</html>

</asp:Content>

