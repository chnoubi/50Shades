using _50ShadesOfBurgers.Model;
using SQLite;
using System;
using System.Collections.Generic;
using System.IO;
using System.Net;
using System.Text;

namespace _50ShadesOfBurgers
{
    public class Connections
    {
        private static string pathToDatabase;
        SQLiteConnection conn;

        public Connections()
        {
            var documents = Environment.GetFolderPath(Environment.SpecialFolder.Personal);
            pathToDatabase = Path.Combine(documents, "db_Burgers.db");

            this.conn = new SQLiteConnection(pathToDatabase);
            this.conn.CreateTable<User>();
            this.conn.CreateTable<Burger>();
            this.conn.CreateTable<Resto>();
            this.conn.CreateTable<Reponses>();
            //maak standaard een user aan waar de keuze nog niet gedaan is. Nodig voor de start app check
            if (this.conn.Find<User>(1) == null) this.conn.Insert(new User { });
            if (this.conn.Find<Burger>(1) == null) this.conn.Insert(new Burger { });
            if (this.conn.Find<Resto>(1) == null) this.conn.Insert(new Resto { });
            if (this.conn.Find<Reponses>(1) == null) this.conn.Insert(new Reponses { });


        }



        public void deleteTableUser()
        {
            this.conn.DropTable<User>();
        }


        public void updateUser(User user)
        {
            this.conn.Update(user);
        }

        public User getUser()
        {
            return this.conn.Get<User>(1);
        }

        public void close()
        {
            this.conn.Close();
        }


        public void deleteRestoBurger()
        {
            this.conn.DeleteAll<Burger>();
            this.conn.DeleteAll<Resto>();
            this.conn.DeleteAll<Reponses>();
        }

       public void makeNewRestoBurger()
        {
            // WHEN SENDING DATA TO SERVER (END OF QUESTIONNAIRE) DELETE BURGER/RESTO!!
          /*  if (this.conn.Find<Burger>(1) != null)
            {
                deleteRestoBurger();
            }*/

            this.conn.Insert(new Burger { });
            this.conn.Insert(new Resto { });
            this.conn.Insert(new Reponses { });

        }

        public Resto getResto()
        {
            return this.conn.Get<Resto>(1);
        }

        public Burger getBurger()
        {
            return this.conn.Get<Burger>(1);
        }

        public Reponses getReponses()
        {
            return this.conn.Get<Reponses>(1);
        }

        public void updateRestoBurger(Resto resto, Burger burger)
        {
            this.conn.Update(resto);
            this.conn.Update(burger);
        }

        public void updateReponses(Reponses reponse)
        {
            this.conn.Update(reponse);
        }

        public void insertRestoBurger(Resto resto, Burger burger)
        {

            this.conn.Insert(resto);
            this.conn.Insert(burger);
        }

        public void insertReponses(Reponses reponses)
        {
            this.conn.Insert(reponses);
        }

    }
}
