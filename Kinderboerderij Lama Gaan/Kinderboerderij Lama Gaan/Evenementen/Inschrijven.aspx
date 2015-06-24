﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeBehind="Inschrijven.aspx.cs" Inherits="Kinderboerderij_Lama_Gaan.Evenementen.Inschrijven" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 300px;
        }
        .auto-style2 {
            width: 800px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
        Schrijf je hier in voor een evenement. Iedereen moet zich apart inschrijven.
   <table class="auto-style1">
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
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Achternaam:</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Leeftijd:</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" MaxLength="2" TextMode="Number"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Geslacht:</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Jongen</asp:ListItem>
                    <asp:ListItem>Meisje</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Email adres:</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" OnTextChanged="TextBox4_TextChanged"></asp:TextBox>
            </td>
        </tr>
    </table>
&nbsp;
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpClientScript" runat="server">
</asp:Content>
