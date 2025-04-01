<%@ Page Title="Bogati Kontroli" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Bogati_Kontroli.aspx.cs" Inherits="AV03.Pages.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h1>Calendar</h1>
        <div>
            <asp:Calendar ID="Calendar1" runat="server" BackColor="#CC99FF" BorderColor="#232323" BorderStyle="Solid" BorderWidth="1px" FirstDayOfWeek="Monday" SelectedDayStyle-BackColor="#FF66FF" VisibleDate="01/04/2028 12:30:00"></asp:Calendar>
        </div>
    </div>
    <!--Ad rotator - citni prezentacija (43,44)-->

    <!--MultiView - ako stavis Command name kako vo prezentacijata vo sekoj od View elementite, se ebe programata
        t.e. raboti na nacin na koj shto ne sakas vo slucajov-->
    <asp:MultiView ID="mvRegistracija" runat="server">
        <asp:View ID="View1" runat="server">
            <h1>This is the first sector</h1>
            <div>
                <p>Име:</p>
                <asp:TextBox ID="ime" runat="server"></asp:TextBox>

            </div>
            <div>
                <p>Презиме:</p>
                <asp:TextBox ID="prezime" runat="server"></asp:TextBox>
            </div>
            <asp:Button Style="margin: 5px;" ID="Button6" runat="server" Text="<<" OnClick="PrevView" />
            <asp:Button Style="margin: 5px;" ID="Button1" runat="server" Text=">>" OnClick="NextView" />
        </asp:View>
        <asp:View ID="View2" runat="server">
            <h1>This is the second sector</h1>
            <asp:Button Style="margin: 5px;" ID="Button4" runat="server" Text="<<" OnClick="PrevView" />
            <asp:Button Style="margin: 5px;" ID="Button2" runat="server" Text=">>" OnClick="NextView" />
        </asp:View>
        <asp:View ID="View3" runat="server">
            <h1>This is the third sector</h1>
            <asp:Button Style="margin: 5px;" ID="Button3" runat="server" Text="<<" OnClick="PrevView" />
            <asp:Button Style="margin: 5px;" ID="Button5" runat="server" Text=">>" OnClick="NextView" />
        </asp:View>
    </asp:MultiView>
</asp:Content>
