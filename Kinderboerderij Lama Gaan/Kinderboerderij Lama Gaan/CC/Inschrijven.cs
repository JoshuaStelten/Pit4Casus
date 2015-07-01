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
    class Inschrijven
    {

        public string MaakInschrijving(Dictionary<String, object> inschrijving)
        {
            string antwoord;

            try
            {
                string voornaam = inschrijving["voornaam"].ToString();
                string achternaam = inschrijving["achternaam"].ToString();
                string leeftijd = inschrijving["leeftijd"].ToString();
                string geslacht = inschrijving["geslacht"].ToString();
                string emailadres = inschrijving["emailadres"].ToString();
                



                LamaGaan.BU.Inschrijvingen Inschrijving = new LamaGaan.BU.Inschrijvingen()
                {
                    voornaam = voornaam,
                    achternaam = achternaam,
                    leeftijd = leeftijd,
                    geslacht = geslacht,
                    emailadres = emailadres,
                };
                LamaGaan.BU.Inschrijvingen.Aanmaken(Inschrijving);
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

