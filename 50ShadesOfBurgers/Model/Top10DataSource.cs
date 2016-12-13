using System;
using System.Collections.Generic;
using System.Text;
using Foundation;
using UIKit;

namespace _50ShadesOfBurgers.Model
{
    public class Top10DataSource : UITableViewSource
    {
        Top10TableViewController controller;
        List<BurgerTableModel> Burgers;
        string CellIdentifier = "TableCell";
        public Top10DataSource(List<BurgerTableModel> burgers, Top10TableViewController controller)
        {
            Burgers = burgers;
            this.controller = controller;
        }

        // Returns the number of rows in each section of the table
        public override nint RowsInSection(UITableView tableView, nint section)
        {
            return Burgers.Count;
        }
        //
        // Returns a table cell for the row indicated by row property of the NSIndexPath
        // This method is called multiple times to populate each row of the table.
        // The method automatically uses cells that have scrolled off the screen or creates new ones as necessary.
        //
        public override UITableViewCell GetCell(UITableView tableView, NSIndexPath indexPath)
        {
            /*UITableViewCell cell = tableView.DequeueReusableCell(CellIdentifier);

            if(cell == null)
            {
                cell = new UITableViewCell(UITableViewCellStyle.Default, CellIdentifier);
            }
            
            cell.TextLabel.Text = (indexPath.Row + 1) + ".  " + Burgers[indexPath.Row].BurgerName + " by " + Burgers[indexPath.Row].RestoName;
            cell.TextLabel.LineBreakMode = UILineBreakMode.WordWrap;
            cell.TextLabel.Lines = 0;*/

            string burgerName = (indexPath.Row + 1) + ". " + Burgers[indexPath.Row].BurgerName;
            string restoName = "by " + Burgers[indexPath.Row].RestoName;
            string imageGrade = "";
            if (Burgers[indexPath.Row].CurrentScore >= 90) imageGrade = "grade5.jpg";
            else if (Burgers[indexPath.Row].CurrentScore >= 80) imageGrade = "grade45.jpg";
            else if (Burgers[indexPath.Row].CurrentScore >= 70) imageGrade = "grade4.jpg";
            else if (Burgers[indexPath.Row].CurrentScore >= 60) imageGrade = "grade35.jpg";
            else if (Burgers[indexPath.Row].CurrentScore >= 50) imageGrade = "grade3.jpg";
            else if (Burgers[indexPath.Row].CurrentScore >= 40) imageGrade = "grade25.jpg";
            else if (Burgers[indexPath.Row].CurrentScore >= 30) imageGrade = "grade2.jpg";
            else if (Burgers[indexPath.Row].CurrentScore >= 20) imageGrade = "grade15.jpg";
            else if (Burgers[indexPath.Row].CurrentScore >= 10) imageGrade = "grade1.jpg";
            else imageGrade = "grade05.jpg";



            var cell = tableView.DequeueReusableCell(CellIdentifier) as CustomTop10Cell;
            if (cell == null) cell = new CustomTop10Cell(CellIdentifier);
            cell.UpdateCell(burgerName, restoName, UIImage.FromFile("images/" + imageGrade));



            return cell;
        }

        public override void RowSelected(UITableView tableView, NSIndexPath indexPath)
        {
            controller.restoId = Burgers[indexPath.Row].RestoId;
            controller.PerformSegue("goToRestoDetail", this);

            

        }

    }
}
