using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e) {

    }
    protected void submit_Click(object sender, EventArgs e) {
        string str = pinCode.Text;
        Int16 pinCodeInt = Convert.ToInt16(str);
        const Int16 correctPincode = 11111;
        if (pinCodeInt >= 0 && pinCodeInt <= Int16.MaxValue) {
            error.Visible = false;
            error.Style["display"] = "none";
            if (pinCodeInt == correctPincode) {
                //voer code uit wanneer je ingelogt bent
                Response.Redirect("overview.aspx");
            }
        } else {
            error.Visible = true;
            error.Style["display"] = "inline-block";
        }
    }
}