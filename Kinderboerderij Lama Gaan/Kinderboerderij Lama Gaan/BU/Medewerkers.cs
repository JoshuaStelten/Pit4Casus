using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;

namespace LamaGaan.BU
{
    partial class Medewerkers
    {
        public static void Aanmaken(Medewerkers WijzigMedewerker)
        {
            using (Model1Container Context = new Model1Container())
            {
                Context.Entry(WijzigMedewerker).State = EntityState.Modified;
                Context.MedewerkersSet1.Add(WijzigMedewerker);
                Context.SaveChanges();
            }

        }
          
    }

}
