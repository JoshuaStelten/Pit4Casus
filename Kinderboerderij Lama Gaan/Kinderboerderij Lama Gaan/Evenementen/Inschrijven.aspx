﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeBehind="Inschrijven.aspx.cs" Inherits="Kinderboerderij_Lama_Gaan.Evenementen.Inschrijven" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 37%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
    <h1>Inschrijven</h1>
        Schrijf je hier in voor een van onze evenementen. Elke deelnemer moet zich apart inschrijven.<br />
&nbsp;<table class="auto-style1">
        <tr>
            <td class="auto-style2">Evenement:</td>
            <td>
    <asp:DropDownList ID="EventList" runat="server">
        <asp:ListItem>Pony Kamp</asp:ListItem>
    </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Voornaam:</td>
            <td>
                <asp:TextBox ID="tbVoornaam" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Achternaam:</td>
            <td>
                <asp:TextBox ID="tbAchternaam" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Leeftijd:</td>
            <td>
                <asp:TextBox ID="tbLeeftijd" runat="server" MaxLength="2" TextMode="Number"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Geslacht:</td>
            <td>
                <asp:TextBox ID="tbGeslacht" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Email adres:</td>
            <td>
                <asp:TextBox ID="tbEmail" runat="server" TextMode="Email"></asp:TextBox>
            </td>
        </tr>
    </table>
&nbsp;
    <asp:Button ID="btInschrijven" runat="server" OnClick="btInschrijven_Click" Text="Inschrijven" />
    <asp:Label ID="lbAntwoord" runat="server" Text="Label"></asp:Label>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpClientScript" runat="server">
</asp:Content>
