<%@ Page Title="Wijzigen" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeBehind="WijzigenMedewerker.aspx.cs" Inherits="Kinderboerderij_Lama_Gaan.Medewerker.WijzigenMedewerker" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
    <p>
        Naam:
        <asp:TextBox ID="TbNaam" runat="server"></asp:TextBox>
    </p>
<p>
        achternaam:<asp:TextBox ID="TbAchternaam" runat="server"></asp:TextBox>
    </p>
<p>
        leeftijd<asp:TextBox ID="TbLeeftijd" runat="server"></asp:TextBox>
    </p>
<p>
        geslacht<asp:TextBox ID="TbGeslacht" runat="server"></asp:TextBox>
    </p>
<p>
        email<asp:TextBox ID="TbEmail" runat="server"></asp:TextBox>
    </p>
<p>
        telnr<asp:TextBox ID="TbTelnr" runat="server"></asp:TextBox>
    </p>
<p>
        functie<asp:TextBox ID="TbFunctie" runat="server"></asp:TextBox>
    </p>
<p>
        adres<asp:TextBox ID="TbAdres" runat="server"></asp:TextBox>
    </p>
<p>
        roosterID<asp:TextBox ID="TbRoosterId" runat="server"></asp:TextBox>
    </p>
    
<p>
        <asp:Label ID="LbAntwoord" runat="server" Text="Label"></asp:Label>
        
    </p>
    <p>
        <asp:Button ID="Btopslaan" runat="server" Text="opslaan" OnClick="Btopslaan_Click" Height="26px" />
    </p>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="cpClientScript" runat="server">
</asp:Content>
