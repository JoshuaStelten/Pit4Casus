//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace LamaGaan.BU
{
    using System;
    using System.Collections.Generic;
    
    public partial class MedewerkerRooster
    {
        public MedewerkerRooster()
        {
            this.Medewerkers = new HashSet<Medewerkers>();
        }
    
        public int Id { get; set; }
        public int medewerkerId { get; set; }
        public string week { get; set; }
        public string dag { get; set; }
        public Nullable<System.TimeSpan> tijdVan { get; set; }
        public Nullable<System.TimeSpan> tijdTot { get; set; }
        public string activiteit { get; set; }
    
        public virtual ICollection<Medewerkers> Medewerkers { get; set; }
    }
}
