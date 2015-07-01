using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;

namespace LamaGaan.BU
{
    partial class Inschrijvingen
    {
        public static void Aanmaken(Inschrijvingen MaakInschrijving)
        {
            using (Model1Container Context = new Model1Container())
            {
                Context.Entry(MaakInschrijving).State = EntityState.Modified;
                Context.InschrijvingSet1.Add(MaakInschrijving);
                Context.SaveChanges();
            }

        }
          
    }

}
