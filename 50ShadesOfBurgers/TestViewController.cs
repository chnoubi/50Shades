using Foundation;
using System;
using UIKit;

namespace _50ShadesOfBurgers
{
    public partial class TestViewController : UIViewController
    {
        public TestViewController (IntPtr handle) : base (handle)
        {
        }

		public override void ViewWillAppear(bool animated)
		{
			base.ViewWillAppear(animated);

			this.NavigationItem.SetLeftBarButtonItem(new UIBarButtonItem("Menu", UIBarButtonItemStyle.Plain, (sender, args) =>
			{
				this.PerformSegue("goToMenu", this);
			}), true);
		}
    }
}