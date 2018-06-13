<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="manage.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headContainer" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="container" Runat="Server">
    <div id="wrapper">
        Vakken beheren
    </div>
    <div id="main">
        <h1>Vak toevoegen</h1>
        <asp:TextBox ID="insert" runat="server"></asp:TextBox>
        <asp:Button ID="submitInsert" runat="server" Text="Button" OnClick="submitInsert_Click" />
        <h1>Vak verwijderen</h1>
        <asp:DropDownList ID="delete" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name"></asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:homeworkVak %>" SelectCommand="SELECT [name] FROM [subject]"></asp:SqlDataSource>
        <asp:Button ID="submitDelete" runat="server" Text="Button" OnClick="submitDelete_Click" />
    </div>
</asp:Content>