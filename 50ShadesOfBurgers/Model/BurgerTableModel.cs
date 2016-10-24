using System;
using System.Collections.Generic;
using System.Text;

namespace _50ShadesOfBurgers.Model
{
    public class BurgerTableModel
    {
        public int BurgerId { get; set; }

        public String BurgerName { get; set; }

        public int RestoId { get; set; }

        public String RestoName { get; set; }

        public double CurrentScore { get; set; }
    }
}
