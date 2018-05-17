<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="logIn.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="logInHead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="logInContainer" Runat="Server">
    <div id="wrapper">
            Huiswerkregistratiesysteem
        </div>
        <div id="main" style="width: 100%">
            <p>Login</p>
            <div id="logIn">
                <h1>PIN</h1>
                <asp:TextBox ID="pinCode" runat="server"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="rfvPincode" runat="server" 
                    ErrorMessage="Verplicht" 
                    ControlToValidate="pinCode"></asp:RequiredFieldValidator>
                <asp:Label ID="error" runat="server" Text="Getal tussen 0 - 32.767" Visible="false" style="display: none"></asp:Label><br />
                <asp:Button ID="submit" runat="server" Text="Inloggen" OnClick="submit_Click" />
            </div>
        </div>
        <div id="footer">
            Devon Thomassen
        </div>
</asp:Content>