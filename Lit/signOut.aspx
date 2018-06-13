<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="signOut.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headContainer" Runat="Server">
    <style>
        a {
            text-decoration: none;
            color: black;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="container" Runat="Server">
    <div id="wrapper">
        Uitloggen
    </div>
    <div id="main">
        <p><a href="logIn.aspx">Weet je het zeker? Klik hier om verder te gaan</a></p>
    </div>
</asp:Content>