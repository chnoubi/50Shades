using SQLite;
using System;
using System.Collections.Generic;
using System.Text;

namespace _50ShadesOfBurgers
{
    public class User
    {
        [PrimaryKey, AutoIncrement]
        public int Id { get; set; }
        public String Uuid { get; set; }

        public String Email { get; set; }

        public int Gender { get; set; }

        public DateTime Birthday { get; set; }

        public String DeviceToken { get; set; }
    }
}
