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
        string oPin = oldPin.Text;
        string nPin = newPin.Text;

        string connectie;
        connectie = @"Data Source=x\SQLEXPRESS;";
        connectie += "Initial Catalog=homework; Integrated Security=True";
        SqlConnection conn = new SqlConnection(connectie);
        SqlCommand cmd = new SqlCommand("UPDATE userInfo SET pin = " + nPin + " WHERE name = 'Devon'", conn);
        SqlCommand cmd2 = new SqlCommand("SELECT pin FROM userInfo", conn);
        conn.Open();
        //Controle
        string pin = cmd2.ExecuteScalar().ToString();
        if (oldPin.Text == pin) {
            int retval = cmd.ExecuteNonQuery();
            if (retval > 0) {
                control.Text = "Update succesvol";
            } else {
                control.Text = "Update mislukt";
            }
            error.Text = "";
        } else {
            error.Text = "Wachtwoord onjuist";
            control.Text = "Update mislukt";
        }        
        conn.Close();
    }
}
