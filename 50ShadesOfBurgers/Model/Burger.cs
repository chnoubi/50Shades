using SQLite;
using System;
using System.Collections.Generic;
using System.Text;

namespace _50ShadesOfBurgers.Model
{
    public class Burger
    {
        [PrimaryKey, AutoIncrement]
        public int BurgerId { get; set; }

        public String BurgerName { get; set; }

    }
}
    