<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeBehind="Openingstijden.aspx.cs" Inherits="Kinderboerderij_Lama_Gaan.About.Openingstijden" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
    <h1>Openingstijden</h1>
    <p>
        Onze kinderboerderij is het gehele jaar geopend, zowel in de winter en herfst als in de lente en zomer.</p>
    <table class="auto-style1">
        <tr>
            <td>Maandag</td>
            <td>11:00-17:00</td>
        </tr>
        <tr>
            <td>Dinsdag</td>
            <td>11:00-17:00</td>
        </tr>
        <tr>
            <td>Woensdag</td>
            <td>11:00-19:00</td>
        </tr>
        <tr>
            <td>Donderdag</td>
            <td>11:00-19:00</td>
        </tr>
        <tr>
            <td>Vrijdag</td>
            <td>10:00-20:00</td>
        </tr>
        <tr>
            <td>Zaterdag</td>
            <td>10:00-20:00</td>
        </tr>
        <tr>
            <td>Zondag</td>
            <td>12:00-19:00</td>
        </tr>
    </table>
    <br />
    <asp:Button ID="EditButton" runat="server" Text="Veranderen" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpClientScript" runat="server">
</asp:Content>
