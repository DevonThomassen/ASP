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

    protected void submitInsert_Click(object sender, EventArgs e) {
        string connectie;
        connectie = @"Data Source=x\SQLEXPRESS;";
        connectie += "Initial Catalog=homework; Integrated Security=True";
        SqlConnection conn = new SqlConnection(connectie);
        SqlCommand cmd = new SqlCommand("INSERT INTO subject (name) VALUES ('" + insert.Text + "')", conn);
        conn.Open();
        try {
            cmd.ExecuteNonQuery();
            delete.DataBind();
        }
        catch {

        }
        conn.Close();
    }

    protected void submitDelete_Click(object sender, EventArgs e) {
        string connectie;
        connectie = @"Data Source=DEVONTHOMASSEN\SQLEXPRESS;";
        connectie += "Initial Catalog=homework; Integrated Security=True";
        SqlConnection conn = new SqlConnection(connectie);
        SqlCommand cmd = new SqlCommand("DELETE FROM subject WHERE name = '" + delete.SelectedValue + "'", conn);
        SqlCommand cmd2 = new SqlCommand("DELETE FROM results WHERE subjectName = '" + delete.SelectedValue + "'", conn);
        conn.Open();
        try {
            cmd.ExecuteNonQuery();
            cmd2.ExecuteNonQuery();
            delete.DataBind();
        }
        catch {

        }
        conn.Close();
    }
}
