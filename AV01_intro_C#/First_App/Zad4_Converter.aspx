<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Zad4_Converter.aspx.cs" Inherits="First_App.Zad4_Converter" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container-fluid">

        <div class="row text-center">
            <h1>Zad 4</h1>
            <div class="m-4">
                <p>Внесете име на валута:</p>
                <asp:TextBox ID="ImeNaValuta" runat="server"></asp:TextBox>
            </div>
            <div class="m-4">
                <p>Внесете вредност на валута:</p>
                <asp:TextBox ID="VrednostNaValuta" runat="server"></asp:TextBox>
            </div>
            <div class="m-4">
                <p>Додади валута:</p>
                <asp:Button ID="DodadiValuta" runat="server" Text="Vnesi" Font-Bold="True" BorderStyle="Solid" OnClick="DodadiValuta_Click" />
            </div>

            <hr />
            <div class="m-4">
                <h3>Листа валути</h3>
                <br />
                <asp:RadioButtonList ID="ListaValuti" runat="server"></asp:RadioButtonList>
            </div>
        </div>

    </div>

</asp:Content>
