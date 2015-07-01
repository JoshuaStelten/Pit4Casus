using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;

namespace LamaGaan.BU
{
    partial class Evenementen
    {
        public static void Aanmaken(Evenementen WijzigEvenement)
        {
            using (Model1Container Context = new Model1Container())
            {
                Context.Entry(WijzigEvenement).State = EntityState.Modified;
                Context.EvenementSet1.Add(WijzigEvenement);
                Context.SaveChanges();
            }

        }
          
    }

}
