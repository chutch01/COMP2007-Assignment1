using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace COMP2007_Assignment1
{
    public partial class main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loginButton_Click(object sender, EventArgs e)
        {
            instructionLabel.Text = "thank you for logging in.";
            userNameTextbox.Text = null;
            userNameTextbox.Enabled = false;
            passwordTextBox.Text = null;
            passwordTextBox.Enabled = false;
        }

    }
}