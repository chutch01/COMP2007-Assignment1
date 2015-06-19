using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace COMP2007_Assignment1
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            bool flag = false;
            RadioButtonList[] radioButtonLists = { WinLossRadioButtonList1, WinLossRadioButtonList2, WinLossRadioButtonList3, WinLossRadioButtonList4 };
            int listNum = 0;
            TextBox[] textBoxes = { PointsScoredTextBox1, PointsAllowedTextBox1, SpectatorsTextBox1, PointsScoredTextBox2, PointsAllowedTextBox2, SpectatorsTextBox2, PointsScoredTextBox3, PointsAllowedTextBox3, SpectatorsTextBox3, PointsScoredTextBox4, PointsAllowedTextBox4, SpectatorsTextBox4 };
            int gamesWon = 0;
            int gamesLost = 0;
            int totalScored = 0;
            int totalAllowed = 0;
            int totalSpectators = 0;
            string errorMessage = "alert('";

            //wrap everything in a try block
            try
            {
                //check and see if a radio button selection was selected
                for (int i = 0; i < radioButtonLists.Length; i++)
                {
                    //if nothing was selected for win/loss, set the flag to true and show an error
                    if (radioButtonLists[i].SelectedIndex == -1)
                    {
                        errorMessage += "A Radio BUtton was left unselected\\n";
                        flag = true;
                        break;
                    }//if
                }//for

                //ensure text boxes aren't empy
                for (int i = 0; i < textBoxes.Length; i++)
                {
                    if (textBoxes[i].Text == "")
                    {
                        errorMessage += "You have not entered all information, please enter in a value for all text boxes\\n";
                            flag = true;
                        break;
                    }
                    //ensure no negative numbers
                    if(int.Parse(textBoxes[i].Text) <0){
                        errorMessage+="no negative numbers are allowed\\n";
                        flag = true;
                        break;
                    }
                }//for
                //check to make sure a game was won, if the selected radio button value was set to won
                for(int i= 0; i < textBoxes.Length; i += 3)
                {
                    //if selected win
                    if (radioButtonLists[listNum].SelectedIndex == 0)
                    {
                        //if points allowed was MORE than points scored, set an error to true and let them know
                        if (int.Parse(textBoxes[i].Text) < int.Parse(textBoxes[i + 1].Text))
                        {
                            errorMessage += "a game was lost, but win was selected\\n";
                            flag = true;
                        }//if
                        //if points allowed was LESS than points scored, set and error to true and let them know
                    }// if
                    else if (radioButtonLists[listNum].SelectedIndex == 1)
                    {
                        if (int.Parse(textBoxes[i].Text) > int.Parse(textBoxes[i + 1].Text))
                        {
                            errorMessage += "a game was won, but loss was selected\\n";
                            flag = true;
                        }//if
                    }//else if

                    //if points scored and points allowed are the same number (which they can't be) set flag to true and show an alert
                    if (int.Parse(textBoxes[i].Text) == int.Parse(textBoxes[i + 1].Text))
                    {
                        errorMessage += "No ties are allowed\\n";
                        flag = true;
                    }//if
                    listNum++;
                }//for
            }//try
            catch(FormatException)
            {
                flag = true;
                errorMessage += "You need to enter an integer value in to the text box \\n";

            }
            catch (OverflowException)
            {
                flag = true;
                errorMessage += "Overflow error. Too many digits \\n";
            }
            catch (Exception)
            {
                flag = true;
                errorMessage += "Error \\n";
            }
            errorMessage += "');";
            //do calculations if there was no flag
            if (!flag)
            {
                //count the games won and lost
                for (int i = 0; i < radioButtonLists.Length; i++)
                {
                    if (radioButtonLists[i].SelectedIndex == 0)
                    {
                        gamesWon++;
                    }
                    else
                    {
                        gamesLost++;
                    }
                    //print out the games won
                    GamesWonOutputLabel.Text = "Games Won: " + gamesWon.ToString();
                    GamesLostOutputLabel.Text = "Games Lost: " + gamesLost.ToString();
                    //change the int value of games won to float so that a decimal is allowed
                    WinPercentageOutputLabel.Text = "Win Percentage: " + (((float)gamesWon / 4)*100).ToString() + "%";
                    //count total points scored and points allowed
                    totalScored = int.Parse(textBoxes[0].Text) + int.Parse(textBoxes[3].Text) + int.Parse(textBoxes[6].Text) + int.Parse(textBoxes[9].Text);
                    totalAllowed = int.Parse(textBoxes[1].Text) + int.Parse(textBoxes[4].Text) + int.Parse(textBoxes[7].Text) + int.Parse(textBoxes[10].Text);
                    //print out scored and allowed
                    TotalPointsScoredOutputLabel.Text = "Total Points Scored: " + totalScored;
                    TotalPointsAllowedOutputLabel.Text = "Toal Points ALlowed: " + totalAllowed;
                    //count spectators
                    totalSpectators = int.Parse(textBoxes[2].Text) + int.Parse(textBoxes[5].Text) + int.Parse(textBoxes[8].Text) + int.Parse(textBoxes[11].Text);
                    //print out spectators
                    TotalSpectatorsOutputLabel.Text = "Total Spectators: " + totalSpectators.ToString();
                    //find average spectators, and change int value to float
                    AverageSpectatorsLabel.Text = "Average Spectators: " + ((float)totalSpectators /4).ToString();

                }//for
            }//if
            else
            {
                ClientScript.RegisterStartupScript(GetType(), "hwa", errorMessage, true);
            }
        }

        protected void ClearButton_CLick(object sender, EventArgs e)
        {
            RadioButtonList[] radioButtonLists = { WinLossRadioButtonList1, WinLossRadioButtonList2, WinLossRadioButtonList3, WinLossRadioButtonList4 };
            TextBox[] textBoxes = { PointsScoredTextBox1, PointsAllowedTextBox1, SpectatorsTextBox1, PointsScoredTextBox2, PointsAllowedTextBox2, SpectatorsTextBox2, PointsScoredTextBox3, PointsAllowedTextBox3, SpectatorsTextBox3, PointsScoredTextBox4, PointsAllowedTextBox4, SpectatorsTextBox4 };
            //go through and set all radio buttons to null
            for (int i = 0; i < radioButtonLists.Length; i++)
            {
                radioButtonLists[i].SelectedIndex = -1;
            }
            //go through the text boxes, and set them to null
            for (int i = 0; i < textBoxes.Length; i++)
            {
                textBoxes[i].Text = "";
            }
        }//submit button
    }
}