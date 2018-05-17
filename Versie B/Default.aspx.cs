using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void logInButton_Click(object sender, EventArgs e)
    {
        //      Taak 1
        List<string> passwordList = new List<string>();
        passwordList.Add("devon1");
        passwordList.Add("niels2");
        passwordList.Add("yusuf3");
        passwordList.Add("mouad4");
        passwordList.Add("maarten5");

        foreach (string password in passwordList)
        {
            //          wachtwoord incorrect
            if (passwordBox.Text.ToLower() != password)
            {
                displayError.Text = "Wachtwoord is onjuist";
            }
            //          wachtwoord te lang 
            if (passwordBox.Text.Length > 12)
            {
                displayError.Text = "Wachtwoord is te lang";
            }
            //          wachtwoord correct
            if (passwordBox.Text.ToLower() == password)
            {
                displayText.Text = "Welkom " + userNameBox.Text + "!";
                displayText.Style.Add("display", "block");
                converterTable.Style.Add("display", "block");
                inLogBox.Style.Add("display", "none");
                displayError.Style.Add("display", "none");
            }
        }
    }
    protected void inputNumber_TextChanged(object sender, EventArgs e)
    {
//      Taak 2   
        double liter = Convert.ToDouble(inputNumber.Text);
        outputNumber.Text = Convert.ToString(calculator(liter));
    }

//Calculator
    double calculator(double Liter)
    {
        double value;

        //constanste waardes
        const double gillFactor = 100.0 / 1000.0 * 142.0;
        const double pintFactor = 100.0 / 1000.0 * 568.0;
        const double quartFactor = 100.0 * 1.137;

        //switch voor factor

        switch (valueDDL.Text) {
            case "gill":
                value = Liter * gillFactor;
                value = Math.Round(value, 2);
                break;
            case "pint":
                value = Liter * pintFactor;
                value = Math.Round(value, 2);
                break;
            case "quart":
                value = Liter * quartFactor;
                value = Math.Round(value, 2);
                break;
            default:
                value = 0;
                break;
        }
        return value;
            
    }
        
}