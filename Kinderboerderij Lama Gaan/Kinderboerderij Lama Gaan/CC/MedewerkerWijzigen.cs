using System;
using System.Collections.Generic;
using System.Data.Entity.Core.Common.CommandTrees;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Text;
using System.Threading.Tasks;
using Kinderboerderij_Lama_Gaan.About;
using LamaGaan.BU;


namespace Kinderboerderij_Lama_Gaan.CC
{
    class MedewerkerWijzigen
    {

        public string WijzigMedewerker(Dictionary<String, object> medewerker)
        {
            string antwoord;

            try
            {
                string Achternaam = medewerker["Achternaam"].ToString();
                string Naam = medewerker["Naam"].ToString();
                string Adres = medewerker["Adres"].ToString();
                string Email = medewerker["Email"].ToString();
                string Geslacht = medewerker["Geslacht"].ToString();
                string Functie = medewerker["Functie"].ToString();
                int Leeftijd = Int32.Parse(medewerker["Leeftijd"].ToString());
                int Telnr = Int32.Parse(medewerker["Telnr"].ToString());



                LamaGaan.BU.Medewerkers Medewerker = new LamaGaan.BU.Medewerkers()
                {
                    achternaam = Achternaam,
                    naam = Naam,
                    adres = Adres,
                    email = Email,
                    functie = Functie,
                    geslacht = Geslacht,
                    leeftijd = Leeftijd,
                    telnr = Telnr
                };
                LamaGaan.BU.Medewerkers.Aanmaken(Medewerker);
                antwoord = "gelukt";
            }
            catch (Exception)
            {
                antwoord = "Mislukt";
            }
            return antwoord;
        }
    }
}

