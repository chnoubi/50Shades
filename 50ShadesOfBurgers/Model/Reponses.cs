using SQLite;
using System;
using System.Collections.Generic;
using System.Text;

namespace _50ShadesOfBurgers.Model
{
    public class Reponses
    {
        [PrimaryKey, AutoIncrement]
        public int ReponseId { get; set; }
        public int ReponseQuestId1 { get; set; }
        public int ReponseQuestId2 { get; set; }
        public int ReponseQuestId3 { get; set; }
        public int ReponseQuestId4 { get; set; }
        public int ReponseQuestId5 { get; set; }
        public int ReponseQuestId6 { get; set; }
        public int ReponseQuestId7 { get; set; }
        public int ReponseQuestId8 { get; set; }
        public int ReponseQuestId9 { get; set; }

        public double ReponseScoreMoyen { get; set; }
    }
}
