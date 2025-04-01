<%@ Page Title="Zad5" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Zad5.aspx.cs" Inherits="AV03.WebForm5" %>

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
                    ErrorMessage="Името е здолжително!"
                    ControlToValidate="ImeInput"
                    Display="None"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div>
            <p style="margin: 0;">Ocena:</p>
            <asp:TextBox ID="OcenaInput" runat="server"></asp:TextBox>
            <div>
                <asp:RangeValidator
                    class="text-danger"
                    ID="ocenaValidator"
                    runat="server"
                    ErrorMessage="Оценката мора да биде број од 5-10"
                    MinimumValue="5"
                    MaximumValue="10"
                    Type="Integer"
                    ControlToValidate="OcenaInput"
                    Display="None"></asp:RangeValidator>
            </div>
        </div>
        <div>
            <p style="margin: 0;">Datum:</p>
            <asp:TextBox ID="DatumInput" runat="server"></asp:TextBox>
            <div>
                <asp:CompareValidator
                    ID="datumCmp"
                    runat="server"
                    ErrorMessage="Датумот мора да е во точен формат!"
                    ControlToValidate="DatumInput"
                    Operator="LessThan"
                    Type="Date"
                    ValueToCompare="05.05.2025"
                    Display="None"></asp:CompareValidator>
            </div>
            <div>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
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
