<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Vezb_Zad_1_2_3.aspx.cs" Inherits="First_App.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <asp:ListBox ID="ListaGradovi" runat="server" SelectionMode="Multiple"></asp:ListBox>
        <br />
        <asp:Button ID="Submit" runat="server" Text="Button" OnClick="Submit_Click" />
        <br />
        <asp:Label ID="GradName" runat="server" Text=""></asp:Label>
        <br />
        <asp:Label ID="GradDistance" runat="server" Text=""></asp:Label>
        <br />

        <br />
        <asp:Button ID="DeletePicture" runat="server" Text="Delete City" OnClick="DeletePicture_Click" />
    </div>
</asp:Content>
