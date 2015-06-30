using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Kinderboerderij_Lama_Gaan.Medewerker
{
    public partial class WijzigenMedewerker : System.Web.UI.Page
    {
        private Kinderboerderij_Lama_Gaan.CC.MedewerkerWijzigen cc;
        protected void Page_Load(object sender, EventArgs e)
        {
            cc = new Kinderboerderij_Lama_Gaan.CC.MedewerkerWijzigen();
            

        }

        protected void Btopslaan_Click(object sender, EventArgs e)
        {
            
            Dictionary<String, object> medewerker = new Dictionary<string, object>();
            medewerker.Add("Naam", TbNaam.Text);
            medewerker.Add("Achternaam", TbAchternaam.Text);
            medewerker.Add("Leeftijd", TbLeeftijd.Text);
            medewerker.Add("Geslacht", TbGeslacht.Text);
            medewerker.Add("Email", TbEmail.Text);
            medewerker.Add("Functie", TbFunctie.Text);
            medewerker.Add("Telnr", TbTelnr.Text);
            medewerker.Add("Adres", TbAdres.Text);
            medewerker.Add("RoosterID", TbRoosterId.Text);
            string antwoord = cc.WijzigMedewerker(medewerker);
            LbAntwoord.Text = antwoord;
        }
    }
}