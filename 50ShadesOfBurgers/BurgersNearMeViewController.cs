using Foundation;
using System;
using UIKit;

namespace _50ShadesOfBurgers
{
    public partial class BurgersNearMeViewController : UIViewController
    {
        UIImage barIcon;
        public BurgersNearMeViewController (IntPtr handle) : base (handle)
        {
        }

        public override void ViewDidLoad()
        {
            base.ViewDidLoad();

            barIcon = UIImage.FromBundle("map@1x");
            barIcon = barIcon.ImageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal);
            this.TabBarItem.Image = barIcon;
            this.TabBarItem.Title = "Burgers Near Me";
        }
    }
}