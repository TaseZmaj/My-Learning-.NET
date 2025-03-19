<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Zad4_Converter.aspx.cs" Inherits="First_App.Zad4_Converter" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container-fluid">

        <div class="row text-center">
            <h1>Zad 4, 5 i 6</h1>
            <div class="m-1">
                <p>Внесете име на валута:</p>
                <asp:TextBox ID="ImeNaValuta" runat="server" OnTextChanged="InputField_Change"></asp:TextBox>
            </div>
            <div class="m-1">
                <p>Внесете вредност на валута:</p>
                <asp:TextBox ID="VrednostNaValuta" runat="server" OnTextChanged="InputField_Change"></asp:TextBox>
            </div>
            <div class="m-1">
                <p>Додади валута:</p>
                <asp:Button ID="DodadiValuta" runat="server" Text="Vnesi" Font-Bold="True" BorderStyle="Solid" OnClick="DodadiValuta_Click" />
                <p>Бриши валута:</p>
                <asp:Button ID="Button1" runat="server" Text="Brishi" Font-Bold="True" BorderStyle="Solid" OnClick="BrishiValuta_Click" />
            </div>

            <hr />
            <div class="m-4">
                <h4>Листа валути</h4>
                <br />
                <div class="text-center">
                    <asp:RadioButtonList ID="ListaValuti" runat="server" OnSelectedIndexChanged="ListaValuti_SelectedIndexChanged" AutoPostBack="True"></asp:RadioButtonList>
                </div>
            </div>
            <div class="m-4">
                <h4>Бројот на ставки во листата: </h4>
                <asp:Label ID="BrValuti" runat="server" Text="0"></asp:Label>
            </div>
            <div class="m-4">
                <h4>Статус:</h4>
                <asp:Label ID="Status" runat="server" Text=""></asp:Label>
            </div>
            <div class="m-4">
                <p>
                    Внесете вредност:<asp:TextBox ID="Vrednost" runat="server"></asp:TextBox>
                </p>
            </div>
        </div>

    </div>

</asp:Content>
