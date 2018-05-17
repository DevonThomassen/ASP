<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <h1>Inhouden converten (PRO-versie)</h1>
        <asp:Table ID="inLogBox" runat="server">
            <asp:TableRow>
                <asp:TableCell>Gebruikersnaam</asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="userNameBox" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Wachtwoord</asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="passwordBox" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ColumnSpan="2"><asp:Button ID="logInButton" runat="server" Text="Start" OnClick="logInButton_Click" /></asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <!-- Te voorkomen dat tekst wordt overgeschreven door foreach loop -->
        <asp:Label ID="displayError" runat="server"></asp:Label>
        <!-- Ingelogt -->
        <asp:Label ID="displayText" runat="server"></asp:Label>
        <!-- converter -->
        <asp:Table ID="converterTable" runat="server">
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <asp:TextBox ID="inputNumber" runat="server"></asp:TextBox> 
                </asp:TableCell>
                <asp:TableCell runat="server"> liter is</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:Label ID="outputNumber" runat="server"></asp:Label>
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:DropDownList ID="valueDDL" runat="server">
                        <asp:ListItem Selected="True" Value="gill">Gill</asp:ListItem>
                        <asp:ListItem Value="pint">Pint</asp:ListItem>
                        <asp:ListItem Value="quart">Quart</asp:ListItem>
                    </asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>
</html>
