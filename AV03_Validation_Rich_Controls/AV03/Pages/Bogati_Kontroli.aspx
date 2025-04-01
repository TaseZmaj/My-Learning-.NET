<%@ Page Title="Bogati Kontroli" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Bogati_Kontroli.aspx.cs" Inherits="AV03.Pages.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h1>Calendar</h1>
        <div>
            <asp:Calendar ID="Calendar1" runat="server" BackColor="#CC99FF" BorderColor="#232323" BorderStyle="Solid" BorderWidth="1px" FirstDayOfWeek="Monday" SelectedDayStyle-BackColor="#FF66FF" VisibleDate="01/04/2028 12:30:00"></asp:Calendar>
        </div>
    </div>
    <!--Ad rotator - citni prezentacija (43,44)-->
    <asp:MultiView ID="mvRegistracija" runat="server"></asp:MultiView>
</asp:Content>
