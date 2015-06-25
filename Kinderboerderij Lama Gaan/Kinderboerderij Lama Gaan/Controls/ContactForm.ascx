<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ContactForm.ascx.cs" Inherits="Kinderboerderij_Lama_Gaan.Controls.WebUserControl1" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        height: 23px;
    }
</style>
<script>
function validateTelefoonNummer(source, args)
{
var phoneHome = document.getElementById('<%= TbTelefoonNummer.ClientID %>');
if (phoneHome.value != '')
{
args.IsValid = true;
}
else
{
args.IsValid = false;
}
}
</script>

<table class="auto-style1">
    <tr>
        <td colspan="3">
            <h1>Contact formulier </h1>
            <p>
                Doormiddel dit contactformulier in te vullen kunt u contact opnemen met onze kinderboerderij &quot;Lama gaan&quot;</p>
        </td>
    </tr>
    <tr>
        <td>Naam:</td>
        <td>
            <asp:TextBox ID="TbNaam" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Name" CssClass="ErrorMessage" ErrorMessage="Geef uw naam">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Email adres:</td>
        <td class="auto-style2">
            <asp:TextBox ID="TbEmailAdres" runat="server" TextMode="Email"></asp:TextBox>
        </td>
        <td class="auto-style2">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TbEmailAdres" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Geef u Email adres">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TbEmailAdres" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Geef een geldig Email adres" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td>Bevestig uw Email adres:</td>
        <td>
            <asp:TextBox ID="TbBevestigEmailAdres" runat="server" TextMode="Email"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TbBevestigEmailAdres" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Bevestig uw Email adres">*</asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TbEmailAdres" ControlToValidate="TbBevestigEmailAdres" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="De Email adressen matchen niet">*</asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td>Telefoon nummer:</td>
        <td>
            <asp:TextBox ID="TbTelefoonNummer" runat="server" TextMode="Number"></asp:TextBox>
        </td>
        <td>
            <asp:CustomValidator ID="CustomValidator1" runat="server" ClientValidationFunction="validatePhoneNumbers" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Geef uw telefoonnummer" OnServerValidate="CustomValidator1_ServerValidate">*</asp:CustomValidator>
        </td>
    </tr>
    <tr>
        <td>Comments:</td>
        <td>
            <asp:TextBox ID="TbComments" runat="server" TextMode="MultiLine"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TbComments" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Geef een bericht">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="BtVerzenden" runat="server" Text="Verzenden" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td colspan="3">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="ErrorMessage" />
        </td>
    </tr>
</table>

