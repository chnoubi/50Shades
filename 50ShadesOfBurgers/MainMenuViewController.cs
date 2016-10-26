using Foundation;
using System;
using UIKit;


namespace _50ShadesOfBurgers
{
    public partial class MainMenuViewController : UIViewController
    {
		UIImage btnGoldenImg, btnLocateImg;

        public MainMenuViewController (IntPtr handle) : base (handle)
        {
        }


		public override void ViewWillAppear(bool animated)
		{
			base.ViewWillAppear(animated);

			Buttons.setupButtons(btnVote);
			Buttons.setupButtons(btnTop10);
			Buttons.setupButtons(btnAbout);

			btnGoldenImg = UIImage.FromFile("RateABurgerButton.png");
			btnGoldenImg = btnGoldenImg.ImageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal);

			/*btnLocateImg = UIImage.FromFile("RateABurgerButton72.png");
			btnLocateImg = btnLocateImg.ImageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal);*/

			btnGolden.SetImage(btnGoldenImg, UIControlState.Normal);

			//btnLocate.SetImage(btnLocateImg, UIControlState.Normal);

		}
    }
}