<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Proizvodi.aspx.cs" Inherits="AV04.Pages.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Heading" runat="server" Text="Label"></asp:Label>
    <br />
    <asp:ListBox ID="ListProizvodi" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ListProizvodi_SelectedIndexChanged"></asp:ListBox>
    <br />
    <span>Broj na promeni: </span>
    <asp:Label ID="BrPromeni" runat="server" Text=""></asp:Label>
    <br />
    <asp:Button ID="DodadiProizvod" runat="server" Text="Dodadi Proizvod" OnClick="Dodadi_Proizvod" />
    <br />
    <span>SELEKTIRANI PROIZVODI: </span>
    <asp:ListBox ID="SelektiraniProizvodi" runat="server" AutoPostBack="True" EnableViewState="true"></asp:ListBox>
    <br />
    <span>Kon plakjanje:</span>
    <asp:Button ID="Plakjanje" runat="server" Text="Checkout" OnClick="Plakjanje_Click" />
</asp:Content>
