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
        // Aanmaken list met de naam "colors" waarin strings worden opgeslagen

        List<string> kleurenList = new List<string>();
        // De hexadecimale waarde van de kleuren rood, groen, blauw, geel (in deze volgorde) worden toegevoegd aan de list.
        kleurenList.Add("#f00");
        kleurenList.Add("#0f0");
        kleurenList.Add("#00f");
        kleurenList.Add("#ff0");

        // Hexadecimale codes wegschrijven in labels waarbij waarde direct uit list gehaad wordt.
        lblRedHex.Text = kleurenList[0];
        lblGreenHex.Text = kleurenList[1];
        lblBlueHex.Text = kleurenList[2];
        lblYellowHex.Text = kleurenList[3];

        // RGB codes bepalen doormiddel van method convertToRgb waarbij Hexadecimale waarde uit list gehaad wordt.
        string redRGB = convertToRGB(kleurenList[0]);
        string greenRGB = convertToRGB(kleurenList[1]);
        string blueRGB = convertToRGB(kleurenList[2]);
        string YellowRGB = convertToRGB(kleurenList[3]);

        // RGB codes wegschrijven in labels
        lblRedRGB.Text = redRGB;
        lblGreenRGB.Text = greenRGB;
        lblBlueRGB.Text = blueRGB;
        lblYellowRGB.Text = YellowRGB;


        // Method om hexadecimale code om te zetten naar RGB waarbij als parameter een waarde rechtstreeks vanuit de list wordt opgegeven.
        string convertToRGB(string hexcode)
        {
            string hexR = hexcode.Substring(1, 1).Replace("f", "255");
            string hexG = hexcode.Substring(2,1).Replace("f", "255");
            string hexB = hexcode.Substring(3,1).Replace("f", "255");
            string hexRGB = hexR + "," + hexG + "," + hexB;

            return hexRGB;
        }
        // De hexadecimale code die is meegegeven als parameter opdelen in hoeveelheid rood, groen, blauw.
        // Vervolgens per kleur de waarde FF omzetten naar 255 en 00 naar 0.

        // Rood, groen en blauw weer aan elkaar plakken in een string met het formaat RGB(X,X,X).

        // Terugsturen van de rgbCode
    }
}