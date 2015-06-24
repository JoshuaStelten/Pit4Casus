<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Kinderboerderij_Lama_Gaan.Login.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
    <h1>Login</h1>
    <p>
        Medewerkers en administrators kunnen op deze pagina inloggen.</p>
    <table class="auto-style1">
        <tr>
            <td>Gebruikersnaam</td>
            <td>
                <asp:TextBox ID="TbGebruikersnaam" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Wachtwoord</td>
            <td>
                <asp:TextBox ID="TbWachtwoord" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="LoginButton" runat="server" Text="Inloggen" />
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpClientScript" runat="server">
</asp:Content>
