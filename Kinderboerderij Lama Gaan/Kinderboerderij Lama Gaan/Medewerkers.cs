//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Kinderboerderij_Lama_Gaan
{
    using System;
    using System.Collections.Generic;
    
    public partial class Medewerkers
    {
        public Medewerkers()
        {
            this.VoerSchema = new HashSet<VoerSchema>();
        }
    
        public int Id { get; set; }
        public string naam { get; set; }
        public string achternaam { get; set; }
        public int leeftijd { get; set; }
        public string geslacht { get; set; }
        public string email { get; set; }
        public string functie { get; set; }
        public int telnr { get; set; }
        public string adres { get; set; }
    
        public virtual MedewerkerRooster MedewerkerRooster { get; set; }
        public virtual ICollection<VoerSchema> VoerSchema { get; set; }
    }
}
