<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="First_App._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <div class="row">
            <!--ZAD 1 i 2-->
            <div class="col-md-12 text-center">
                <h1>ZAD 1, 2 i 3</h1>
                <div class="m-3">
                    Изберете град:
                    <br />
                    <asp:ListBox ID="ListaGradovi" runat="server" SelectionMode="Multiple">
                        <asp:ListItem Value="0">Скопје</asp:ListItem>
                        <asp:ListItem Value="30">Велес</asp:ListItem>
                        <asp:ListItem Value="200">Охрид</asp:ListItem>
                    </asp:ListBox>
                </div>
                <div class="m-3">
                    <asp:Button ID="PrikaziGrad" runat="server" Text="Прикажи град" OnClick="PrikaziGrad_Click" />
                </div>
                <div class="m-3">
                    Селектираните градови се:
                    <asp:Label ID="SelektiranGrad" runat="server" Text=""></asp:Label>
                    <br />
                    Дистанците до Скопје се:
                    <asp:Label ID="DistancaGrad" runat="server" Text=""></asp:Label>
                </div>
            </div>
            <hr />
        </div>
    </main>

</asp:Content>
