using System;
using UIKit;

namespace _50ShadesOfBurgers
{
	public class AlertViewModel
	{
		public AlertViewModel()
		{
		}

		public static void alertViewNormal(String title, String message)
		{
			UIAlertView alertActive = new UIAlertView()
			{
				Title = title,
				Message = message
			};
			alertActive.AddButton("OK");
			alertActive.Show();
		}
	}
}
