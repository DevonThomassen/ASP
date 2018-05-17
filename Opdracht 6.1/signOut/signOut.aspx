<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="signOut.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="signOutHead" Runat="Server">
    <style>
        a {
            text-decoration: none;
            color: black;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="signOutContainer" Runat="Server">
    <div id="wrapper">
        Uitloggen
    </div>
    <div id="sidebar">
        <ul>
            <li><a href="overview.aspx">Huiswerk overzicht</a></li>
            <li><a href="add.aspx">Huiswerk toegvoegen</a></li>
            <li><a href="manage.aspx">Vakken beheren</a></li>
            <li><a href="info.aspx">Mijn gegevens</a></li>
            <li><a href="signOut.aspx">Uitloggen</a></li>
        </ul>
    </div>
    <div id="main">
        <p><a href="logIn.aspx">Uitgelogt! Klik hier om verder te gaan</a></p>
    </div>
    <div id="footer">
        Devon Thomassen
    </div>
</asp:Content>