<%@ Page Title="Zad4" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Zad4.aspx.cs" Inherits="AV03.WebForm4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-3">
            <asp:TextBox ID="MobilenInput" runat="server"></asp:TextBox>
            <div>
                <asp:RequiredFieldValidator
                    class="text-danger"
                    ID="MobilenRequired"
                    runat="server"
                    ErrorMessage="Мобилниот телефон е задолжителен!"
                    ControlToValidate="MobilenInput"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator
                    class="text-danger"
                    ID="MobilenValidator"
                    runat="server"
                    ErrorMessage="Мобилниот телефон мора да е во точен формат!"
                    ControlToValidate="MobilenInput"
                    ValidationExpression="07(1|2|4|5|6|7) [0-9]{3} [0-9]{3}$"></asp:RegularExpressionValidator>
            </div>
            <asp:Button ID="SubmitBtn" runat="server" Text="Submit" OnClick="SubmitBtn_Click" />
        </div>

        <div class="col-md-3">
            <asp:Label ID="Mobilen" runat="server" Text=""></asp:Label>
        </div>
    </div>
</asp:Content>
