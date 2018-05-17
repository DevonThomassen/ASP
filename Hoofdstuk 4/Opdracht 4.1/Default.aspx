<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <h1>
            Table generator
        </h1>
        <table>
            <tr>
                <td>Rows</td>
                <td>
                    <asp:ListBox ID="rowList" runat="server" Height="25px">
                    <asp:ListItem Selected="True">1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    </asp:ListBox>
                </td>
            </tr>
            <tr>
                <td>Columns</td>
                <td>
                    <asp:ListBox ID="columnList" runat="server" Height="25px">
                    <asp:ListItem Selected="True">1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    </asp:ListBox>
                </td>
            </tr>
            <tr>
                <td colspan="2"><asp:Button ID="createButton" runat="server" Text="Create Table" OnClick="createButton_Click"/></td>
            </tr>
        </table>
        <asp:Label ID="tableDisplay" runat="server"></asp:Label>
    </form>
</body>
</html>