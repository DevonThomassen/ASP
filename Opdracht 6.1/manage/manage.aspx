﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="manage.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="manageHead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="manageContainer" Runat="Server">
    <div id="wrapper">
        Vakken beheren
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
    </div>
    <div id="footer">
        Devon Thomassen
    </div>
</asp:Content>