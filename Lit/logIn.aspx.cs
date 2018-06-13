using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e) {
        
    }
    protected void submit_Click(object sender, EventArgs e) {
        string str = pinCode.Text;
        Int16 pinCodeInt = Convert.ToInt16(str);
        string connectie;
        connectie = @"Data Source=DEVONTHOMASSEN\SQLEXPRESS;";
        connectie += "Initial Catalog=homework; Integrated Security=True";
        SqlConnection conn = new SqlConnection(connectie);
        SqlCommand cmd = new SqlCommand("SELECT pin FROM userInfo", conn);
        conn.Open();
        string pin = cmd.ExecuteScalar().ToString();
        try {
            if (pinCode.Text == pin) {
                Response.Redirect("overview.aspx");
            } else {
                error.Text = "Het wachtwoord is onjuist";
                error.Style.Add("display", "block");
                pinCode.Style.Add("background-color", "orange");
            }
        }
        catch {

        }
        conn.Close();
        /*
        if ( == correctPincode) {
            //voer code uit wanneer je ingelogt bent
            
            error.Style.Add("display", "none");
        } else {
            error.Style.Add("display", "block");
            pinCode.Style.Add("background-color", "orange");
        }
        */
    }
}