using System;
using UIKit;

namespace _50ShadesOfBurgers
{
	public class AlertViewModel
	{
		public AlertViewModel()
		{
		}

		public static void alertViewNormal()
		{
			UIAlertView alertActive = new UIAlertView()
			{
				Title = "Hallo",
				Message = "Hallo"
			};
			alertActive.AddButton("OK");
			alertActive.Show();
		}
	}
}
