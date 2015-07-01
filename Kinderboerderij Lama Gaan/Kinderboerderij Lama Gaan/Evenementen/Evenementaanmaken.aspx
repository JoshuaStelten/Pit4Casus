<%@ Page Title="Evenement Aanmaken" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeBehind="EvenementAanmaken.aspx.cs" Inherits="Kinderboerderij_Lama_Gaan.Evenementen.EvenementAanmaken" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 { width: 100%; }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
    <h1>
        <br/>
        Evenement Aanmaken
    </h1>
    &nbsp;<table class="auto-style1">
        <tr>
            <td>Evenementnaam</td>
            <td>
                <asp:TextBox ID="tbEvenementNaam" runat="server" OnTextChanged="tbEvenementNaam_TextChanged"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Beschrijving</td>
            <td>
                <asp:TextBox ID="tbEvenementBeschrijving" runat="server" Height="16px" Width="428px" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                <br/>

            </td>
        </tr>
    </table>
    <br/>
    <asp:Button ID="btAanmaken" runat="server" OnClick="Button1_Click" Text="Aanmaken"/>
    <asp:Label ID="lbAntwoord" runat="server" Text="Label"></asp:Label>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpClientScript" runat="server">
</asp:Content>