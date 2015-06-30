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
    class EvenementWijzigen
    {

        public string WijzigEvenement(Dictionary<String, object> evenement)
        {
            string antwoord;

            try
            {
                string naam = evenement["naam"].ToString();
                string beschrijving = evenement["beschrijving"].ToString();
                



                LamaGaan.BU.Evenementen Evenement = new LamaGaan.BU.Evenementen()
                {
                    naam = naam,
                    beschrijving = beschrijving,
                };
                LamaGaan.BU.Evenementen.Aanmaken(Evenement);
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

