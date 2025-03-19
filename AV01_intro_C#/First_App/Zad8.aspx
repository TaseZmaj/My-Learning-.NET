<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Zad8.aspx.cs" Inherits="First_App.Zad8" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row text-center">
        <h1>Zad 8</h1>
    </div>
    <div class="container-fluid">
        <div class="d-flex h-100">
            <div class="w-50">
                <p>Изберете боја за позадина:</p>
                <asp:DropDownList ID="BoiPozadina" runat="server"></asp:DropDownList>
                <br />

                <p>Изберете фонт:</p>
                <asp:DropDownList ID="ImeFont" runat="server"></asp:DropDownList>
                <br />

                <p>Изберете боја на фонт:</p>
                <asp:DropDownList ID="BoiFont" runat="server"></asp:DropDownList>
                <br />

                <p>Изберете големина на фонт:</p>
                <asp:TextBox ID="GoleminaFont" runat="server"></asp:TextBox><span>pt</span>
                <br />

                <p>Тип на рамка: </p>
                <asp:RadioButtonList ID="RamkaType" runat="server">
                </asp:RadioButtonList>
                <br />


                <asp:CheckBox ID="Slika" runat="server" /><span>Додади слика </span>

                <p>Внесете ја содржината на честитката: </p>
                <asp:TextBox ID="CestitkaSodrzina" runat="server" TextMode="MultiLine"></asp:TextBox>

                <asp:Button ID="Kreiraj" runat="server" Text="Kreiraj" OnClick="Save_Click" />
            </div>
            <div class="w-50">
                <div class="col-5">
                    <asp:Panel ID="Cestitka" runat="server" Visible="false">
                        <h2>Cestitka</h2>
                        <asp:Label ID="Poraka" runat="server"></asp:Label>
                        <asp:Image ID="SlikaCestitka" runat="server" Visible="false" ImageUrl="~/Images/Malicious_Tom.jpg" />
                    </asp:Panel>
                </div>
            </div>
        </div>






    </div>
</asp:Content>
