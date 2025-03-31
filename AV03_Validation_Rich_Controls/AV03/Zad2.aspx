<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Zad2.aspx.cs" Inherits="AV03.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-3">
            <asp:DropDownList ID="GradoviList" runat="server">
                <asp:ListItem>(grad)</asp:ListItem>
                <asp:ListItem>Ohrid</asp:ListItem>
                <asp:ListItem>Skopje</asp:ListItem>
                <asp:ListItem>Bogdanci</asp:ListItem>
                <asp:ListItem>Veles</asp:ListItem>
                <asp:ListItem>Kavadarci</asp:ListItem>
            </asp:DropDownList>
            <div>
                <!--PREKU InitialValue raboti validatorov, bidejki dropdown NEMOZE da bide prazen, 
                    bez initialValue NEMA da raboti-->
                <asp:RequiredFieldValidator
                    Style="color: darkred;"
                    ID="gradoviValidator"
                    runat="server"
                    ErrorMessage="Задолжително селектирај град!"
                    InitialValue="(grad)"
                    ControlToValidate="GradoviList"></asp:RequiredFieldValidator>
            </div>
            <div>
                <asp:Button ID="SubmitBrn" runat="server" Text="Lock in selection!" OnClick="SubmitGrad" />
            </div>

        </div>
        <div class="col-md-9">
            <asp:Label ID="gradLabel" runat="server" Text=""></asp:Label>
        </div>
    </div>
</asp:Content>
