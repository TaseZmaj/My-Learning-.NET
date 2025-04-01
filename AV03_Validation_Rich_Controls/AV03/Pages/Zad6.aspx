<%@ Page Title="Zad6" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Zad6.aspx.cs" Inherits="AV03.WebForm6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <div>
            <p style="margin-bottom: 1px;">Валидациона група 1</p>
            <asp:TextBox ID="Grupa1Input" runat="server" ValidationGroup="grupa1"></asp:TextBox>
            <asp:RequiredFieldValidator
                class="text-danger"
                ID="Grupa1Validator"
                runat="server"
                ErrorMessage="Грешка, група 1"
                ControlToValidate="Grupa1Input" ValidationGroup="grupa1"></asp:RequiredFieldValidator>
            <asp:Button ID="Button1" runat="server" Text="Grupa1" ValidationGroup="grupa1" />
        </div>
        <div>
            <p style="margin-bottom: 1px;">Валидациона група 2</p>
            <asp:TextBox ID="Grupa2Input" runat="server" ValidationGroup="grupa2"></asp:TextBox>
            <asp:RequiredFieldValidator
                class="text-danger"
                ID="Grupa2Validator"
                runat="server"
                ErrorMessage="Грешка, група 2"
                ControlToValidate="Grupa2Input" ValidationGroup="grupa2"></asp:RequiredFieldValidator>
            <asp:Button ID="Button2" runat="server" Text="Grupa2" ValidationGroup="grupa2" />
        </div>
    </div>
</asp:Content>
