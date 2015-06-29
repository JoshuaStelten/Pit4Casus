using System;
using System.Collections.Generic;
using System.EnterpriseServices;
using System.Linq;
using System.Web;

namespace LamaGaan.BU
{
    partial class MedewerkerRooster
    {
        public void getRooster(int myMedewerker, string myWeek, string myDag, string myVt)
        {
            using (Model1Container context = new Model1Container())
            {
                IQueryable<MedewerkerRooster> rooster = 
                    from a in context.MedewerkerRoosterSet
                    where a.medewerkerId == myMedewerker && a.week == myWeek
                    select a;
            }
        }
    }
}