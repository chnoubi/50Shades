using SQLite;
using System;
using System.Collections.Generic;
using System.Text;

namespace _50ShadesOfBurgers
{
    public class Resto
    {
        [PrimaryKey, AutoIncrement]
        public int RestoId { get; set; }
        public String RestoName { get; set; }

        public String RestoCountry { get; set; }

        public String RestoCity { get; set; }

        public double RestoLongCoord { get; set; }

        public double RestoLatCoord { get; set; }

        public bool RestoNew { get; set; }

    }
}
