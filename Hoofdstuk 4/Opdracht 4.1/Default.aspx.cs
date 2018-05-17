using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    private object _DefaultwebBrowser1;

    public object WebBrowser { get; private set; }

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void createButton_Click(object sender, EventArgs e)
    {
        //variables
        string rowText = rowList.Text;
        string columnText = columnList.Text;

        //numbers
        int valueRows = Convert.ToInt32(rowText);
        int valueColumns = Convert.ToInt32(columnText);

        //html tags
        string tableStart = "<table id='table2'>";
        string rowStart0 = "<tr>";
        string rowEnd = "</tr>";
        string rowComplete = "<td class='headerColor'></td>";
        string colStart = "<td>";
        string colEnd = "</td>";
        string tableEnd = "</table>";
        tableDisplay.Text = tableStart;
        tableDisplay.Text = tableDisplay.Text + rowStart0 + rowComplete;

        //celblocks generator
        for (int a = 1; a < valueColumns + 1; a++)
        {
            string colStart0 = "<td class='headerColor'>";
            string rowTextStart = "C";
            string rowText0 = rowTextStart + a;
            tableDisplay.Text = tableDisplay.Text + colStart0 + rowText0 + colEnd;
        }
        tableDisplay.Text = tableDisplay.Text + rowEnd;
        //row != 1
        if (valueRows != 1)
        {
            for (int i = 1; i < valueRows + 1; i++)
            {
                string rowStart2 = "<tr>";
                string colStart1 = "<td class='headerColor'>";
                string colTextStart = "R";
                string colText0 = colTextStart + i;
                tableDisplay.Text = tableDisplay.Text + rowStart2 + colStart1 + colText0 + colEnd;
                //postition
                for (int x = 1; x < valueColumns + 1; x++)
                {
                    string tdText = i + "," + x;
                    tableDisplay.Text = tableDisplay.Text + colStart + tdText + colEnd;
                }
                tableDisplay.Text = tableDisplay.Text + rowEnd;
            }
        }
        //row = 1
        else
        {
            string colStart1 = "<td class='headerColor'>";
            double counter = 1;
            tableDisplay.Text = tableDisplay.Text + rowStart0 + colStart1 + "R" + counter + colEnd;
            for (int x = 1; x < valueColumns + 1; x++)
            {
                double counter2 = 1;
                string tdText = counter2 + "," + x;
                counter2++;
                tableDisplay.Text = tableDisplay.Text + colStart + tdText + colEnd;
            }
            tableDisplay.Text = tableDisplay.Text + rowEnd;
        }
        tableDisplay.Text = tableDisplay.Text + tableEnd;

        //bonus
        string tableHtmlDisplay = "<pre>" + tableDisplay.Text
            /*
             * // = display without entities (see on screen)
             * .Replace(value , value) = replacer + tabs and breaks
            */
            .Replace("<", "&#60;")
            //<tr>, <br><tab><tr><br><tab><tab>
            .Replace("&#60;tr>", "<br>&#9;&#60;tr><br>&#9;&#9;")
            //</td><td> , </td><br><tab><tab><tab><td>
            .Replace("&#60;/td>&#60;td", "&#60;/td><br>&#9;&#9;&#60;td")
            //</td></tr> , </td><br></tr> 
            .Replace("&#60;/td>&#60;/tr>", "&#60;/td><br>&#60;/tr>")
            //</tr> , <tab></tr>
            .Replace("&#60;/tr>", "&#9;&#60;/tr>")
            //</table> , <br></table>
            .Replace("&#60;/table>", "<br>&#60;/table>") + "</pre";

        tableDisplay.Text = tableDisplay.Text + tableHtmlDisplay;
    }
}