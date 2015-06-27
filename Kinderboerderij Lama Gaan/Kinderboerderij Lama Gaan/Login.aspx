<%@ Page Title="Inloggen bij Lama Gaan" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Kinderboerderij_Lama_Gaan.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
    <asp:Login ID="Login1" runat="server" DestinationPageUrl="~/Default.aspx">
    </asp:Login>
    <asp:LoginStatus ID="LoginStatus1" runat="server" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpClientScript" runat="server">
</asp:Content>
