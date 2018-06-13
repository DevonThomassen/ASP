<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="overview.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headContainer" Runat="Server">
    <style type="text/css">
        #container_rbList {
            color: white;
        }
        #resultContainer, #descriptionContainer {
            display: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="container" Runat="Server">
    <div id="wrapper">
        Huiswerk Overzicht
    </div>
    <div id="main">
        <div id="listContainer">
            <asp:RadioButtonList ID="rbList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="rbList_SelectedIndexChanged">
                <asp:ListItem Text="Zoeken op vak" Value="subject" Selected="True" />
                <asp:ListItem Text="Zoeken op beoordeling" Value="result" />
                <asp:ListItem Text="Zoeken op omschrijving" Value="description" />
            </asp:RadioButtonList>
        </div>
        <br />
        <div id="subjectContainer" runat="server">
            <h1>Zoek op vak</h1>
            <asp:GridView ID="gvSubject" runat="server" AutoGenerateColumns="False" DataSourceID="vak" DataKeyNames="subjectID">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="name" HeaderText="Naam" SortExpression="name" />
                    <asp:BoundField DataField="subjectID" HeaderText="subjectID" InsertVisible="False" ReadOnly="True" SortExpression="subjectID" Visible="False"/>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="vak" runat="server" ConnectionString="<%$ ConnectionStrings:homeworkVak %>" SelectCommand="SELECT [name], [subjectID] FROM [subject]"></asp:SqlDataSource>
            <br />
            <div id="detailview">
                <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="300px" AutoGenerateRows="False" DataSourceID="SqlDataSource1" AllowPaging="True" EmptyDataText="Geen resultaten gevonden">
                    <Fields>
                        <asp:BoundField DataField="subjectName" HeaderText="Vak" SortExpression="subjectName" />
                        <asp:BoundField DataField="exerciseName" HeaderText="Opdracht" SortExpression="exerciseName" />
                        <asp:BoundField DataField="description" HeaderText="Beschrijving" SortExpression="description" />
                        <asp:BoundField DataField="result" HeaderText="Beoordeling" SortExpression="result" />
                    </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:homeworkVak %>" SelectCommand="SELECT [subjectName], [exerciseName], [description], [result], [subjectID] FROM [results] WHERE ([subjectID] = @subjectID)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="gvSubject" Name="subjectID" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
        </div>
        <div id="resultContainer" runat="server" style="display: none;">
            <h1>Zoek op beoordeling</h1>
            <asp:DropDownList ID="ddlResult" runat="server" AutoPostBack="True">
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>0</asp:ListItem>
            </asp:DropDownList>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="homeworkID" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="subjectName" HeaderText="Vak" SortExpression="subjectName" />
                <asp:BoundField DataField="exerciseName" HeaderText="Opdracht" SortExpression="exerciseName" />
                <asp:BoundField DataField="description" HeaderText="Beschrijving" SortExpression="description" />
                <asp:BoundField DataField="result" HeaderText="Beoordeling" SortExpression="result" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:homeworkVak %>" SelectCommand="SELECT * FROM [results] WHERE ([result] = @result)">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlResult" Name="result" PropertyName="SelectedValue" Type="Decimal" />
            </SelectParameters>
        </asp:SqlDataSource>
        </div>
        <div id="descriptionContainer" runat="server" style="display: none;">
            <h1>Zoek op omschrijving </h1>
            <asp:TextBox ID="search" runat="server"></asp:TextBox>
            <asp:Button ID="submit" runat="server" Text="Verzenden" />
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="homeworkID" DataSourceID="SqlDataSource3" EmptyDataText="Geen resultaten gevonden">
                <Columns>
                    <asp:BoundField DataField="subjectName" HeaderText="Vak" SortExpression="subjectName" />
                    <asp:BoundField DataField="exerciseName" HeaderText="Opdracht" SortExpression="exerciseName" />
                    <asp:BoundField DataField="description" HeaderText="Beschrijving" SortExpression="description" />
                    <asp:BoundField DataField="result" HeaderText="Beoordeling" SortExpression="result" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:homeworkVak %>" SelectCommand="SELECT * FROM [results] WHERE ([description] LIKE '%' + @description + '%')">
                <SelectParameters>
                    <asp:ControlParameter ControlID="search" Name="description" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>