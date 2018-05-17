<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 
        {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <!-- Header -->
        <header>
            <h1>
                Colverter<a href="Default.aspx">Default.aspx</a>
            </h1>
        </header>
        <!-- Kleurentabel -->
        <table class="auto-style1">
            <tr>
                <td>Kleurnaam</td>
                <td>Hexadecimaal</td>
                <td>RGB</td>
            </tr>
            <tr>
                <td>Red</td>
                <td>
                    <asp:Label ID="lblRedHex" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblRedRGB" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Green</td>
                <td>
                    <asp:Label ID="lblGreenHex" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblGreenRGB" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Blue</td>
                <td>
                    <asp:Label ID="lblBlueHex" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblBlueRGB" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Yellow</td>
                <td>
                    <asp:Label ID="lblYellowHex" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblYellowRGB" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
