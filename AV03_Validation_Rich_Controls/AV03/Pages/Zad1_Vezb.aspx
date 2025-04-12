<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Zad1_Vezb.aspx.cs" Inherits="AV03.Pages.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <div class="m-2">
            <asp:TextBox ID="email" runat="server"> </asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" class="text-danger" runat="server" ErrorMessage="Email e zadolzitelen!" ControlToValidate="email"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Emailot ne e vo tocen format!" ControlToValidate="email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </div>
        <div class="m-2">
            <asp:TextBox ID="password" runat="server"> </asp:TextBox>
        </div>
        <div class="m-2">
            <asp:TextBox ID="confirmPassword" runat="server"></asp:TextBox>
        </div>
        <asp:Button ID="Submit" runat="server" Text="Button" />
    </div>
</asp:Content>
