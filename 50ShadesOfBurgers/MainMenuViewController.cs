using Foundation;
using System;
using UIKit;


namespace _50ShadesOfBurgers
{
    public partial class MainMenuViewController : UIViewController
    {
		UIImage btnGoldenImg, btnLocateImg, btnRateImg, btnTop10Img, btnAboutImg;

        public MainMenuViewController (IntPtr handle) : base (handle)
        {
        }


		public override void ViewWillAppear(bool animated)
		{
			base.ViewWillAppear(animated);

			//	Buttons.setupButtons(btnVote);
			//	Buttons.setupButtons(btnTop10);
			//	Buttons.setupButtons(btnAbout);

			btnRateImg = UIImage.FromFile("RateABurgerButton.png");
			btnRateImg = btnRateImg.ImageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal);

			btnTop10Img = UIImage.FromFile("BestBurgersButton.png");
			btnTop10Img = btnTop10Img.ImageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal);

			btnLocateImg = UIImage.FromFile("LocateABurgerButton.png");
			btnLocateImg = btnLocateImg.ImageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal);

			btnGoldenImg = UIImage.FromFile("GoldenBurgerButton.png");
			btnGoldenImg = btnGoldenImg.ImageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal);

			btnAboutImg = UIImage.FromFile("AboutThisAppButton.png");
			btnAboutImg = btnAboutImg.ImageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal);

			btnRate.SetImage(btnRateImg, UIControlState.Normal);
			btnTop10.SetImage(btnTop10Img, UIControlState.Normal);
			btnLocate.SetImage(btnLocateImg, UIControlState.Normal);
			btnGolden.SetImage(btnGoldenImg, UIControlState.Normal);
			btnAbout.SetImage(btnAboutImg, UIControlState.Normal);

		}
    }
}