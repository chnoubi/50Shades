using Foundation;
using System;
using UIKit;

namespace _50ShadesOfBurgers
{
    public partial class AboutViewController : UIViewController
    {
		//	UIImage navBarBgrImg;

		UIBarButtonItem menu;

		public AboutViewController (IntPtr handle) : base (handle)
        {
        }

		public override void ViewDidLoad()
		{
			base.ViewDidLoad();


		}

		public override void ViewWillAppear(bool animated)
		{
			base.ViewWillAppear(animated);

			menu = new UIBarButtonItem("Menu", UIBarButtonItemStyle.Plain, (sender, args) =>
			{
				this.PerformSegue("goToMenu", this);
			});

			menu.SetTitleTextAttributes(new UITextAttributes()
			{
				Font = UIFont.FromName("CoalhandLuke TRIAL.ttf", 19),
				TextColor = UIColor.White
			}, UIControlState.Normal);

			UIStringAttributes titleAttr = new UIStringAttributes();
			titleAttr.Font = UIFont.FromName("CoalhandLuke TRIAL.ttf", 19);
			titleAttr.ForegroundColor = UIColor.White;

			this.NavigationController.NavigationBar.TitleTextAttributes = titleAttr;


			this.NavigationItem.SetLeftBarButtonItem(menu, true);

			//navBarBgrImg = UIImage.FromFile("navBarBgrImg.png");
			//navBarBgrImg = navBarBgrImg.ImageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal);

			this.NavigationController.NavigationBar.SetBackgroundImage(new UIImage(), UIBarMetrics.Default); 
			this.NavigationController.NavigationBar.Translucent = true;
			this.NavigationController.NavigationBar.ShadowImage = new UIImage();
			this.NavigationController.View.BackgroundColor = UIColor.Clear;
			this.NavigationController.NavigationBar.BackgroundColor = UIColor.Clear;
		}
    }
}