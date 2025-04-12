<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Zad1.aspx.cs" Inherits="AV04.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="display: flex; flex-direction: column;">
        <h1>ZAD 1</h1>
        <asp:Button ID="Knigi" runat="server" Text="Knigi" OnClick="Knigi_Click"></asp:Button>
        <asp:Button ID="Tocaci" runat="server" Text="Tocaci" OnClick="Tocaci_Click"></asp:Button>
        <asp:Button ID="Kompjuteri" runat="server" Text="Kompjuteri" OnClick="Kompjuteri_Click"></asp:Button>

        <asp:HyperLink NavigateUrl="~/Pages/Proizvodi.aspx?id=1&ime=knigi" ID="HyperLink1" runat="server">Knigi</asp:HyperLink>
        <asp:HyperLink NavigateUrl="~/Pages/Proizvodi.aspx?id=2&ime=tocaci" ID="HyperLink2" runat="server">Tocaci</asp:HyperLink>
        <asp:HyperLink NavigateUrl="~/Pages/Proizvodi.aspx?id=3&ime=kompjuteri" ID="HyperLink3" runat="server">Kompjuteri</asp:HyperLink>
    </div>

</asp:Content>
