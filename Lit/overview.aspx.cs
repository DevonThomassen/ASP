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

    protected void rbList_SelectedIndexChanged(object sender, EventArgs e) {
        if (rbList.Text == "subject") {
            subjectContainer.Style.Add("display", "block");
            resultContainer.Style.Add("display", "none");
            descriptionContainer.Style.Add("display", "none");
        }
        if (rbList.Text == "result") {
            subjectContainer.Style.Add("display", "none");
            resultContainer.Style.Add("display", "block");
            descriptionContainer.Style.Add("display", "none");
        }
        if (rbList.Text == "description") {
            subjectContainer.Style.Add("display", "none");
            resultContainer.Style.Add("display", "none");
            descriptionContainer.Style.Add("display", "block");
        }
    }
    protected void submit_OnClick(object sender, EventArgs e) {
        string str = search.Text;
    }
}