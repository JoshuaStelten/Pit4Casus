<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeBehind="Rooster.aspx.cs" Inherits="Kinderboerderij_Lama_Gaan.Medewerkers.Rooster" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 20px;
        }
        .auto-style3 {
            height: 20px;
            width: 113px;
        }
        .auto-style4 {
            width: 113px;
        }
        .auto-style5 {
            height: 20px;
            width: 73px;
        }
        .auto-style6 {
            width: 73px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style2">
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem Value="1">Week 1</asp:ListItem>
                    <asp:ListItem Value="2">Week 2</asp:ListItem>
                    <asp:ListItem Value="3">Week 3</asp:ListItem>
                    <asp:ListItem Value="4">Week 4</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Dag</td>
            <td class="auto-style5">Van</td>
            <td class="auto-style2">Tot</td>
        </tr>
        <tr>
            <td class="auto-style4">Maandag</td>
            <td class="auto-style6">
                <asp:Label ID="Label_1_1" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label_1_2" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Dinsdag</td>
            <td class="auto-style6">
                <asp:Label ID="Label_2_1" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label_2_2" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Woensdag</td>
            <td class="auto-style6">
                <asp:Label ID="Label_3_1" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label_3_2" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Donderdag</td>
            <td class="auto-style6">
                <asp:Label ID="Label_4_1" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label_4_2" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Vrijdag</td>
            <td class="auto-style6">
                <asp:Label ID="Label_5_1" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label_5_2" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Zaterdag</td>
            <td class="auto-style6">
                <asp:Label ID="Label_6_1" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label_6_2" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Zondag</td>
            <td class="auto-style6">
                <asp:Label ID="Label_7_1" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label_7_2" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpClientScript" runat="server">
</asp:Content>
