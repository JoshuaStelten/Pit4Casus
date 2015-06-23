<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeBehind="Prijzen.aspx.cs" Inherits="Kinderboerderij_Lama_Gaan.About.Prijzen" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
    <h1>Prijzen</h1>
    <p>
        De prijzen voor onze kinderboerderij verschillen per seizoen. Wij vragen slechts een kleine vergoeding om de optimale zorg voor onze dieren te realiseren.</p>
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td><b>Volwassen</b></td>
            <td><b>Kind</b></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Oktober t/m april</td>
            <td>4 euro</td>
            <td>2 euro</td>
        </tr>
        <tr>
            <td>Mei t/m augustus</td>
            <td>6 euro</td>
            <td>4 euro</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Jaarabbonement</td>
            <td>25 euro</td>
            <td>17,50 euro</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Groepskorting (vanaf 15 personen)</td>
            <td>15 %</td>
            <td>20 %</td>
        </tr>
    </table>
    <br />
    <asp:Button ID="EditButton" runat="server" Text="Aanpassen" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpClientScript" runat="server">
</asp:Content>
