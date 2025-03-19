<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Zad7.aspx.cs" Inherits="First_App.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid">
        <div class="row text-center">
            <h1 class="text-center">Zad 7</h1>
        </div>
        <!--<div class="row m-4">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/Malicious_Tom.jpg" />
        </div> -->

        <div class="row m-4">
            <asp:ImageButton ID="MaliciousTomBtn" runat="server" ImageUrl="~/Images/Malicious_Tom.jpg" OnClick="MaliciousTomBtn_Click" />
        </div>

        <div class="row m-4">
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>
    </div>
</asp:Content>
