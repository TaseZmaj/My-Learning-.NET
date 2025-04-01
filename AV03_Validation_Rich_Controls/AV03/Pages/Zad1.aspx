<%@ Page Title="Zad1" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Zad1.aspx.cs" Inherits="AV03.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <div style="margin-bottom: 4px;">
            <asp:TextBox ID="email" runat="server"></asp:TextBox>
            <span>
                <asp:RequiredFieldValidator
                    class="text-danger"
                    ID="emailRequiredValidator"
                    runat="server"
                    ErrorMessage="Е-маил е задолжителен!"
                    ControlToValidate="email"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator
                    class="text-danger"
                    ID="emailValidator"
                    runat="server"
                    ErrorMessage="Вредноста за е-маил е невалидна!"
                    ValidationExpression="\w+@\w+\.\w+"
                    ControlToValidate="email"></asp:RegularExpressionValidator>
            </span>
        </div>
        <div style="margin-bottom: 4px;">
            <asp:TextBox ID="password" runat="server"></asp:TextBox>
            <span>
                <asp:RequiredFieldValidator
                    class="text-danger"
                    ID="passRequiredValidator"
                    runat="server"
                    ErrorMessage="Лозинката е задолжителна!"
                    ControlToValidate="password"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator
                    class="text-danger"
                    ID="passValidator"
                    runat="server"
                    ErrorMessage="Вредноста за лозинката е невалидна!"
                    ValidationExpression=".{5,}"
                    ControlToValidate="password"></asp:RegularExpressionValidator>
            </span>
        </div>
        <div style="margin-bottom: 4px;">
            <asp:TextBox ID="cpassword" runat="server"></asp:TextBox>
            <span>
                <asp:RequiredFieldValidator
                    class="text-danger"
                    ID="cpassRequiredValidator"
                    runat="server"
                    ErrorMessage="Лозинката е задолжителна!"
                    ControlToValidate="cpassword"></asp:RequiredFieldValidator>
                <asp:CompareValidator
                    class="text-danger"
                    ID="cpassValidator"
                    runat="server"
                    ErrorMessage="Лозинките не се софпаѓаат"
                    ControlToValidate="cpassword"
                    ControlToCompare="password"></asp:CompareValidator>
            </span>
        </div>
        <div style="margin-bottom: 4px;">
            <asp:Button ID="Register" runat="server" Text="Регистрирај се!" OnClick="Register_Click" />
        </div>
        <div style="margin-bottom: 4px;">
            <asp:Label ID="username" runat="server" Text=""></asp:Label>
        </div>
    </div>
</asp:Content>
