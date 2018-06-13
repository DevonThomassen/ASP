<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="info.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headContainer" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="container" Runat="Server">
    <div id="wrapper">
        Mijn gegevens
    </div>
    <div id="main">
        <h1>Pincode aanpassen</h1>
        <p>Oude pincode</p>
        <asp:TextBox ID="oldPin" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvOldPin" runat="server" 
            ErrorMessage="Verplicht" 
            ControlToValidate="oldPin"></asp:RequiredFieldValidator><br />
        <asp:Label ID="error" runat="server"></asp:Label>
        <p>Nieuwe pincode</p>
        <asp:TextBox ID="newPin" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvNewPin" runat="server" 
            ErrorMessage="Verplicht" 
            ControlToValidate="newPin"></asp:RequiredFieldValidator><br />
        <asp:RangeValidator ID="RangeValidator1" runat="server" 
            ControlToValidate="newPin"
            ErrorMessage="Getal tussen 0 - 32.767"
            MinimumValue="0"
            MaximumValue="32767" 
            Type="Integer"></asp:RangeValidator><br />
        <asp:Button ID="submit" runat="server" Text="Button" OnClick="submit_Click" />
        <asp:Label ID="control" runat="server"></asp:Label>        
    </div>
</asp:Content>