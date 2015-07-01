using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Kinderboerderij_Lama_Gaan.Evenementen
{
    public partial class Inschrijven : System.Web.UI.Page
    {
        private CC.Inschrijven cc;
        protected void Page_Load(object sender, EventArgs e)
        {
            cc = new CC.Inschrijven();
        }

        protected void btInschrijven_Click(object sender, EventArgs e)
        {
            var evenement = new Dictionary<string, object>();
            evenement.Add("Voornaam", tbVoornaam.Text);
            evenement.Add("Achternaam", tbAchternaam.Text);
            evenement.Add("Leeftijd", tbLeeftijd.Text);
            evenement.Add("Geslacht", tbGeslacht.Text);
            evenement.Add("Email", tbEmail.Text);
            var antwoord = cc.MaakInschrijving(evenement);
            lbAntwoord.Text = antwoord;
        }


    }
}