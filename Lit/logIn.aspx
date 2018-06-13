<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="logIn.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headContainer" Runat="Server">
    <style type="text/css">
        #main {
            text-align: center;
            width: 100%;
        }
        #submit {
            background-color: dodgerblue;
            border: dodgerblue 2px solid;
            color: white;
        }
        #sidebar {
            display: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="container" Runat="Server">
    <div id="wrapper">
            Huiswerkregistratiesysteem
        </div>
        <div id="main">
            <p>Login</p>
            <div id="logIn">
                <h1>PIN</h1>
                <asp:TextBox ID="pinCode" runat="server"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="rfvPincode" runat="server" 
                    ErrorMessage="Verplicht" 
                    ControlToValidate="pinCode"></asp:RequiredFieldValidator><br />
                <asp:RangeValidator ID="RangeValidator1" runat="server" 
                    ControlToValidate="pinCode"
                    ErrorMessage="Getal tussen 0 - 32.767"
                    MinimumValue="0"
                    MaximumValue="32767" 
                    Type="Integer"></asp:RangeValidator><br />
                <asp:Label ID="error" runat="server" Text="Foutief wachtwoord" style="display: none;"></asp:Label>
                <asp:Button ID="submit" runat="server" Text="Inloggen" OnClick="submit_Click" />
            </div>
        </div>
</asp:Content>