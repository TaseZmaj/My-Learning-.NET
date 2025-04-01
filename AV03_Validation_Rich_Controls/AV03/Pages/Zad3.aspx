<%@ Page Title="Zad3" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Zad3.aspx.cs" Inherits="AV03.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <div>
            <p style="margin: 0;">Ime:</p>
            <asp:TextBox ID="ImeInput" runat="server"></asp:TextBox>
            <div>
                <asp:RequiredFieldValidator
                    class="text-danger"
                    ID="imeReq"
                    runat="server"
                    ErrorMessage="Името е здолжително!" ControlToValidate="ImeInput">
                </asp:RequiredFieldValidator>
            </div>
        </div>
        <div>
            <p style="margin: 0;">Ocena:</p>
            <asp:TextBox ID="OcenaInput" runat="server"></asp:TextBox>
            <div>
                <asp:RequiredFieldValidator
                    class="text-danger"
                    ID="ocenaReq"
                    runat="server"
                    ErrorMessage="Оценката е здолжителна!" ControlToValidate="OcenaInput">
                </asp:RequiredFieldValidator>
                <!--Za ocenka od 0-5 koristis Range validator -->
                <!--MORA da dodadesh Type:Integer za da raboti -->
                <asp:RangeValidator
                    class="text-danger"
                    ID="ocenaValidator"
                    runat="server"
                    ErrorMessage="Оценката мора да биде број од 5-10"
                    MinimumValue="5"
                    MaximumValue="10"
                    Type="Integer"
                    ControlToValidate="OcenaInput"></asp:RangeValidator>
            </div>
        </div>
        <div>
            <p style="margin: 0;">Datum:</p>
            <asp:TextBox ID="DatumInput" runat="server"></asp:TextBox>
            <div>
                <asp:RequiredFieldValidator
                    class="text-danger"
                    ID="datumReq"
                    runat="server"
                    ErrorMessage="Датумот е здолжителен!" ControlToValidate="DatumInput">
                </asp:RequiredFieldValidator>
                <!--Tuka mozesh da koristish i Compare validator VAKA: -->
                <!--Operator= koristis, ValuteToCompare i Type="Date"-->
                <!--ControlToCompare ne koristis bidejki ne sporeduvas so drug Web control -->
                <asp:CompareValidator
                    ID="datumCmp"
                    runat="server"
                    ErrorMessage="Датумот мора да е во точен формат!"
                    ControlToValidate="DatumInput"
                    Operator="LessThan"
                    Type="Date"
                    ValueToCompare="05.05.2025"></asp:CompareValidator>
                <!--Mozesh i vaka shto mislam deka e podobro
                    <asp:RangeValidator
                    class="text-danger"
                    ID="DatumValidator"
                    runat="server"
                    ErrorMessage="Датумот мора да е во точен формат!"
                    MinimumValue="01.01.2000"
                    MaximumValue="04.05.2025"
                    Type="Date"
                    ControlToValidate="DatumInput"></asp:RangeValidator>-->
            </div>
        </div>

        <div>
            <asp:Button Style="margin-top: 10px;" ID="AddBtn" runat="server" Text="Dodaj ispit" OnClick="AddBtn_Click" />
        </div>

        <div>
            <asp:Label ID="ImePredmet" runat="server" Text=""></asp:Label>
            <asp:Label ID="Ocena" runat="server" Text=""></asp:Label>
            <asp:Label ID="Datum" runat="server" Text=""></asp:Label>
        </div>
    </div>
</asp:Content>
