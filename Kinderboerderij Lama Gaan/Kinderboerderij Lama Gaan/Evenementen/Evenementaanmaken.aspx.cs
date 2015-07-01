using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Kinderboerderij_Lama_Gaan.Evenementen
{
    public partial class EvenementAanmaken : Page
    {
        private CC.EvenementWijzigen cc;

        protected void Page_Load(object sender, EventArgs e)
        {
            cc = new CC.EvenementWijzigen();
        }

        protected void btAanmaken_Click(object sender, EventArgs e)
        {
            var evenement = new Dictionary<string, object>();
            evenement.Add("Naam", tbEvenementNaam.Text);
            evenement.Add("Achternaam", tbEvenementBeschrijving.Text);
            var antwoord = cc.WijzigEvenement(evenement);
            lbAntwoord.Text = antwoord;
        }
    }
}