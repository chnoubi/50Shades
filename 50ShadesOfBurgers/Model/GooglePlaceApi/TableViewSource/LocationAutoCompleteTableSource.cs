using System;
using UIKit;
using System.Collections.Generic;

namespace _50ShadesOfBurgers
{
	public class LocationAutoCompleteTableSource : UITableViewSource
	{
		const string strCellIdentifier="Cell";
		readonly List<Prediction> lstLocations; 
		internal event Action<Prediction> LocationRowSelectedEventAction; 
 
		public LocationAutoCompleteTableSource(List<Prediction> arrItems)
		{ 
			lstLocations=arrItems; 
		}

		public override nint RowsInSection (UITableView tableview, nint section)
		{
			return lstLocations.Count;

		}

		public override UIView GetViewForFooter (UITableView tableView, nint section)
		{
			return new UIView();
		}

		public override UITableViewCell GetCell (UITableView tableView, Foundation.NSIndexPath indexPath)
		{
			UITableViewCell cell = tableView.DequeueReusableCell ( strCellIdentifier ) ?? new UITableViewCell ( UITableViewCellStyle.Default , strCellIdentifier );
			cell.TextLabel.Text = lstLocations [indexPath.Row].description;
			cell.TextLabel.Font = UIFont.SystemFontOfSize (12);
			cell.TextLabel.TextColor = UIColor.White;
			cell.BackgroundColor = UIColor.Clear;
			return cell;
		}
		public override void RowSelected (UITableView tableView, Foundation.NSIndexPath indexPath)
		{
			if ( LocationRowSelectedEventAction != null )
			{
				LocationRowSelectedEventAction ( lstLocations[indexPath.Row] );
			}
			tableView.DeselectRow ( indexPath , true );
		}
	}
}

